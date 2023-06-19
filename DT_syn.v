/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Thu Nov  4 03:26:55 2021
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module DT_DW01_dec_1 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[11]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[10]), .Y(n4) );
  AO21X1 U5 ( .A0(n5), .A1(A[9]), .B0(n6), .Y(SUM[9]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[8]), .B0(n5), .Y(SUM[8]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[7]), .B0(n7), .Y(SUM[7]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[6]), .B0(n8), .Y(SUM[6]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[5]), .B0(n9), .Y(SUM[5]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[4]), .B0(n10), .Y(SUM[4]) );
  OAI2BB1X1 U11 ( .A0N(n12), .A1N(A[3]), .B0(n11), .Y(SUM[3]) );
  OAI2BB1X1 U12 ( .A0N(n13), .A1N(A[2]), .B0(n12), .Y(SUM[2]) );
  OAI2BB1X1 U13 ( .A0N(A[0]), .A1N(A[1]), .B0(n13), .Y(SUM[1]) );
  XOR2X1 U14 ( .A(A[13]), .B(n14), .Y(SUM[13]) );
  NOR2X1 U15 ( .A(A[12]), .B(n15), .Y(n14) );
  XNOR2X1 U16 ( .A(A[12]), .B(n15), .Y(SUM[12]) );
  OAI21XL U17 ( .A0(n1), .A1(n3), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U18 ( .A(n1), .B(n3), .Y(n15) );
  OAI21XL U19 ( .A0(n6), .A1(n4), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U20 ( .A(n6), .B(n4), .Y(n16) );
  NOR2X1 U21 ( .A(n5), .B(A[9]), .Y(n6) );
  OR2X1 U22 ( .A(n7), .B(A[8]), .Y(n5) );
  OR2X1 U23 ( .A(n8), .B(A[7]), .Y(n7) );
  OR2X1 U24 ( .A(n9), .B(A[6]), .Y(n8) );
  OR2X1 U25 ( .A(n10), .B(A[5]), .Y(n9) );
  OR2X1 U26 ( .A(n11), .B(A[4]), .Y(n10) );
  OR2X1 U27 ( .A(n12), .B(A[3]), .Y(n11) );
  OR2X1 U28 ( .A(n13), .B(A[2]), .Y(n12) );
  NAND2BX1 U29 ( .AN(A[1]), .B(SUM[0]), .Y(n13) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   N37, N38, N39, N40, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, read_ready, write_ready, N105, N106,
         N107, N108, N109, N110, N111, N112, N113, N114, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164,
         N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192,
         N193, N194, N223, N225, N226, N227, N228, N229, N230, N231, N232,
         N233, N234, N235, N236, N287, N288, N289, N290, N291, N292, N293,
         N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304,
         N305, N306, N307, N308, N309, N310, N311, N312, N313, N330, N331,
         N332, N333, N334, N335, N336, N337, N338, N339, N340, N341, N444,
         N445, N446, N447, N448, N450, N452, N453, N454, N455, N456, N457,
         N458, N459, N471, N472, N473, N474, N475, N476, N477, N478, N479,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n285, n286, \add_193/carry[2] , \add_193/carry[3] ,
         \add_193/carry[4] , \add_193/carry[5] , \add_193/carry[6] ,
         \add_193/carry[7] , \add_193/carry[8] , \add_193/carry[9] ,
         \add_193/carry[10] , \add_193/carry[11] , \add_193/carry[12] ,
         \add_193/carry[13] , \sub_183/carry[2] , \sub_183/carry[3] ,
         \sub_183/carry[4] , \sub_183/carry[5] , \sub_183/carry[6] ,
         \sub_183/carry[7] , \sub_183/carry[8] , \sub_183/carry[9] ,
         \sub_183/carry[10] , \sub_183/carry[11] , \sub_183/carry[12] ,
         \sub_183/carry[13] , n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559;
  wire   [3:0] STATE_NEXT;
  wire   [7:0] data_min;
  wire   [14:0] \sub_196/carry ;
  wire   [13:1] \add_186/carry ;

  DT_DW01_inc_0 add_234_S2 ( .A(data_min), .SUM({N479, N478, N477, N476, N475, 
        N474, N473, N472}) );
  DT_DW01_inc_1 add_225_S2 ( .A(res_di), .SUM({N459, N458, N457, N456, N455, 
        N454, N453, N452}) );
  DT_DW01_inc_2 add_150_S2 ( .A(sti_addr), .SUM({N114, N113, N112, N111, N110, 
        N109, N108, N107, N106, N105}) );
  DT_DW01_dec_1 r424 ( .A(res_addr), .SUM({N313, N312, N311, N310, N309, N308, 
        N307, N306, N305, N304, N303, N302, N301, N300}) );
  DT_DW01_inc_3 r420 ( .A(res_addr), .SUM({N164, N163, N162, N161, N160, N159, 
        N158, N157, N156, N155, N154, N153, N152, N151}) );
  DFFRX2 done_reg ( .D(n252), .CK(clk), .RN(n334), .Q(done), .QN(n207) );
  DFFRX2 \res_do_reg[7]  ( .D(n243), .CK(clk), .RN(n333), .Q(res_do[7]), .QN(
        n229) );
  DFFRX2 \res_do_reg[6]  ( .D(n242), .CK(clk), .RN(n333), .Q(res_do[6]), .QN(
        n230) );
  DFFRX2 \res_do_reg[5]  ( .D(n241), .CK(clk), .RN(n333), .Q(res_do[5]), .QN(
        n231) );
  DFFRX2 \res_do_reg[4]  ( .D(n240), .CK(clk), .RN(n333), .Q(res_do[4]), .QN(
        n232) );
  DFFRX2 \res_do_reg[3]  ( .D(n239), .CK(clk), .RN(n333), .Q(res_do[3]), .QN(
        n233) );
  DFFRX2 \res_do_reg[2]  ( .D(n238), .CK(clk), .RN(n333), .Q(res_do[2]), .QN(
        n234) );
  DFFRX2 \res_do_reg[1]  ( .D(n237), .CK(clk), .RN(n333), .Q(res_do[1]), .QN(
        n235) );
  DFFRX2 \res_do_reg[0]  ( .D(n236), .CK(clk), .RN(n333), .Q(res_do[0]), .QN(
        n551) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n272), .CK(clk), .RN(n335), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n275), .CK(clk), .RN(n335), .Q(sti_addr[6]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n274), .CK(clk), .RN(n335), .Q(sti_addr[7]) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n273), .CK(clk), .RN(n335), .Q(sti_addr[8]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n280), .CK(clk), .RN(n335), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n279), .CK(clk), .RN(n335), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n278), .CK(clk), .RN(n335), .Q(sti_addr[3]) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n277), .CK(clk), .RN(n335), .Q(sti_addr[4]) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n276), .CK(clk), .RN(n335), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n281), .CK(clk), .RN(reset), .Q(sti_addr[0])
         );
  DFFRX1 \data_min_reg[7]  ( .D(n244), .CK(clk), .RN(n333), .Q(data_min[7]), 
        .QN(n199) );
  DFFRX1 \find_min_ctr_reg[2]  ( .D(n265), .CK(clk), .RN(n334), .Q(n553), .QN(
        n296) );
  DFFSX1 \res_addr_reg[13]  ( .D(n282), .CK(clk), .SN(reset), .Q(n560) );
  DFFSX1 \res_addr_reg[12]  ( .D(n263), .CK(clk), .SN(reset), .Q(n561) );
  DFFSX1 \res_addr_reg[11]  ( .D(n262), .CK(clk), .SN(reset), .Q(n562) );
  DFFSX1 \res_addr_reg[10]  ( .D(n261), .CK(clk), .SN(reset), .Q(n563) );
  DFFSX1 \res_addr_reg[9]  ( .D(n260), .CK(clk), .SN(n333), .Q(n564) );
  DFFSX1 \res_addr_reg[8]  ( .D(n259), .CK(clk), .SN(n334), .Q(n565) );
  DFFSX1 \res_addr_reg[6]  ( .D(n254), .CK(clk), .SN(reset), .Q(n567) );
  DFFSX1 \res_addr_reg[7]  ( .D(n253), .CK(clk), .SN(reset), .Q(n566) );
  DFFRX1 \bit_ptr_reg[2]  ( .D(n269), .CK(clk), .RN(n334), .Q(N39), .QN(n208)
         );
  DFFRX1 \bit_ptr_reg[0]  ( .D(n271), .CK(clk), .RN(n335), .Q(N37), .QN(n211)
         );
  DFFRX1 \find_min_ctr_reg[0]  ( .D(n267), .CK(clk), .RN(n334), .Q(n552), .QN(
        n295) );
  DFFRX1 \bit_ptr_reg[1]  ( .D(n268), .CK(clk), .RN(n334), .Q(N38), .QN(n209)
         );
  DFFRX2 \find_min_ctr_reg[1]  ( .D(n266), .CK(clk), .RN(n334), .Q(n554) );
  DFFSX1 \res_addr_reg[3]  ( .D(n257), .CK(clk), .SN(reset), .Q(n570) );
  DFFSX1 \res_addr_reg[4]  ( .D(n256), .CK(clk), .SN(reset), .Q(n569) );
  DFFSX1 \res_addr_reg[5]  ( .D(n255), .CK(clk), .SN(reset), .Q(n568) );
  DFFRX1 \STATE_NOW_reg[1]  ( .D(n285), .CK(clk), .RN(reset), .Q(n555), .QN(
        n292) );
  DFFRX1 \STATE_NOW_reg[0]  ( .D(STATE_NEXT[0]), .CK(clk), .RN(reset), .Q(n557) );
  DFFRX1 \data_min_reg[5]  ( .D(n246), .CK(clk), .RN(n333), .Q(data_min[5]), 
        .QN(n201) );
  DFFRX1 \data_min_reg[4]  ( .D(n247), .CK(clk), .RN(n333), .Q(data_min[4]), 
        .QN(n202) );
  DFFRX1 \STATE_NOW_reg[3]  ( .D(STATE_NEXT[3]), .CK(clk), .RN(reset), .Q(n558), .QN(n287) );
  DFFRX1 \STATE_NOW_reg[2]  ( .D(n286), .CK(clk), .RN(reset), .Q(n556), .QN(
        n293) );
  DFFSX1 \res_addr_reg[0]  ( .D(n283), .CK(clk), .SN(reset), .Q(N223), .QN(
        n290) );
  DFFSX1 \res_addr_reg[1]  ( .D(n264), .CK(clk), .SN(reset), .Q(n572), .QN(
        n289) );
  DFFSX1 \res_addr_reg[2]  ( .D(n258), .CK(clk), .SN(reset), .Q(n571) );
  DFFRX1 \data_min_reg[2]  ( .D(n249), .CK(clk), .RN(n334), .Q(data_min[2]), 
        .QN(n204) );
  DFFRX1 \data_min_reg[3]  ( .D(n248), .CK(clk), .RN(n334), .Q(data_min[3]), 
        .QN(n203) );
  DFFRX1 \data_min_reg[1]  ( .D(n250), .CK(clk), .RN(n334), .Q(data_min[1]), 
        .QN(n205) );
  DFFRX1 \data_min_reg[0]  ( .D(n251), .CK(clk), .RN(n334), .Q(data_min[0]), 
        .QN(n206) );
  DFFRX2 sti_rd_reg ( .D(n559), .CK(clk), .RN(n335), .Q(sti_rd) );
  DFFRX2 res_wr_reg ( .D(n317), .CK(clk), .RN(n334), .Q(res_wr) );
  DFFRX2 res_rd_reg ( .D(read_ready), .CK(clk), .RN(n334), .Q(res_rd) );
  DFFRX1 \bit_ptr_reg[3]  ( .D(n270), .CK(clk), .RN(n335), .Q(N40), .QN(n210)
         );
  DFFRX1 \data_min_reg[6]  ( .D(n245), .CK(clk), .RN(n333), .Q(data_min[6]), 
        .QN(n200) );
  XNOR2XL U248 ( .A(n208), .B(n379), .Y(n380) );
  INVX1 U249 ( .A(res_di[4]), .Y(n480) );
  NAND4X4 U250 ( .A(n530), .B(n453), .C(n531), .D(n532), .Y(STATE_NEXT[0]) );
  AOI2BB1X2 U251 ( .A0N(n447), .A1N(n533), .B0(n524), .Y(n532) );
  NAND2XL U252 ( .A(read_ready), .B(STATE_NEXT[0]), .Y(n387) );
  XNOR2XL U253 ( .A(n285), .B(STATE_NEXT[0]), .Y(n309) );
  NOR2BX4 U254 ( .AN(n285), .B(STATE_NEXT[0]), .Y(write_ready) );
  AO21X1 U255 ( .A0(n199), .A1(res_di[7]), .B0(n495), .Y(n494) );
  OAI21XL U256 ( .A0(n443), .A1(n442), .B0(n296), .Y(n444) );
  CLKAND2X3 U257 ( .A(n383), .B(n286), .Y(n442) );
  NOR2X1 U258 ( .A(n299), .B(n300), .Y(n455) );
  NAND4X1 U259 ( .A(n438), .B(n439), .C(n440), .D(n441), .Y(n253) );
  NAND2X2 U260 ( .A(n292), .B(n542), .Y(n533) );
  MXI2X1 U261 ( .A(n367), .B(n541), .S0(n292), .Y(n539) );
  NAND3BX1 U262 ( .AN(n542), .B(n452), .C(n367), .Y(n541) );
  CLKBUFX3 U263 ( .A(N223), .Y(res_addr[0]) );
  MXI2X4 U264 ( .A(n449), .B(n448), .S0(n443), .Y(n288) );
  XOR2X1 U265 ( .A(data_min[6]), .B(n340), .Y(n291) );
  OR3X2 U266 ( .A(res_addr[2]), .B(n537), .C(n538), .Y(n294) );
  NOR2BX1 U267 ( .AN(n208), .B(n379), .Y(n378) );
  NAND2X2 U268 ( .A(n209), .B(n381), .Y(n379) );
  NAND2X2 U269 ( .A(n317), .B(STATE_NEXT[3]), .Y(n506) );
  CLKBUFX8 U270 ( .A(write_ready), .Y(n317) );
  AND2X2 U271 ( .A(n317), .B(n286), .Y(n508) );
  AOI22XL U272 ( .A0(N453), .A1(n456), .B0(n457), .B1(res_di[1]), .Y(n458) );
  AOI22XL U273 ( .A0(N454), .A1(n456), .B0(n457), .B1(res_di[2]), .Y(n459) );
  AOI22XL U274 ( .A0(N455), .A1(n456), .B0(n457), .B1(res_di[3]), .Y(n460) );
  AOI22XL U275 ( .A0(N456), .A1(n456), .B0(n457), .B1(res_di[4]), .Y(n461) );
  AOI22XL U276 ( .A0(N458), .A1(n456), .B0(n457), .B1(res_di[6]), .Y(n463) );
  OR2X2 U277 ( .A(n501), .B(n200), .Y(n297) );
  NAND2X1 U278 ( .A(n297), .B(res_di[6]), .Y(n500) );
  OR2XL U279 ( .A(n465), .B(n452), .Y(n298) );
  AND2X2 U280 ( .A(n298), .B(n454), .Y(n457) );
  INVX3 U281 ( .A(n557), .Y(n452) );
  AOI22XL U282 ( .A0(N457), .A1(n456), .B0(n457), .B1(res_di[5]), .Y(n462) );
  AND2X2 U283 ( .A(n466), .B(n454), .Y(n456) );
  NAND2X1 U284 ( .A(n304), .B(n385), .Y(n375) );
  OAI21X1 U285 ( .A0(n479), .A1(n291), .B0(res_di[6]), .Y(n478) );
  BUFX2 U286 ( .A(n478), .Y(n301) );
  AND2X2 U287 ( .A(N452), .B(n456), .Y(n299) );
  AND2X2 U288 ( .A(res_di[0]), .B(n457), .Y(n300) );
  NOR2X4 U289 ( .A(n294), .B(n536), .Y(n535) );
  CLKINVX1 U290 ( .A(n311), .Y(n302) );
  AND2X1 U291 ( .A(n446), .B(n385), .Y(n311) );
  NAND4BX2 U292 ( .AN(res_addr[10]), .B(n539), .C(n451), .D(n540), .Y(n536) );
  INVX3 U293 ( .A(n311), .Y(n368) );
  NOR2BX1 U294 ( .AN(n208), .B(n379), .Y(n303) );
  AOI2BB2XL U295 ( .B0(N472), .B1(n508), .A0N(n516), .A1N(n385), .Y(n515) );
  NAND2X8 U296 ( .A(n317), .B(n382), .Y(n385) );
  NAND2X1 U297 ( .A(n211), .B(n375), .Y(n376) );
  NAND2X1 U298 ( .A(n377), .B(n356), .Y(n270) );
  NAND2X1 U299 ( .A(n210), .B(n305), .Y(n306) );
  NAND2X1 U300 ( .A(N40), .B(n303), .Y(n307) );
  NAND2X1 U301 ( .A(n306), .B(n307), .Y(n377) );
  CLKINVX1 U302 ( .A(n378), .Y(n305) );
  OR2X1 U303 ( .A(n558), .B(n384), .Y(n304) );
  BUFX8 U304 ( .A(n308), .Y(n316) );
  NAND2X6 U305 ( .A(n549), .B(n550), .Y(n542) );
  NOR4X8 U306 ( .A(res_di[3]), .B(res_di[2]), .C(res_di[1]), .D(res_di[0]), 
        .Y(n549) );
  NOR4X8 U307 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n550) );
  INVX1 U308 ( .A(n366), .Y(n373) );
  INVX4 U309 ( .A(n366), .Y(n308) );
  CLKMX2X4 U310 ( .A(n534), .B(n535), .S0(res_addr[7]), .Y(n524) );
  NOR2XL U311 ( .A(n452), .B(n546), .Y(n466) );
  NAND2XL U312 ( .A(n452), .B(n293), .Y(n384) );
  NOR3XL U313 ( .A(n558), .B(n555), .C(n452), .Y(n525) );
  NOR2BX4 U314 ( .AN(STATE_NEXT[0]), .B(n285), .Y(n383) );
  NAND2XL U315 ( .A(n479), .B(n291), .Y(n477) );
  BUFX20 U316 ( .A(n365), .Y(n314) );
  BUFX20 U317 ( .A(n363), .Y(n312) );
  AOI32XL U318 ( .A0(n497), .A1(n480), .A2(data_min[4]), .B0(n481), .B1(
        data_min[5]), .Y(n501) );
  OAI211XL U319 ( .A0(n211), .A1(n375), .B0(n376), .C0(n356), .Y(n271) );
  OAI211XL U320 ( .A0(n209), .A1(n381), .B0(n379), .C0(n356), .Y(n268) );
  BUFX4 U321 ( .A(n572), .Y(res_addr[1]) );
  NAND4BBX4 U322 ( .AN(n288), .BN(n302), .C(n444), .D(n445), .Y(n366) );
  NOR2X1 U323 ( .A(n309), .B(n382), .Y(n386) );
  XNOR2X1 U324 ( .A(res_addr[13]), .B(n310), .Y(N236) );
  NAND2X1 U325 ( .A(\add_186/carry [12]), .B(res_addr[12]), .Y(n310) );
  AOI2BB2X1 U326 ( .B0(res_addr[0]), .B1(n314), .A0N(n366), .A1N(n367), .Y(
        n358) );
  CLKINVX1 U327 ( .A(n376), .Y(n381) );
  OR2X1 U328 ( .A(N448), .B(n481), .Y(n475) );
  CLKBUFX3 U329 ( .A(n364), .Y(n315) );
  AND3X2 U330 ( .A(n392), .B(n295), .C(n443), .Y(n364) );
  CLKBUFX3 U331 ( .A(n361), .Y(n313) );
  AND3X2 U332 ( .A(n442), .B(n295), .C(n392), .Y(n361) );
  AND2X2 U333 ( .A(n525), .B(n293), .Y(n374) );
  CLKBUFX3 U334 ( .A(n362), .Y(n318) );
  NOR2X1 U335 ( .A(n445), .B(n293), .Y(n362) );
  AND2X2 U336 ( .A(n467), .B(n292), .Y(n454) );
  AOI22X1 U337 ( .A0(N188), .A1(n313), .B0(N230), .B1(n312), .Y(n441) );
  BUFX4 U338 ( .A(n571), .Y(res_addr[2]) );
  BUFX4 U339 ( .A(n568), .Y(res_addr[5]) );
  BUFX4 U340 ( .A(n569), .Y(res_addr[4]) );
  BUFX4 U341 ( .A(n570), .Y(res_addr[3]) );
  BUFX4 U342 ( .A(n561), .Y(res_addr[12]) );
  BUFX4 U343 ( .A(n566), .Y(res_addr[7]) );
  BUFX4 U344 ( .A(n564), .Y(res_addr[9]) );
  BUFX4 U345 ( .A(n565), .Y(res_addr[8]) );
  BUFX4 U346 ( .A(n567), .Y(res_addr[6]) );
  BUFX4 U347 ( .A(n562), .Y(res_addr[11]) );
  BUFX4 U348 ( .A(n563), .Y(res_addr[10]) );
  CLKBUFX3 U349 ( .A(n560), .Y(res_addr[13]) );
  CLKBUFX3 U350 ( .A(reset), .Y(n333) );
  CLKBUFX3 U351 ( .A(reset), .Y(n334) );
  CLKBUFX3 U352 ( .A(reset), .Y(n335) );
  AOI32X1 U353 ( .A0(N447), .A1(n480), .A2(n475), .B0(n481), .B1(N448), .Y(
        n479) );
  AND2X2 U354 ( .A(n383), .B(STATE_NEXT[3]), .Y(n443) );
  OAI211X4 U355 ( .A0(n518), .A1(n519), .B0(n520), .C0(n521), .Y(n285) );
  INVX1 U356 ( .A(res_di[5]), .Y(n481) );
  AND4X4 U357 ( .A(n554), .B(n442), .C(n552), .D(n366), .Y(n363) );
  AND4X4 U358 ( .A(n443), .B(n554), .C(n552), .D(n366), .Y(n365) );
  XNOR2X1 U359 ( .A(res_addr[13]), .B(\sub_183/carry[13] ), .Y(N194) );
  OR2X1 U360 ( .A(res_addr[12]), .B(\sub_183/carry[12] ), .Y(
        \sub_183/carry[13] ) );
  XNOR2X1 U361 ( .A(\sub_183/carry[12] ), .B(res_addr[12]), .Y(N193) );
  OR2X1 U362 ( .A(res_addr[11]), .B(\sub_183/carry[11] ), .Y(
        \sub_183/carry[12] ) );
  XNOR2X1 U363 ( .A(\sub_183/carry[11] ), .B(res_addr[11]), .Y(N192) );
  OR2X1 U364 ( .A(res_addr[10]), .B(\sub_183/carry[10] ), .Y(
        \sub_183/carry[11] ) );
  XNOR2X1 U365 ( .A(\sub_183/carry[10] ), .B(res_addr[10]), .Y(N191) );
  OR2X1 U366 ( .A(res_addr[9]), .B(\sub_183/carry[9] ), .Y(\sub_183/carry[10] ) );
  XNOR2X1 U367 ( .A(\sub_183/carry[9] ), .B(res_addr[9]), .Y(N190) );
  OR2X1 U368 ( .A(res_addr[8]), .B(\sub_183/carry[8] ), .Y(\sub_183/carry[9] )
         );
  XNOR2X1 U369 ( .A(\sub_183/carry[8] ), .B(res_addr[8]), .Y(N189) );
  AND2X1 U370 ( .A(\sub_183/carry[7] ), .B(res_addr[7]), .Y(\sub_183/carry[8] ) );
  XOR2X1 U371 ( .A(res_addr[7]), .B(\sub_183/carry[7] ), .Y(N188) );
  OR2X1 U372 ( .A(res_addr[6]), .B(\sub_183/carry[6] ), .Y(\sub_183/carry[7] )
         );
  XNOR2X1 U373 ( .A(\sub_183/carry[6] ), .B(res_addr[6]), .Y(N187) );
  OR2X1 U374 ( .A(res_addr[5]), .B(\sub_183/carry[5] ), .Y(\sub_183/carry[6] )
         );
  XNOR2X1 U375 ( .A(\sub_183/carry[5] ), .B(res_addr[5]), .Y(N186) );
  OR2X1 U376 ( .A(res_addr[4]), .B(\sub_183/carry[4] ), .Y(\sub_183/carry[5] )
         );
  XNOR2X1 U377 ( .A(\sub_183/carry[4] ), .B(res_addr[4]), .Y(N185) );
  OR2X1 U378 ( .A(res_addr[3]), .B(\sub_183/carry[3] ), .Y(\sub_183/carry[4] )
         );
  XNOR2X1 U379 ( .A(\sub_183/carry[3] ), .B(res_addr[3]), .Y(N184) );
  OR2X1 U380 ( .A(res_addr[2]), .B(\sub_183/carry[2] ), .Y(\sub_183/carry[3] )
         );
  XNOR2X1 U381 ( .A(\sub_183/carry[2] ), .B(res_addr[2]), .Y(N183) );
  OR2X1 U382 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\sub_183/carry[2] ) );
  XNOR2X1 U383 ( .A(res_addr[0]), .B(res_addr[1]), .Y(N182) );
  XOR2X1 U384 ( .A(res_addr[13]), .B(\add_193/carry[13] ), .Y(N299) );
  AND2X1 U385 ( .A(\add_193/carry[12] ), .B(res_addr[12]), .Y(
        \add_193/carry[13] ) );
  XOR2X1 U386 ( .A(res_addr[12]), .B(\add_193/carry[12] ), .Y(N298) );
  AND2X1 U387 ( .A(\add_193/carry[11] ), .B(res_addr[11]), .Y(
        \add_193/carry[12] ) );
  XOR2X1 U388 ( .A(res_addr[11]), .B(\add_193/carry[11] ), .Y(N297) );
  AND2X1 U389 ( .A(\add_193/carry[10] ), .B(res_addr[10]), .Y(
        \add_193/carry[11] ) );
  XOR2X1 U390 ( .A(res_addr[10]), .B(\add_193/carry[10] ), .Y(N296) );
  AND2X1 U391 ( .A(\add_193/carry[9] ), .B(res_addr[9]), .Y(
        \add_193/carry[10] ) );
  XOR2X1 U392 ( .A(res_addr[9]), .B(\add_193/carry[9] ), .Y(N295) );
  AND2X1 U393 ( .A(\add_193/carry[8] ), .B(res_addr[8]), .Y(\add_193/carry[9] ) );
  XOR2X1 U394 ( .A(res_addr[8]), .B(\add_193/carry[8] ), .Y(N294) );
  OR2X1 U395 ( .A(res_addr[7]), .B(\add_193/carry[7] ), .Y(\add_193/carry[8] )
         );
  XNOR2X1 U396 ( .A(\add_193/carry[7] ), .B(res_addr[7]), .Y(N293) );
  AND2X1 U397 ( .A(\add_193/carry[6] ), .B(res_addr[6]), .Y(\add_193/carry[7] ) );
  XOR2X1 U398 ( .A(res_addr[6]), .B(\add_193/carry[6] ), .Y(N292) );
  AND2X1 U399 ( .A(\add_193/carry[5] ), .B(res_addr[5]), .Y(\add_193/carry[6] ) );
  XOR2X1 U400 ( .A(res_addr[5]), .B(\add_193/carry[5] ), .Y(N291) );
  AND2X1 U401 ( .A(\add_193/carry[4] ), .B(res_addr[4]), .Y(\add_193/carry[5] ) );
  XOR2X1 U402 ( .A(res_addr[4]), .B(\add_193/carry[4] ), .Y(N290) );
  AND2X1 U403 ( .A(\add_193/carry[3] ), .B(res_addr[3]), .Y(\add_193/carry[4] ) );
  XOR2X1 U404 ( .A(res_addr[3]), .B(\add_193/carry[3] ), .Y(N289) );
  AND2X1 U405 ( .A(\add_193/carry[2] ), .B(res_addr[2]), .Y(\add_193/carry[3] ) );
  XOR2X1 U406 ( .A(res_addr[2]), .B(\add_193/carry[2] ), .Y(N288) );
  AND2X1 U407 ( .A(res_addr[0]), .B(res_addr[1]), .Y(\add_193/carry[2] ) );
  XOR2X1 U408 ( .A(res_addr[1]), .B(res_addr[0]), .Y(N287) );
  XOR2X1 U409 ( .A(res_addr[12]), .B(\add_186/carry [12]), .Y(N235) );
  AND2X1 U410 ( .A(\add_186/carry [11]), .B(res_addr[11]), .Y(
        \add_186/carry [12]) );
  XOR2X1 U411 ( .A(res_addr[11]), .B(\add_186/carry [11]), .Y(N234) );
  AND2X1 U412 ( .A(\add_186/carry [10]), .B(res_addr[10]), .Y(
        \add_186/carry [11]) );
  XOR2X1 U413 ( .A(res_addr[10]), .B(\add_186/carry [10]), .Y(N233) );
  AND2X1 U414 ( .A(\add_186/carry [9]), .B(res_addr[9]), .Y(
        \add_186/carry [10]) );
  XOR2X1 U415 ( .A(res_addr[9]), .B(\add_186/carry [9]), .Y(N232) );
  AND2X1 U416 ( .A(\add_186/carry [8]), .B(res_addr[8]), .Y(\add_186/carry [9]) );
  XOR2X1 U417 ( .A(res_addr[8]), .B(\add_186/carry [8]), .Y(N231) );
  AND2X1 U418 ( .A(\add_186/carry [7]), .B(res_addr[7]), .Y(\add_186/carry [8]) );
  XOR2X1 U419 ( .A(res_addr[7]), .B(\add_186/carry [7]), .Y(N230) );
  OR2X1 U420 ( .A(res_addr[6]), .B(\add_186/carry [6]), .Y(\add_186/carry [7])
         );
  XNOR2X1 U421 ( .A(\add_186/carry [6]), .B(res_addr[6]), .Y(N229) );
  OR2X1 U422 ( .A(res_addr[5]), .B(\add_186/carry [5]), .Y(\add_186/carry [6])
         );
  XNOR2X1 U423 ( .A(\add_186/carry [5]), .B(res_addr[5]), .Y(N228) );
  OR2X1 U424 ( .A(res_addr[4]), .B(\add_186/carry [4]), .Y(\add_186/carry [5])
         );
  XNOR2X1 U425 ( .A(\add_186/carry [4]), .B(res_addr[4]), .Y(N227) );
  OR2X1 U426 ( .A(res_addr[3]), .B(\add_186/carry [3]), .Y(\add_186/carry [4])
         );
  XNOR2X1 U427 ( .A(\add_186/carry [3]), .B(res_addr[3]), .Y(N226) );
  OR2X1 U428 ( .A(res_addr[2]), .B(res_addr[1]), .Y(\add_186/carry [3]) );
  XNOR2X1 U429 ( .A(res_addr[1]), .B(res_addr[2]), .Y(N225) );
  XNOR2X1 U430 ( .A(res_addr[13]), .B(\sub_196/carry [13]), .Y(N341) );
  OR2X1 U431 ( .A(res_addr[12]), .B(\sub_196/carry [12]), .Y(
        \sub_196/carry [13]) );
  XNOR2X1 U432 ( .A(\sub_196/carry [12]), .B(res_addr[12]), .Y(N340) );
  OR2X1 U433 ( .A(res_addr[11]), .B(\sub_196/carry [11]), .Y(
        \sub_196/carry [12]) );
  XNOR2X1 U434 ( .A(\sub_196/carry [11]), .B(res_addr[11]), .Y(N339) );
  OR2X1 U435 ( .A(res_addr[10]), .B(\sub_196/carry [10]), .Y(
        \sub_196/carry [11]) );
  XNOR2X1 U436 ( .A(\sub_196/carry [10]), .B(res_addr[10]), .Y(N338) );
  OR2X1 U437 ( .A(res_addr[9]), .B(\sub_196/carry [9]), .Y(\sub_196/carry [10]) );
  XNOR2X1 U438 ( .A(\sub_196/carry [9]), .B(res_addr[9]), .Y(N337) );
  OR2X1 U439 ( .A(res_addr[8]), .B(\sub_196/carry [8]), .Y(\sub_196/carry [9])
         );
  XNOR2X1 U440 ( .A(\sub_196/carry [8]), .B(res_addr[8]), .Y(N336) );
  OR2X1 U441 ( .A(res_addr[7]), .B(\sub_196/carry [7]), .Y(\sub_196/carry [8])
         );
  XNOR2X1 U442 ( .A(\sub_196/carry [7]), .B(res_addr[7]), .Y(N335) );
  AND2X1 U443 ( .A(\sub_196/carry [6]), .B(res_addr[6]), .Y(\sub_196/carry [7]) );
  XOR2X1 U444 ( .A(res_addr[6]), .B(\sub_196/carry [6]), .Y(N334) );
  AND2X1 U445 ( .A(\sub_196/carry [5]), .B(res_addr[5]), .Y(\sub_196/carry [6]) );
  XOR2X1 U446 ( .A(res_addr[5]), .B(\sub_196/carry [5]), .Y(N333) );
  AND2X1 U447 ( .A(\sub_196/carry [4]), .B(res_addr[4]), .Y(\sub_196/carry [5]) );
  XOR2X1 U448 ( .A(res_addr[4]), .B(\sub_196/carry [4]), .Y(N332) );
  AND2X1 U449 ( .A(\sub_196/carry [3]), .B(res_addr[3]), .Y(\sub_196/carry [4]) );
  XOR2X1 U450 ( .A(res_addr[3]), .B(\sub_196/carry [3]), .Y(N331) );
  AND2X1 U451 ( .A(res_addr[1]), .B(res_addr[2]), .Y(\sub_196/carry [3]) );
  XOR2X1 U452 ( .A(res_addr[2]), .B(res_addr[1]), .Y(N330) );
  NAND2BX1 U453 ( .AN(data_min[1]), .B(n206), .Y(n336) );
  OAI2BB1X1 U454 ( .A0N(data_min[0]), .A1N(data_min[1]), .B0(n336), .Y(N444)
         );
  OR2X1 U455 ( .A(n336), .B(data_min[2]), .Y(n337) );
  OAI2BB1X1 U456 ( .A0N(n336), .A1N(data_min[2]), .B0(n337), .Y(N445) );
  OR2X1 U457 ( .A(n337), .B(data_min[3]), .Y(n338) );
  OAI2BB1X1 U458 ( .A0N(n337), .A1N(data_min[3]), .B0(n338), .Y(N446) );
  NOR2X1 U459 ( .A(n338), .B(data_min[4]), .Y(n339) );
  AO21X1 U460 ( .A0(n338), .A1(data_min[4]), .B0(n339), .Y(N447) );
  NAND2X1 U461 ( .A(n339), .B(n201), .Y(n340) );
  OAI21XL U462 ( .A0(n339), .A1(n201), .B0(n340), .Y(N448) );
  NOR2X1 U463 ( .A(data_min[6]), .B(n340), .Y(n341) );
  XOR2X1 U464 ( .A(data_min[7]), .B(n341), .Y(N450) );
  NOR2X1 U465 ( .A(n209), .B(N37), .Y(n351) );
  NOR2X1 U466 ( .A(n209), .B(n211), .Y(n350) );
  NOR2X1 U467 ( .A(n211), .B(N38), .Y(n348) );
  NOR2X1 U468 ( .A(N37), .B(N38), .Y(n347) );
  AO22X1 U469 ( .A0(sti_di[5]), .A1(n348), .B0(sti_di[4]), .B1(n347), .Y(n342)
         );
  AOI221XL U470 ( .A0(sti_di[6]), .A1(n351), .B0(sti_di[7]), .B1(n350), .C0(
        n342), .Y(n345) );
  AO22X1 U471 ( .A0(sti_di[1]), .A1(n348), .B0(sti_di[0]), .B1(n347), .Y(n343)
         );
  AOI221XL U472 ( .A0(sti_di[2]), .A1(n351), .B0(sti_di[3]), .B1(n350), .C0(
        n343), .Y(n344) );
  OA22X1 U473 ( .A0(n208), .A1(n345), .B0(N39), .B1(n344), .Y(n355) );
  AO22X1 U474 ( .A0(sti_di[13]), .A1(n348), .B0(sti_di[12]), .B1(n347), .Y(
        n346) );
  AOI221XL U475 ( .A0(sti_di[14]), .A1(n351), .B0(sti_di[15]), .B1(n350), .C0(
        n346), .Y(n353) );
  AO22X1 U476 ( .A0(sti_di[9]), .A1(n348), .B0(sti_di[8]), .B1(n347), .Y(n349)
         );
  AOI221XL U477 ( .A0(sti_di[10]), .A1(n351), .B0(sti_di[11]), .B1(n350), .C0(
        n349), .Y(n352) );
  OAI22XL U478 ( .A0(n353), .A1(n208), .B0(N39), .B1(n352), .Y(n354) );
  OAI2BB2XL U479 ( .B0(n355), .B1(N40), .A0N(N40), .A1N(n354), .Y(N471) );
  CLKINVX1 U480 ( .A(n356), .Y(n559) );
  NAND4X1 U481 ( .A(n357), .B(n358), .C(n359), .D(n360), .Y(n283) );
  AOI21X1 U482 ( .A0(n290), .A1(n313), .B0(n318), .Y(n360) );
  AOI22X1 U483 ( .A0(res_addr[0]), .A1(n312), .B0(n290), .B1(n315), .Y(n359)
         );
  AOI22X1 U484 ( .A0(N151), .A1(n368), .B0(N300), .B1(n288), .Y(n357) );
  NAND4X1 U485 ( .A(n369), .B(n370), .C(n371), .D(n372), .Y(n282) );
  AOI21X1 U486 ( .A0(N194), .A1(n313), .B0(n318), .Y(n372) );
  AOI22X1 U487 ( .A0(N236), .A1(n312), .B0(N299), .B1(n315), .Y(n371) );
  AOI22X1 U488 ( .A0(N341), .A1(n314), .B0(n316), .B1(res_addr[13]), .Y(n370)
         );
  AOI22X1 U489 ( .A0(N164), .A1(n368), .B0(N313), .B1(n288), .Y(n369) );
  CLKMX2X2 U490 ( .A(sti_addr[0]), .B(N105), .S0(n374), .Y(n281) );
  CLKMX2X2 U491 ( .A(sti_addr[1]), .B(N106), .S0(n374), .Y(n280) );
  CLKMX2X2 U492 ( .A(sti_addr[2]), .B(N107), .S0(n374), .Y(n279) );
  CLKMX2X2 U493 ( .A(sti_addr[3]), .B(N108), .S0(n374), .Y(n278) );
  CLKMX2X2 U494 ( .A(sti_addr[4]), .B(N109), .S0(n374), .Y(n277) );
  CLKMX2X2 U495 ( .A(sti_addr[5]), .B(N110), .S0(n374), .Y(n276) );
  CLKMX2X2 U496 ( .A(sti_addr[6]), .B(N111), .S0(n374), .Y(n275) );
  CLKMX2X2 U497 ( .A(sti_addr[7]), .B(N112), .S0(n374), .Y(n274) );
  CLKMX2X2 U498 ( .A(sti_addr[8]), .B(N113), .S0(n374), .Y(n273) );
  CLKMX2X2 U499 ( .A(sti_addr[9]), .B(N114), .S0(n374), .Y(n272) );
  NAND2X1 U500 ( .A(n380), .B(n356), .Y(n269) );
  NAND2X1 U501 ( .A(n382), .B(n383), .Y(n356) );
  MXI2X1 U502 ( .A(n386), .B(n387), .S0(n295), .Y(n267) );
  NOR2X1 U503 ( .A(n388), .B(n389), .Y(n266) );
  XNOR2X1 U504 ( .A(n390), .B(n554), .Y(n389) );
  NOR3X1 U505 ( .A(n391), .B(n392), .C(n388), .Y(n265) );
  AND2X1 U506 ( .A(n386), .B(n387), .Y(n388) );
  NOR2X1 U507 ( .A(n382), .B(n285), .Y(read_ready) );
  MXI2X1 U508 ( .A(n393), .B(n390), .S0(n296), .Y(n391) );
  NAND2X1 U509 ( .A(n390), .B(n554), .Y(n393) );
  NOR2BX1 U510 ( .AN(n386), .B(n295), .Y(n390) );
  NAND4X1 U511 ( .A(n394), .B(n395), .C(n396), .D(n397), .Y(n264) );
  AOI21X1 U512 ( .A0(N182), .A1(n313), .B0(n318), .Y(n397) );
  AOI22X1 U513 ( .A0(n289), .A1(n312), .B0(N287), .B1(n315), .Y(n396) );
  AOI22X1 U514 ( .A0(n289), .A1(n314), .B0(n316), .B1(res_addr[1]), .Y(n395)
         );
  AOI22X1 U515 ( .A0(N152), .A1(n368), .B0(N301), .B1(n288), .Y(n394) );
  NAND4X1 U516 ( .A(n398), .B(n399), .C(n400), .D(n401), .Y(n263) );
  AOI21X1 U517 ( .A0(N193), .A1(n313), .B0(n318), .Y(n401) );
  AOI22X1 U518 ( .A0(N235), .A1(n312), .B0(N298), .B1(n315), .Y(n400) );
  AOI22X1 U519 ( .A0(N340), .A1(n314), .B0(n316), .B1(res_addr[12]), .Y(n399)
         );
  AOI22X1 U520 ( .A0(N163), .A1(n368), .B0(N312), .B1(n288), .Y(n398) );
  NAND4X1 U521 ( .A(n402), .B(n403), .C(n404), .D(n405), .Y(n262) );
  AOI21X1 U522 ( .A0(N192), .A1(n313), .B0(n318), .Y(n405) );
  AOI22X1 U523 ( .A0(N234), .A1(n312), .B0(N297), .B1(n315), .Y(n404) );
  AOI22X1 U524 ( .A0(N339), .A1(n314), .B0(n316), .B1(res_addr[11]), .Y(n403)
         );
  AOI22X1 U525 ( .A0(N162), .A1(n368), .B0(N311), .B1(n288), .Y(n402) );
  NAND4X1 U526 ( .A(n406), .B(n407), .C(n408), .D(n409), .Y(n261) );
  AOI21X1 U527 ( .A0(N191), .A1(n313), .B0(n318), .Y(n409) );
  AOI22X1 U528 ( .A0(N233), .A1(n312), .B0(N296), .B1(n315), .Y(n408) );
  AOI22X1 U529 ( .A0(N338), .A1(n314), .B0(n316), .B1(res_addr[10]), .Y(n407)
         );
  AOI22X1 U530 ( .A0(N161), .A1(n368), .B0(N310), .B1(n288), .Y(n406) );
  NAND4X1 U531 ( .A(n410), .B(n411), .C(n412), .D(n413), .Y(n260) );
  AOI21X1 U532 ( .A0(N190), .A1(n313), .B0(n318), .Y(n413) );
  AOI22X1 U533 ( .A0(N232), .A1(n312), .B0(N295), .B1(n315), .Y(n412) );
  AOI22X1 U534 ( .A0(N337), .A1(n314), .B0(n316), .B1(res_addr[9]), .Y(n411)
         );
  AOI22X1 U535 ( .A0(N160), .A1(n368), .B0(N309), .B1(n288), .Y(n410) );
  NAND4X1 U536 ( .A(n414), .B(n415), .C(n416), .D(n417), .Y(n259) );
  AOI21X1 U537 ( .A0(N189), .A1(n313), .B0(n318), .Y(n417) );
  AOI22X1 U538 ( .A0(N231), .A1(n312), .B0(N294), .B1(n315), .Y(n416) );
  AOI22X1 U539 ( .A0(N336), .A1(n314), .B0(n316), .B1(res_addr[8]), .Y(n415)
         );
  AOI22X1 U540 ( .A0(N159), .A1(n368), .B0(N308), .B1(n288), .Y(n414) );
  NAND4X1 U541 ( .A(n418), .B(n419), .C(n420), .D(n421), .Y(n258) );
  AOI21X1 U542 ( .A0(N183), .A1(n313), .B0(n318), .Y(n421) );
  AOI22X1 U543 ( .A0(N225), .A1(n312), .B0(N288), .B1(n315), .Y(n420) );
  AOI22X1 U544 ( .A0(N330), .A1(n314), .B0(n316), .B1(res_addr[2]), .Y(n419)
         );
  AOI22X1 U545 ( .A0(N153), .A1(n368), .B0(N302), .B1(n288), .Y(n418) );
  NAND4X1 U546 ( .A(n422), .B(n423), .C(n424), .D(n425), .Y(n257) );
  AOI21X1 U547 ( .A0(N184), .A1(n313), .B0(n318), .Y(n425) );
  AOI22X1 U548 ( .A0(N226), .A1(n312), .B0(N289), .B1(n315), .Y(n424) );
  AOI22X1 U549 ( .A0(N331), .A1(n314), .B0(n316), .B1(res_addr[3]), .Y(n423)
         );
  AOI22X1 U550 ( .A0(N154), .A1(n368), .B0(N303), .B1(n288), .Y(n422) );
  NAND4X1 U551 ( .A(n426), .B(n427), .C(n428), .D(n429), .Y(n256) );
  AOI21X1 U552 ( .A0(N185), .A1(n313), .B0(n318), .Y(n429) );
  AOI22X1 U553 ( .A0(N227), .A1(n312), .B0(N290), .B1(n315), .Y(n428) );
  AOI22X1 U554 ( .A0(N332), .A1(n314), .B0(n316), .B1(res_addr[4]), .Y(n427)
         );
  AOI22X1 U555 ( .A0(N155), .A1(n368), .B0(N304), .B1(n288), .Y(n426) );
  NAND4X1 U556 ( .A(n430), .B(n431), .C(n432), .D(n433), .Y(n255) );
  AOI21X1 U557 ( .A0(N186), .A1(n313), .B0(n318), .Y(n433) );
  AOI22X1 U558 ( .A0(N228), .A1(n312), .B0(N291), .B1(n315), .Y(n432) );
  AOI22X1 U559 ( .A0(N333), .A1(n314), .B0(n373), .B1(res_addr[5]), .Y(n431)
         );
  AOI22X1 U560 ( .A0(N156), .A1(n368), .B0(N305), .B1(n288), .Y(n430) );
  NAND4X1 U561 ( .A(n434), .B(n435), .C(n436), .D(n437), .Y(n254) );
  AOI21X1 U562 ( .A0(N187), .A1(n313), .B0(n318), .Y(n437) );
  AOI22X1 U563 ( .A0(N229), .A1(n312), .B0(N292), .B1(n315), .Y(n436) );
  AOI22X1 U564 ( .A0(N334), .A1(n314), .B0(n373), .B1(res_addr[6]), .Y(n435)
         );
  AOI22X1 U565 ( .A0(N157), .A1(n368), .B0(N306), .B1(n288), .Y(n434) );
  AOI22X1 U566 ( .A0(N293), .A1(n315), .B0(N335), .B1(n314), .Y(n440) );
  AOI22X1 U567 ( .A0(n316), .A1(res_addr[7]), .B0(N158), .B1(n368), .Y(n439)
         );
  CLKMX2X2 U568 ( .A(n447), .B(n448), .S0(n442), .Y(n446) );
  AOI2BB2X1 U569 ( .B0(N307), .B1(n288), .A0N(n445), .A1N(n556), .Y(n438) );
  MXI2X1 U570 ( .A(n392), .B(n450), .S0(n295), .Y(n448) );
  XNOR2X1 U571 ( .A(n296), .B(n554), .Y(n450) );
  NOR2X1 U572 ( .A(n554), .B(n553), .Y(n392) );
  NAND2X1 U573 ( .A(n451), .B(n452), .Y(n449) );
  NAND2X1 U574 ( .A(n207), .B(n453), .Y(n252) );
  OAI21XL U575 ( .A0(n206), .A1(n454), .B0(n455), .Y(n251) );
  OAI21XL U576 ( .A0(n205), .A1(n454), .B0(n458), .Y(n250) );
  OAI21XL U577 ( .A0(n204), .A1(n454), .B0(n459), .Y(n249) );
  OAI21XL U578 ( .A0(n203), .A1(n454), .B0(n460), .Y(n248) );
  OAI21XL U579 ( .A0(n202), .A1(n454), .B0(n461), .Y(n247) );
  OAI21XL U580 ( .A0(n201), .A1(n454), .B0(n462), .Y(n246) );
  OAI21XL U581 ( .A0(n200), .A1(n454), .B0(n463), .Y(n245) );
  OAI21XL U582 ( .A0(n199), .A1(n454), .B0(n464), .Y(n244) );
  AOI22X1 U583 ( .A0(N459), .A1(n456), .B0(n457), .B1(res_di[7]), .Y(n464) );
  MXI2X1 U584 ( .A(n468), .B(n469), .S0(n293), .Y(n467) );
  OAI21XL U585 ( .A0(n452), .A1(n470), .B0(n558), .Y(n469) );
  OAI2BB2XL U586 ( .B0(n471), .B1(n472), .A0N(n473), .A1N(N450), .Y(n470) );
  NOR2X1 U587 ( .A(N450), .B(n473), .Y(n472) );
  AOI32X1 U588 ( .A0(n474), .A1(n475), .A2(n476), .B0(n477), .B1(n301), .Y(
        n471) );
  AOI2BB2X1 U589 ( .B0(res_di[6]), .B1(n291), .A0N(n480), .A1N(N447), .Y(n476)
         );
  OAI221XL U590 ( .A0(n482), .A1(n483), .B0(n484), .B1(n485), .C0(n486), .Y(
        n474) );
  AO21X1 U591 ( .A0(n485), .A1(n484), .B0(res_di[3]), .Y(n486) );
  NAND2X1 U592 ( .A(N445), .B(n487), .Y(n484) );
  OAI2BB2XL U593 ( .B0(N445), .B1(n487), .A0N(n485), .A1N(res_di[3]), .Y(n483)
         );
  CLKINVX1 U594 ( .A(N446), .Y(n485) );
  CLKINVX1 U595 ( .A(res_di[2]), .Y(n487) );
  AOI32X1 U596 ( .A0(n488), .A1(n489), .A2(n206), .B0(N444), .B1(n490), .Y(
        n482) );
  CLKINVX1 U597 ( .A(res_di[1]), .Y(n490) );
  CLKINVX1 U598 ( .A(res_di[0]), .Y(n489) );
  NAND2BX1 U599 ( .AN(N444), .B(res_di[1]), .Y(n488) );
  NAND4X1 U600 ( .A(n557), .B(n491), .C(n492), .D(n287), .Y(n468) );
  NAND3X1 U601 ( .A(n493), .B(n494), .C(n553), .Y(n492) );
  OAI211X1 U602 ( .A0(n554), .A1(n295), .B0(n493), .C0(n494), .Y(n491) );
  AOI32X1 U603 ( .A0(n496), .A1(n497), .A2(n498), .B0(n499), .B1(n500), .Y(
        n495) );
  NAND2X1 U604 ( .A(n501), .B(n200), .Y(n499) );
  AOI22X1 U605 ( .A0(n200), .A1(res_di[6]), .B0(n202), .B1(res_di[4]), .Y(n498) );
  NAND2X1 U606 ( .A(n201), .B(res_di[5]), .Y(n497) );
  OAI221XL U607 ( .A0(n502), .A1(n503), .B0(n203), .B1(n504), .C0(n505), .Y(
        n496) );
  AO21X1 U608 ( .A0(n504), .A1(n203), .B0(res_di[3]), .Y(n505) );
  OR2X1 U609 ( .A(n204), .B(res_di[2]), .Y(n504) );
  AO22X1 U610 ( .A0(res_di[3]), .A1(n203), .B0(res_di[2]), .B1(n204), .Y(n503)
         );
  ACHCINX2 U611 ( .CIN(data_min[0]), .A(res_di[1]), .B(n205), .CO(n502) );
  NAND2BX1 U612 ( .AN(n199), .B(n473), .Y(n493) );
  CLKINVX1 U613 ( .A(res_di[7]), .Y(n473) );
  OAI221XL U614 ( .A0(n199), .A1(n506), .B0(n317), .B1(n229), .C0(n507), .Y(
        n243) );
  NAND2X1 U615 ( .A(N479), .B(n508), .Y(n507) );
  OAI221XL U616 ( .A0(n200), .A1(n506), .B0(n317), .B1(n230), .C0(n509), .Y(
        n242) );
  NAND2X1 U617 ( .A(N478), .B(n508), .Y(n509) );
  OAI221XL U618 ( .A0(n201), .A1(n506), .B0(n317), .B1(n231), .C0(n510), .Y(
        n241) );
  NAND2X1 U619 ( .A(N477), .B(n508), .Y(n510) );
  OAI221XL U620 ( .A0(n202), .A1(n506), .B0(n317), .B1(n232), .C0(n511), .Y(
        n240) );
  NAND2X1 U621 ( .A(N476), .B(n508), .Y(n511) );
  OAI221XL U622 ( .A0(n203), .A1(n506), .B0(n317), .B1(n233), .C0(n512), .Y(
        n239) );
  NAND2X1 U623 ( .A(N475), .B(n508), .Y(n512) );
  OAI221XL U624 ( .A0(n204), .A1(n506), .B0(n317), .B1(n234), .C0(n513), .Y(
        n238) );
  NAND2X1 U625 ( .A(N474), .B(n508), .Y(n513) );
  OAI221XL U626 ( .A0(n205), .A1(n506), .B0(n317), .B1(n235), .C0(n514), .Y(
        n237) );
  NAND2X1 U627 ( .A(N473), .B(n508), .Y(n514) );
  OAI221XL U628 ( .A0(n206), .A1(n506), .B0(n317), .B1(n551), .C0(n515), .Y(
        n236) );
  NOR2X1 U629 ( .A(STATE_NEXT[3]), .B(n286), .Y(n382) );
  CLKINVX1 U630 ( .A(N471), .Y(n516) );
  OAI211X1 U631 ( .A0(n556), .A1(n445), .B0(n517), .C0(n447), .Y(n286) );
  AOI2BB1X1 U632 ( .A0N(n522), .A1N(n523), .B0(n524), .Y(n521) );
  NOR2BX1 U633 ( .AN(n453), .B(n374), .Y(n520) );
  OR2X1 U634 ( .A(n384), .B(n292), .Y(n519) );
  OAI31XL U635 ( .A0(n526), .A1(n208), .A2(n527), .B0(n287), .Y(n518) );
  NOR4BX1 U636 ( .AN(res_addr[7]), .B(n528), .C(n529), .D(n367), .Y(n527) );
  OR3X1 U637 ( .A(n210), .B(n211), .C(n209), .Y(n526) );
  OR2X1 U638 ( .A(n318), .B(n451), .Y(STATE_NEXT[3]) );
  NAND3X1 U639 ( .A(n557), .B(n287), .C(n555), .Y(n445) );
  OR2X1 U640 ( .A(res_addr[3]), .B(res_addr[4]), .Y(n538) );
  OR4X1 U641 ( .A(res_addr[5]), .B(res_addr[6]), .C(res_addr[8]), .D(
        res_addr[9]), .Y(n537) );
  NOR4X1 U642 ( .A(res_addr[1]), .B(res_addr[13]), .C(res_addr[12]), .D(
        res_addr[11]), .Y(n540) );
  NOR3X1 U643 ( .A(n543), .B(n529), .C(n447), .Y(n534) );
  NAND4X1 U644 ( .A(res_addr[1]), .B(res_addr[13]), .C(n544), .D(res_addr[12]), 
        .Y(n529) );
  AND2X1 U645 ( .A(res_addr[10]), .B(res_addr[11]), .Y(n544) );
  NAND3BX1 U646 ( .AN(n528), .B(n533), .C(n367), .Y(n543) );
  CLKINVX1 U647 ( .A(res_addr[0]), .Y(n367) );
  NAND4X1 U648 ( .A(res_addr[8]), .B(res_addr[6]), .C(res_addr[9]), .D(n545), 
        .Y(n528) );
  AND4X1 U649 ( .A(res_addr[2]), .B(res_addr[3]), .C(res_addr[4]), .D(
        res_addr[5]), .Y(n545) );
  NAND3X1 U650 ( .A(n287), .B(n452), .C(n556), .Y(n447) );
  NAND2BX1 U651 ( .AN(n522), .B(n523), .Y(n531) );
  NAND3BX1 U652 ( .AN(n554), .B(n553), .C(n552), .Y(n523) );
  NOR2X1 U653 ( .A(n465), .B(n466), .Y(n522) );
  CLKINVX1 U654 ( .A(n451), .Y(n546) );
  CLKINVX1 U655 ( .A(n517), .Y(n465) );
  NAND2X1 U656 ( .A(n556), .B(n525), .Y(n517) );
  NAND3X1 U657 ( .A(n557), .B(n451), .C(n555), .Y(n453) );
  NOR2X1 U658 ( .A(n287), .B(n556), .Y(n451) );
  AO21X1 U659 ( .A0(n533), .A1(n547), .B0(n384), .Y(n530) );
  OAI21XL U660 ( .A0(n548), .A1(n292), .B0(n287), .Y(n547) );
  NOR4X1 U661 ( .A(n211), .B(n210), .C(n209), .D(n208), .Y(n548) );
endmodule

