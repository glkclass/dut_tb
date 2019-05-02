`timescale 1ns/1ns
package dut_sequence_pkg;
    import uvm_pkg::*;
    `include "uvm_macros.svh"

    import typedef_pkg::*;
    import dut_param_pkg::*;
    import dut_tb_param_pkg::*;
    import dut_handler_pkg::*;

    `include "dut_txn_base.svh"
    `include "depth_txn.svh"
    `include "depth_frame_txn.svh"
    `include "histo_txn.svh"
    `include "dut_pout_txn.svh"
    `include "dut_v_sqncr.svh"
    `include "dut_v_seq.svh"
    `include "series_seq.svh"
endpackage

