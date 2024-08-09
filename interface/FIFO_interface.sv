interface inf (
    input bit clk
    );

import FIFO_pkg::*;
    
  bit                     rst_n;
  bit   [FIFO_WIDTH-1:0]  data_in;
  bit                     wr_en;
  bit                     rd_en;

  logic [FIFO_WIDTH-1:0]  data_out;
  logic                   wr_ack;
  logic                   overflow;
  logic                   underflow;
  logic                   almostempty;
  logic                   empty;
  logic                   almostfull;
  logic                   full;
  logic                   half_full;
  
  modport DUT (input clk, rst_n, data_in, wr_en, rd_en, output wr_ack, overflow, underflow, almostempty, empty, almostfull, full, half_full, data_out );
  modport TEST (input wr_ack, overflow, underflow, almostempty, empty, almostfull, full, half_full, data_out, output clk, rst_n, data_in, wr_en, rd_en);
  //modport MONITOR (input wr_ack, overflow, underflow, almostempty, empty, almostfull, full, half_full, data_out, clk, rst_n, data_in, wr_en, rd_en);
  modport SVA (input wr_ack, overflow, underflow, almostempty, empty, almostfull, full, half_full, data_out ,  clk, rst_n, data_in, wr_en, rd_en);

   inputs_monitor inputs_monitor_h;
   outputs_monitor outputs_monitor_h;
   STATE_e operation_interface;


	task generic_reciever(input bit irst_n, input bit [31:0] idata_in, input bit iwr_en, input bit ird_en, input STATE_e ioperation);
      operation_interface = ioperation; 
      send_inputs(irst_n, idata_in, iwr_en, ird_en);
			if(irst_n === 1'b0) begin
        wr_en = iwr_en;
        rd_en = ird_en;
				reset_FIFO();
			end
			else if(iwr_en === 1'b1 && ird_en === 1'b0) begin
				write_FIFO(idata_in);
			end
			else if(iwr_en === 1'b0 && ird_en === 1'b1) begin
				read_FIFO();
			end
	endtask : generic_reciever


	task reset_FIFO();
 		@(negedge clk);
      rst_n = 1'b0;
 		@(negedge clk);
 		 send_outputs();
 		 rst_n = 1'b1;
 	endtask : reset_FIFO



 	task write_FIFO(input bit [FIFO_WIDTH-1:0] idata_in);
 		@(negedge clk);
      rst_n = 1'b1;
 			wr_en = 1'b1;
      rd_en = 1'b0;
 			data_in = idata_in;
 		@(negedge clk);
 			send_outputs();
      wr_en = 1'b0;
	 endtask : write_FIFO


 	task read_FIFO();
 		@(negedge clk);
      rst_n = 1'b1;
      wr_en = 1'b0;
  		rd_en = 1'b1;
 		@(negedge clk);
 			send_outputs();
      rd_en = 1'b0;
 	endtask : read_FIFO

   function void send_inputs(input bit irst_n, input bit [31:0] idata_in, input bit iwr_en, input bit ird_en);
      inputs_monitor_h.write_to_monitor(irst_n, idata_in, iwr_en, ird_en);
   endfunction : send_inputs

   function void send_outputs();
   		outputs_monitor_h.write_to_monitor(rst_n, data_in, wr_en, rd_en, data_out, 
                                         wr_ack, overflow, underflow, almostempty, empty, almostfull, full,
                                         half_full, operation_interface);
   endfunction : send_outputs






endinterface : inf


