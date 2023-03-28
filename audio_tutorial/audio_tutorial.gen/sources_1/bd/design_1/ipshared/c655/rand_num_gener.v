`timescale 1ns / 1ps
module inverter #(parameter DATA_WIDTH=32)
   (
    input    axi_clk,
    input    axi_reset_n,
    //AXI4-S slave i/f
    input    s_axis_valid,
    input [DATA_WIDTH-1:0] s_axis_data,
    output reg s_axis_ready,
    //AXI4-S master i/f
    output reg  m_axis_valid,
    output reg [DATA_WIDTH-1:0] m_axis_data,
    input    m_axis_ready
    );
    
   reg[8:0] counter = 0; 
    
    always @(posedge axi_clk)
    begin
       if(s_axis_valid)
       begin
            if(counter == 0)
            begin 
                 m_axis_valid <= 0;
                 s_axis_ready = 0;
                 m_axis_data = s_axis_data;
            end
            m_axis_data <= m_axis_data << 1;
            m_axis_data[0] <= (m_axis_data[31]^m_axis_data[29]^m_axis_data[25]^m_axis_data[24]^m_axis_data[2]^m_axis_data[1]^m_axis_data[0]);
            counter=counter+1;
       end
       if(counter == 1)
       begin 
            m_axis_valid <= s_axis_valid;
            s_axis_ready = m_axis_ready;
            counter = 0;
       end
    end
     
endmodule