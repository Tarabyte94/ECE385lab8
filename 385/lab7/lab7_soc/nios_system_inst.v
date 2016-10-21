	nios_system u0 (
		.accumulator_wire_export (<connected-to-accumulator_wire_export>), // accumulator_wire.export
		.clk_clk                 (<connected-to-clk_clk>),                 //              clk.clk
		.led_wire_export         (<connected-to-led_wire_export>),         //         led_wire.export
		.prgm_reset_wire_export  (<connected-to-prgm_reset_wire_export>),  //  prgm_reset_wire.export
		.reset_reset_n           (<connected-to-reset_reset_n>),           //            reset.reset_n
		.sdram_clk_clk           (<connected-to-sdram_clk_clk>),           //        sdram_clk.clk
		.sdram_wire_addr         (<connected-to-sdram_wire_addr>),         //       sdram_wire.addr
		.sdram_wire_ba           (<connected-to-sdram_wire_ba>),           //                 .ba
		.sdram_wire_cas_n        (<connected-to-sdram_wire_cas_n>),        //                 .cas_n
		.sdram_wire_cke          (<connected-to-sdram_wire_cke>),          //                 .cke
		.sdram_wire_cs_n         (<connected-to-sdram_wire_cs_n>),         //                 .cs_n
		.sdram_wire_dq           (<connected-to-sdram_wire_dq>),           //                 .dq
		.sdram_wire_dqm          (<connected-to-sdram_wire_dqm>),          //                 .dqm
		.sdram_wire_ras_n        (<connected-to-sdram_wire_ras_n>),        //                 .ras_n
		.sdram_wire_we_n         (<connected-to-sdram_wire_we_n>),         //                 .we_n
		.sw_wire_export          (<connected-to-sw_wire_export>)           //          sw_wire.export
	);
