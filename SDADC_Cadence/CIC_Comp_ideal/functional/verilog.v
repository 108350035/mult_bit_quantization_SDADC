//Verilog HDL for "SDADC", "CIC_Comp" "functional"

module CIC_Comp_ideal (clk,rst_n,in,out);
input clk,rst_n;
input [11:0] in;
output reg [11:0] out;


reg [1:0] sel;
reg [19:0] H0_add_reg [36:0];
reg [19:0] H1_add_reg [36:0];
reg [19:0] H2_add_reg [36:0];
reg [19:0] H3_add_reg [36:0];
wire [20:0] H0123_add,A;

integer j;

reg [11:0] in0,in1,in2;


assign H0123_add = (H0_add_reg[0] + H1_add_reg[0]) + (H2_add_reg[0] + H3_add_reg[0]);
assign A = (H0123_add >>> 8);


always@(posedge clk,negedge rst_n)
begin
    if(!rst_n) out<=0;
    else out<=A[11:0];
end

always@(posedge clk,negedge rst_n)
begin
    if(!rst_n) begin
        in0<=0;
        in1<=0;
        in2<=0;
    end
    else begin
        in2<=in;
        in1<=in2;
        in0<=in1;
    end
end

always@(posedge clk,negedge rst_n)
begin
    if(!rst_n) sel<=0;
    else sel<=sel+1;
end



always@(posedge clk,negedge rst_n)
begin
    if(!rst_n) begin
        for(j=0;j<37;j=j+1) begin
            H0_add_reg[j]<=0;
        end
    end
    else if(sel == 3) begin
	H0_add_reg[0] <= H0_add_reg[1] - in0;
	H0_add_reg[1] <= H0_add_reg[2];
	H0_add_reg[2] <= H0_add_reg[3];
	H0_add_reg[3] <= H0_add_reg[4] + in0;
	H0_add_reg[4] <= H0_add_reg[5] + in0;
	H0_add_reg[5] <= H0_add_reg[6];
	H0_add_reg[6] <= H0_add_reg[7] - in0;
	H0_add_reg[7] <= H0_add_reg[8] - in0;
	H0_add_reg[8] <= H0_add_reg[9] - in0;
	H0_add_reg[9] <= H0_add_reg[10] + in0;
	H0_add_reg[10] <= H0_add_reg[11] + (in0 <<< 1);
	H0_add_reg[11] <= H0_add_reg[12] + in0;
	H0_add_reg[12] <= H0_add_reg[13] - in0;
	H0_add_reg[13] <= H0_add_reg[14] - (in0 <<< 2);
	H0_add_reg[14] <= H0_add_reg[15] - (in0 <<< 2);
	H0_add_reg[15] <= H0_add_reg[16];
	H0_add_reg[16] <= H0_add_reg[17] + (in0 <<< 3);
	H0_add_reg[17] <= H0_add_reg[18] + ((in0 <<< 4) - in0);
	H0_add_reg[18] <= H0_add_reg[19] + ((in0 <<< 4) + (in0 <<< 1) + in0);
	H0_add_reg[19] <= H0_add_reg[20] + ((in0 <<< 4) + (in0 <<< 1));
	H0_add_reg[20] <= H0_add_reg[21] + ((in0 <<< 3) + (in0 <<< 2));
	H0_add_reg[21] <= H0_add_reg[22] + (in0 <<< 2);
	H0_add_reg[22] <= H0_add_reg[23] - (in0 <<< 1);
	H0_add_reg[23] <= H0_add_reg[24] - (in0 <<< 2);
	H0_add_reg[24] <= H0_add_reg[25] - (in0 <<< 1);
	H0_add_reg[25] <= H0_add_reg[26];
	H0_add_reg[26] <= H0_add_reg[27] + (in0 <<< 1);
	H0_add_reg[27] <= H0_add_reg[28] + (in0 <<< 1);
	H0_add_reg[28] <= H0_add_reg[29];
	H0_add_reg[29] <= H0_add_reg[30] - in0;
	H0_add_reg[30] <= H0_add_reg[31] - in0;
	H0_add_reg[31] <= H0_add_reg[32];
	H0_add_reg[32] <= H0_add_reg[33];
	H0_add_reg[33] <= H0_add_reg[34] + in0;
	H0_add_reg[34] <= H0_add_reg[35];
	H0_add_reg[35] <= H0_add_reg[36];
	H0_add_reg[36] <= (~in0) + 1;  
    end
end

always@(posedge clk,negedge rst_n)
begin
    if(!rst_n) begin
        for(j=0;j<37;j=j+1) begin
            H1_add_reg[j]<=0;
        end
    end
    else if(sel == 3) begin
       H1_add_reg[0] <= H1_add_reg[1] - in;
	H1_add_reg[1] <= H1_add_reg[2];
	H1_add_reg[2] <= H1_add_reg[3];
	H1_add_reg[3] <= H1_add_reg[4] + in;
	H1_add_reg[4] <= H1_add_reg[5] + in;
	H1_add_reg[5] <= H1_add_reg[6];
	H1_add_reg[6] <= H1_add_reg[7] - in;
	H1_add_reg[7] <= H1_add_reg[8] - in;
	H1_add_reg[8] <= H1_add_reg[9];
	H1_add_reg[9] <= H1_add_reg[10] + in;
	H1_add_reg[10] <= H1_add_reg[11] + (in <<< 1);
	H1_add_reg[11] <= H1_add_reg[12] + in;
	H1_add_reg[12] <= H1_add_reg[13] - (in <<< 1);
	H1_add_reg[13] <= H1_add_reg[14] - (in <<< 2);
	H1_add_reg[14] <= H1_add_reg[15] - ((in <<< 1) + in);
	H1_add_reg[15] <= H1_add_reg[16] + (in <<< 1);
	H1_add_reg[16] <= H1_add_reg[17] + ((in <<< 3) + (in <<< 1));
	H1_add_reg[17] <= H1_add_reg[18] + ((in <<< 4) + in);
	H1_add_reg[18] <= H1_add_reg[19] + ((in <<< 4) + (in <<< 1) + in);
	H1_add_reg[19] <= H1_add_reg[20] + ((in <<< 4) + in);
	H1_add_reg[20] <= H1_add_reg[21] + ((in <<< 3) + (in <<< 1));
	H1_add_reg[21] <= H1_add_reg[22] + (in <<< 1);
	H1_add_reg[22] <= H1_add_reg[23] - ((in <<< 1) + in);
	H1_add_reg[23] <= H1_add_reg[24] - (in <<< 2);
	H1_add_reg[24] <= H1_add_reg[25] - (in <<< 1);
	H1_add_reg[25] <= H1_add_reg[26] + in;
	H1_add_reg[26] <= H1_add_reg[27] + (in <<< 1);
	H1_add_reg[27] <= H1_add_reg[28] + in;
	H1_add_reg[28] <= H1_add_reg[29];
	H1_add_reg[29] <= H1_add_reg[30] - in;
	H1_add_reg[30] <= H1_add_reg[31] - in;
	H1_add_reg[31] <= H1_add_reg[32];
	H1_add_reg[32] <= H1_add_reg[33] + in;
	H1_add_reg[33] <= H1_add_reg[34] + in;
	H1_add_reg[34] <= H1_add_reg[35];
	H1_add_reg[35] <= H1_add_reg[36];
	H1_add_reg[36] <= (~in) + 1; 
 
    
    end
end

always@(posedge clk,negedge rst_n)
begin
    if(!rst_n) begin
        for(j=0;j<37;j=j+1) begin
            H2_add_reg[j]<=0;
        end
    end
    else if(sel == 3) begin
       H2_add_reg[0] <= H2_add_reg[1] - in2;
	H2_add_reg[1] <= H2_add_reg[2];
	H2_add_reg[2] <= H2_add_reg[3];
	H2_add_reg[3] <= H2_add_reg[4] + in2;
	H2_add_reg[4] <= H2_add_reg[5];
	H2_add_reg[5] <= H2_add_reg[6];
	H2_add_reg[6] <= H2_add_reg[7] - in2;
	H2_add_reg[7] <= H2_add_reg[8] - in2;
	H2_add_reg[8] <= H2_add_reg[9];
	H2_add_reg[9] <= H2_add_reg[10] + (in2 <<< 1);
	H2_add_reg[10] <= H2_add_reg[11] + (in2 <<< 1);
	H2_add_reg[11] <= H2_add_reg[12];
	H2_add_reg[12] <= H2_add_reg[13] - (in2 <<< 1);
	H2_add_reg[13] <= H2_add_reg[14] - (in2 <<< 2);
	H2_add_reg[14] <= H2_add_reg[15] - (in2 <<< 1);
	H2_add_reg[15] <= H2_add_reg[16] + (in2 <<< 2);
	H2_add_reg[16] <= H2_add_reg[17] + ((in2 <<< 3) + (in2 <<< 2));
	H2_add_reg[17] <= H2_add_reg[18] + ((in2 <<< 4) + (in2 <<< 1));
	H2_add_reg[18] <= H2_add_reg[19] + ((in2 <<< 4) + (in2 <<< 1) + in2);
	H2_add_reg[19] <= H2_add_reg[20] + ((in2 <<< 4) - in2);
	H2_add_reg[20] <= H2_add_reg[21] + (in2 <<< 3);
	H2_add_reg[21] <= H2_add_reg[22];
	H2_add_reg[22] <= H2_add_reg[23] - (in2 <<< 2);
	H2_add_reg[23] <= H2_add_reg[24] - (in2 <<< 2);
	H2_add_reg[24] <= H2_add_reg[25] - in2;
	H2_add_reg[25] <= H2_add_reg[26] + in2;
	H2_add_reg[26] <= H2_add_reg[27] + (in2 <<< 1);
	H2_add_reg[27] <= H2_add_reg[28] + in2;
	H2_add_reg[28] <= H2_add_reg[29] - in2;
	H2_add_reg[29] <= H2_add_reg[30] - in2;
	H2_add_reg[30] <= H2_add_reg[31] - in2;
	H2_add_reg[31] <= H2_add_reg[32];
	H2_add_reg[32] <= H2_add_reg[33] + in2;
	H2_add_reg[33] <= H2_add_reg[34] + in2;
	H2_add_reg[34] <= H2_add_reg[35];
	H2_add_reg[35] <= H2_add_reg[36];
	H2_add_reg[36] <= (~in2) + 1;
    end
end


always@(posedge clk,negedge rst_n)
begin
    if(!rst_n) begin
        for(j=0;j<37;j=j+1) begin
            H3_add_reg[j]<=0;
        end
    end
    else if(sel == 3) begin
       H3_add_reg[0] <= H3_add_reg[1];
	H3_add_reg[1] <= H3_add_reg[2];
	H3_add_reg[2] <= H3_add_reg[3] + in1;
	H3_add_reg[3] <= H3_add_reg[4] + in1;
	H3_add_reg[4] <= H3_add_reg[5];
	H3_add_reg[5] <= H3_add_reg[6] - in1;
	H3_add_reg[6] <= H3_add_reg[7] - in1;
	H3_add_reg[7] <= H3_add_reg[8] - in1;
	H3_add_reg[8] <= H3_add_reg[9] + in1;
	H3_add_reg[9] <= H3_add_reg[10] + (in1 <<< 1);
	H3_add_reg[10] <= H3_add_reg[11] + (in1 <<< 1);
	H3_add_reg[11] <= H3_add_reg[12];
	H3_add_reg[12] <= H3_add_reg[13] - ((in1 <<< 1) + in1);
	H3_add_reg[13] <= H3_add_reg[14] - (in1 <<< 2);
	H3_add_reg[14] <= H3_add_reg[15] - in1;
	H3_add_reg[15] <= H3_add_reg[16] + ((in1 <<< 2) + (in1 <<< 1));
	H3_add_reg[16] <= H3_add_reg[17] + ((in1 <<< 3) + (in1 <<< 2) + in1);
	H3_add_reg[17] <= H3_add_reg[18] + ((in1 <<< 4) + (in1 <<< 1) + in1);
	H3_add_reg[18] <= H3_add_reg[19] + ((in1 <<< 4) + (in1 <<< 1) + in1);
	H3_add_reg[19] <= H3_add_reg[20] + ((in1 <<< 3) + (in1 <<< 2) + in1);
	H3_add_reg[20] <= H3_add_reg[21] + ((in1 <<< 2) + (in1 <<< 1));
	H3_add_reg[21] <= H3_add_reg[22] - in1;
	H3_add_reg[22] <= H3_add_reg[23] - (in1 <<< 2);
	H3_add_reg[23] <= H3_add_reg[24] - ((in1 <<< 1) + in1);
	H3_add_reg[24] <= H3_add_reg[25];
	H3_add_reg[25] <= H3_add_reg[26] + (in1 <<< 1);
	H3_add_reg[26] <= H3_add_reg[27] + (in1 <<< 1);
	H3_add_reg[27] <= H3_add_reg[28] + in1;
	H3_add_reg[28] <= H3_add_reg[29] - in1;
	H3_add_reg[29] <= H3_add_reg[30] - in1;
	H3_add_reg[30] <= H3_add_reg[31] - in1;
	H3_add_reg[31] <= H3_add_reg[32];
	H3_add_reg[32] <= H3_add_reg[33] + in1;
	H3_add_reg[33] <= H3_add_reg[34] + in1;
	H3_add_reg[34] <= H3_add_reg[35];
	H3_add_reg[35] <= H3_add_reg[36];
	H3_add_reg[36] <= 0;
         
       
    
    end
end



endmodule


