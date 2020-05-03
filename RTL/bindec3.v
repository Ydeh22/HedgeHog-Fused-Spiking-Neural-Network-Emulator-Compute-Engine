// bindec3.v
//
// Author:  Jerry D. Harthcock
// Version:  1.22  May 3, 2020
// Copyright (C) 2020.  All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                    //
//                                                    Open-Source                                                     //
//                          HedgeHog Fused Spiking Neural Network Emulator/Compute Engine                             //
//                                          Limited Use Commercial License                                            //
//                                                                                                                    //
//                                                                                                                    //
// Open-source means:  this source code and this instruction set ("this IP") may be freely downloaded, copied,        //
// modified, distributed and used in accordance with the terms and conditons of the licenses provided herein.         //
//                                                                                                                    //
// Provided that you comply with all the terms and conditions set forth herein, Jerry D. Harthcock ("licensor"),      //
// the original author and exclusive copyright owner of this HedgeHog Fused Spiking Neural Network Emulator/Compute   //
// Engine, including related development software ("this IP"), hereby grants to recipient of this IP ("licensee"),    //
// a world-wide, paid-up, non-exclusive license to implement and commercially use this IP within the programmable     //
// fabric of Xilinx Kintex Ultra Plus brand FPGAs--only.                                                              //
//                                                                                                                    //
// Furthermore, limited to the purposes of prototyping, evaluation, characterization and testing of implementations   //
// in a hard, custom or semi-custom ASIC, any university or institution of higher education may have their            //
// implementation of this IP produced for said limited purposes at any foundary of their choosing provided that such  //
// prototypes do not ever wind up in commercial circulation, with this license extending to such foundary and is in   //
// connection with said academic pursuit under the supervision of said university or institution of higher education. //
//                                                                                                                    //
// Any copying, distribution, customization, modification, or derivative work of this IP must include an exact copy   //
// of this license and original copyright notice at the very top of each source file and any derived netlist, and,    //
// in the case of binaries, a printed copy of this license and/or a text format copy in a separate file distributed   //
// with said netlists or binary files having the file name, "LICENSE.txt".  You, the licensee, also agree not to      //
// remove any copyright notices from any source file covered or distributed under this Limited Use Commercial License.//                               //
//                                                                                                                    //
// LICENSOR DOES NOT WARRANT OR GUARANTEE THAT YOUR USE OF THIS IP WILL NOT INFRINGE THE RIGHTS OF OTHERS OR          //
// THAT IT IS SUITABLE OR FIT FOR ANY PURPOSE AND THAT YOU, THE LICENSEE, AGREE TO HOLD LICENSOR HARMLESS FROM        //
// ANY CLAIM BROUGHT BY YOU OR ANY THIRD PARTY FOR YOUR SUCH USE.                                                     //
//                                                                                                                    //
// Licensor reserves all his rights, including, but in no way limited to, the right to change or modify the terms     //
// and conditions of this Limited Use Commercial License anytime without notice of any kind to anyone.                //
// By using this IP for any purpose, licensee agrees to all the terms and conditions set forth in this Limited Use    //
// Commercial License.                                                                                                //
//                                                                                                                    //
// This Limited Use Commercial License does not include the right to implement or commercially use this IP or any     //
// IP derived from this IP in any device other than Xilinx Kintex Ultra Plus brand FPGAs. If you would like to obtain //
// such a license, please contact Licensor.                                                                           //
//                                                                                                                    //
// Licensor can be contacted at:  SYMPL.gpu@gmail.com or Jerry.Harthcock@gmail.com                                    //
//                                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module bindec3(
    bin_in,
    dec_out
    );
input [3:0] bin_in;
output [3:0] dec_out;

reg [3:0] dec_out;

always @ (bin_in)
   case (bin_in)
     4'h0: dec_out = 4'h0;
     4'h1: dec_out = 4'h1;
     4'h2: dec_out = 4'h2;
     4'h3: dec_out = 4'h3;
     4'h4: dec_out = 4'h4;
     4'h5: dec_out = 4'h8;
     4'h6: dec_out = 4'h9;
     4'h7: dec_out = 4'hA;
     4'h8: dec_out = 4'hB;
     4'h9: dec_out = 4'hC;
  default: dec_out = 4'b0;
endcase

endmodule