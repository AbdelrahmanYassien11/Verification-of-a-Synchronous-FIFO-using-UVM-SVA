package FIFO_pkg;

	import uvm_pkg::*;
	`include "uvm_macros.svh"

	typedef enum {RESET, READ , WRITE} STATE_e;
	parameter FIFO_WIDTH = 16;
   	parameter FIFO_DEPTH = 8;
  	parameter FIFO_SIZE = 8;


	`include "sequence_item.svh"
	`include "sequencer.svh"

	`include "predictor.svh"
	`include "comparator.svh"

	`include "base_sequence.svh"
	`include "reset_sequence.svh"

	`include "write_once_sequence.svh"
	`include "read_once_sequence.svh"
	
	`include "write_all_sequence.svh"
	`include "read_all_sequence.svh"

	`include "driver.svh"
	`include "inputs_monitor.svh"
	`include "outputs_monitor.svh"

	`include "agent.svh"
	`include "scoreboard.svh"
	`include "coverage.svh"

	`include "env.svh"

	`include "base_test.svh"
	`include "reset_test.svh"
	`include "write_once_test.svh"
	`include "read_once_test.svh"

	`include "write_all_test.svh"


endpackage : FIFO_pkg