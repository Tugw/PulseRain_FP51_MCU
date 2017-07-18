// ADC.v

// Generated using ACDS version 16.1 196

`timescale 1 ps / 1 ps
module ADC (
		input  wire        adc_pll_clock_clk,      //  adc_pll_clock.clk
		input  wire        adc_pll_locked_export,  // adc_pll_locked.export
		input  wire        clock_clk,              //          clock.clk
		input  wire        command_valid,          //        command.valid
		input  wire [4:0]  command_channel,        //               .channel
		input  wire        command_startofpacket,  //               .startofpacket
		input  wire        command_endofpacket,    //               .endofpacket
		output wire        command_ready,          //               .ready
		input  wire        reset_sink_reset_n,     //     reset_sink.reset_n
		output wire        response_valid,         //       response.valid
		output wire [4:0]  response_channel,       //               .channel
		output wire [11:0] response_data,          //               .data
		output wire        response_startofpacket, //               .startofpacket
		output wire        response_endofpacket    //               .endofpacket
	);

	ADC_modular_adc_0 modular_adc_0 (
		.clock_clk              (clock_clk),              //          clock.clk
		.reset_sink_reset_n     (reset_sink_reset_n),     //     reset_sink.reset_n
		.adc_pll_clock_clk      (adc_pll_clock_clk),      //  adc_pll_clock.clk
		.adc_pll_locked_export  (adc_pll_locked_export),  // adc_pll_locked.export
		.command_valid          (command_valid),          //        command.valid
		.command_channel        (command_channel),        //               .channel
		.command_startofpacket  (command_startofpacket),  //               .startofpacket
		.command_endofpacket    (command_endofpacket),    //               .endofpacket
		.command_ready          (command_ready),          //               .ready
		.response_valid         (response_valid),         //       response.valid
		.response_channel       (response_channel),       //               .channel
		.response_data          (response_data),          //               .data
		.response_startofpacket (response_startofpacket), //               .startofpacket
		.response_endofpacket   (response_endofpacket)    //               .endofpacket
	);

endmodule
