//Verilog HDL for "SDADC", "DWA_ideal" "functional"

//Verilog HDL for "SDADC", "DWA" "functional"

module DWA_ideal (
    input clk,
    input rst_n,
    input [6:0] D,
    output reg [6:0] LP,      
    output reg [6:0] LN,
	output reg [2:0] D_out
);

reg [2:0] in_decoder;
reg [2:0] ptr;       
reg [3:0] sum_raw;
reg [2:0] ptr_next,D_out_reg;
reg [6:0] d_out;

always @(*) begin
    case (D)
        7'b0000000: in_decoder = 3'b000;
        7'b0000001: in_decoder = 3'b001; 
        7'b0000011: in_decoder = 3'b010;
        7'b0000111: in_decoder = 3'b011; 
        7'b0001111: in_decoder = 3'b100; 
        7'b0011111: in_decoder = 3'b101;
        7'b0111111: in_decoder = 3'b110;
        7'b1111111: in_decoder = 3'b111; 
        default:    in_decoder = 3'b000; 
    endcase
end


always @(*) begin
    sum_raw = ptr + in_decoder;
    /*if (sum_raw >= 4'd7) 
        ptr_next = sum_raw - 4'd7;
    else */                
        ptr_next = sum_raw[2:0];
end


always @(*) begin
    case (ptr)
        3'd0: d_out = D;                              
        3'd1: d_out = {D[5:0], D[6]};          
        3'd2: d_out = {D[4:0], D[6:5]};        
        3'd3: d_out = {D[3:0], D[6:4]};        
        3'd4: d_out = {D[2:0], D[6:3]};       
        3'd5: d_out = {D[1:0], D[6:2]};     
        3'd6: d_out = {D[0],   D[6:1]};       
        default: d_out = D;
    endcase
end

always @(*) begin
   D_out_reg = D[0] + D[1] + D[2] + D[3] + D[4] + D[5] + D[6];
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        ptr    <= 3'b000;
        LP     <= 7'b0;
        LN     <= 7'b0;
	    D_out<=0;
    end else begin
	    D_out  <= D_out_reg;
        ptr    <= ptr_next; 
        LP     <= d_out;     
        LN     <= ~d_out; 
    end
end

endmodule


