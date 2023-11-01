// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov  1 14:08:58 2023
// Host        : LAPTOP-8JRJFL61 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jvask/OneDrive/Desktop/VIVADO/ip_block_2/hdmi_text_controller_1_0/src/blk_mem_gen_0_2/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.698 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1200" *) 
  (* C_READ_DEPTH_B = "1200" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1200" *) 
  (* C_WRITE_DEPTH_B = "1200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47632)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
