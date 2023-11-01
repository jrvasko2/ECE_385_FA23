// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov  1 14:00:54 2023
// Host        : LAPTOP-8JRJFL61 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jvask/OneDrive/Desktop/VIVADO/ip_block_2/hdmi_text_controller_1_0/src/blk_mem_gen_0_1/blk_mem_gen_0_sim_netlist.v
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
