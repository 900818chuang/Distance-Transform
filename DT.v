module DT(
	input 					clk, 
	input					reset,
	output	reg				done ,
	output	reg				sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input			[15:0]	sti_di,
	output	reg				res_wr ,
	output	reg				res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input			[7:0]	res_di
	);

reg [2:0] find_min_ctr;							//counter for finding min
reg [3:0] bit_ptr;								//bit pointer of ROM data
reg [3:0] STATE_NOW;
reg [3:0] STATE_NEXT;
reg [7:0] data_min;

wire read_ready;
wire write_ready;

//12 states
parameter INIT = 4'd0;
parameter ROM_READ = 4'd1;
parameter RAM_WRITE = 4'd2;
parameter WRITE_END = 4'd3;
parameter READ_F = 4'd4;
parameter MIN_F = 4'd5;
parameter WRITE_F = 4'd6;
parameter FOWARD_END = 4'd7;
parameter READ_B = 4'd8;
parameter MIN_B = 4'd9;
parameter WRITE_B = 4'd10;
parameter COMPLETE = 4'd11;


always@(posedge clk or negedge reset)
begin
	if(!reset) STATE_NOW <= INIT;
	else STATE_NOW <= STATE_NEXT;
end

always@(*)
begin
	case(STATE_NOW)
	INIT:
	begin
		STATE_NEXT = ROM_READ;
	end
	ROM_READ: 
	begin
		STATE_NEXT = RAM_WRITE;
	end
	RAM_WRITE:
	begin
		if(bit_ptr == 4'd15)
		begin
			if(res_addr == 14'd16383) STATE_NEXT = WRITE_END;
			else STATE_NEXT = ROM_READ;
		end
		else STATE_NEXT = RAM_WRITE;
	end
	WRITE_END: 
	begin
		STATE_NEXT = READ_F;
	end
	READ_F:
	begin
		if(res_di) STATE_NEXT = MIN_F;
		else
		begin
			if(res_addr == 14'd16254) STATE_NEXT = FOWARD_END;
			else STATE_NEXT = READ_F;
		end 
	end
	MIN_F:
	begin
		if(find_min_ctr == 4'd5) STATE_NEXT = WRITE_F;
		else STATE_NEXT = MIN_F;
	end
	WRITE_F:
	begin
		if(res_addr == 14'd16254) STATE_NEXT = FOWARD_END;
		else STATE_NEXT = READ_F;
	end
	FOWARD_END:
	begin
		STATE_NEXT = READ_B;
	end
	READ_B:
	begin
		if(res_di) STATE_NEXT = MIN_B;
		else
		begin
			if(res_addr == 14'd128) STATE_NEXT = COMPLETE;
			else STATE_NEXT = READ_B;
		end
	end
	MIN_B:
	begin
		if(find_min_ctr == 4'd5) STATE_NEXT = WRITE_B;
		else STATE_NEXT = MIN_B;
	end
	WRITE_B:
	begin
		if(res_addr == 14'd129) STATE_NEXT = COMPLETE;
		else STATE_NEXT = READ_B;
	end
	COMPLETE:
	begin
		STATE_NEXT = COMPLETE;
	end
	default: STATE_NEXT = INIT;
	endcase
end

//sti_rd
always@(posedge clk or negedge reset)
begin
	if(!reset) sti_rd <= 1'd0;
	else if(STATE_NEXT == ROM_READ) sti_rd <= 1'd1;
	else sti_rd <= 1'd0;
end

assign read_ready = (STATE_NEXT == READ_F || STATE_NEXT == MIN_F ||
					STATE_NEXT == READ_B || STATE_NEXT == MIN_B);
assign write_ready = (STATE_NEXT == RAM_WRITE || STATE_NEXT == WRITE_F ||
					STATE_NEXT == WRITE_B);

//res_rd
always@(posedge clk or negedge reset)
begin
	if(!reset) res_rd <= 1'd0;
	else res_rd <= (read_ready);
end

//res_wr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_wr <= 1'd0;
	else res_wr <= (write_ready);
end

//sti_addr
always@(posedge clk or negedge reset)
begin
	if(!reset) sti_addr <= 10'd0;
	else if(STATE_NOW == ROM_READ) sti_addr <= sti_addr + 1'd1;
end

//bit_ptr
always@(posedge clk or negedge reset)
begin
	if(!reset) bit_ptr <= 4'd0;
	else if(STATE_NEXT == ROM_READ) bit_ptr <= 4'd15;
	else if(STATE_NOW == RAM_WRITE || STATE_NEXT == RAM_WRITE)
		bit_ptr <= bit_ptr - 4'd1;

end

//find_min_ctr
always@(posedge clk or negedge reset)
begin
	if(!reset) find_min_ctr <= 3'd0;
	else if(STATE_NEXT == MIN_F || STATE_NEXT == MIN_B)
		find_min_ctr <= find_min_ctr + 4'd1;
	else if(STATE_NEXT == WRITE_F || STATE_NEXT == WRITE_B)
		find_min_ctr <= 4'd0;
end

//res_addr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_addr <= 14'd16383;
	else if(STATE_NEXT == RAM_WRITE) res_addr <= res_addr + 14'd1;
	else if(STATE_NOW == WRITE_END) res_addr <= 14'd128;
	else if(STATE_NOW == FOWARD_END) res_addr <= 14'd16255;
	else if(STATE_NEXT == MIN_F || STATE_NOW == MIN_F)
	begin
		case(find_min_ctr)
		4'd0: res_addr <= res_addr - 14'd129;
		4'd1: res_addr <= res_addr + 14'd1;
		4'd2: res_addr <= res_addr + 14'd1;
		4'd3: res_addr <= res_addr + 14'd126;
		4'd4: res_addr <= res_addr + 14'd1;
		endcase
	end
	else if(STATE_NEXT == MIN_B || STATE_NOW == MIN_B)
	begin
		case(find_min_ctr)
		4'd0: res_addr <= res_addr + 14'd129;
		4'd1: res_addr <= res_addr - 14'd1;
		4'd2: res_addr <= res_addr - 14'd1;
		4'd3: res_addr <= res_addr - 14'd126;
		4'd4: res_addr <= res_addr - 14'd1;
		endcase
	end
	else if(STATE_NOW == READ_F || STATE_NOW == WRITE_F)
		res_addr <= res_addr + 14'd1;
	else if(STATE_NOW == READ_B || STATE_NOW == WRITE_B) 
		res_addr <= res_addr - 14'd1;
end

//done
always@(posedge clk or negedge reset)
begin
	if(!reset) done <= 1'd0;
	else if(STATE_NOW == COMPLETE) done <= 1'd1;
end

//data_min
always@(posedge clk or negedge reset)
begin
	if(!reset) data_min <= 8'd0;
	else if(STATE_NOW == MIN_F)
	begin
		if(find_min_ctr == 4'd1)  data_min <= res_di;
		else if(res_di < data_min) data_min <= res_di; 
	end
	else if(STATE_NOW == READ_B) data_min <= res_di;
	else if(STATE_NOW == MIN_B)
	begin
		if(res_di < (data_min - 1'd1)) data_min <= (res_di + 1'd1);
	end
end

//res_do
always@(posedge clk or negedge reset)
begin
	if(!reset) res_do <= 8'd0;
	else if(STATE_NEXT == RAM_WRITE) res_do <= sti_di[bit_ptr];
	else if(STATE_NEXT == WRITE_F) res_do <= data_min + 8'd1;
	else if(STATE_NEXT == WRITE_B) res_do <= data_min;
end

endmodule