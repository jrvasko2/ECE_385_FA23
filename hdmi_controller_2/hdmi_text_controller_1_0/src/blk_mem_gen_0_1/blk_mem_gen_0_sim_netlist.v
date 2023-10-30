// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Mon Oct 30 15:21:58 2023
// Host        : LAPTOP-2QLAU5K9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/18472/385_xilinx_files/ip_repo/hdmi_text_controller_1_0/src/blk_mem_gen_0_1/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [3:0]wea;
  wire [3:0]web;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9299 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_READ_DEPTH_A = "601" *) 
  (* C_READ_DEPTH_B = "601" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "601" *) 
  (* C_WRITE_DEPTH_B = "601" *) 
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
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Lg5F1Zfiau3QeByGU2d8iLyq6c0Ay54VBRkPDiennEnh7TDqlDHQ30ugh+dQhv2UbRSQ4p1Rw5u0
jZgZUZmy1Br6WeCfAfENro2z0tYpE6huap6VYu8VXMMViOdpLZhd3Joz8MWf9Vkpz9O8GsaXV6w1
FT3lzzRx4ZlWqSymP/Y=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k67ldAp8HxMr9nrczAiQCAT2rtecidPnBUTDua4bP0PhBLrvQbOxphm7BiFhkHdGPiDgK6MdINUG
D//GaYQsWWpVUpGZfs8KXRKikvei6OQ4trNDIgpYU9T+zsDYIrvScWpep4H0Kh3R+s45gq7RnJ5m
vdUnaWHtpnFw5f3ARp9akA4O1XBR1BgUKzTCIe0UPAGCpWS1hK4aBQcxKu2PkOA+tPNAh3UV3BiZ
vZru2ov5N6bbEX7XHtyrDx4JovVQLfEIY+57bKNfzEEYKSjLOo5b7ftblU7gLeFmR30a6dQOMMgx
KzeWIzCpQemUcnoi/VEHbHGDt4HRBpIGifDODg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
i+RRRWsjfOwMRpKMUFh0IBcShI8yHuzdR43aSUy7WlXp2lerQDV/hI6ANfHItxdA5uJrEIK5wJiU
VgB5oYlKbVJ1BvZbui5wQoJkmW7IbzfMYtuEI22QXBHs019oGwhANUpCO9BetK/0TTzFxVnHtNOu
/LHdKkMBA0VUUUKT6VU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tFYGPovVzEoIrKrjTzB6ZqQ6KnkrcjUP1OIG5V7ru9HH8w5P8AlgATXl1Xl3Dc0sTv5AhUl86uI/
Te6q6PxhMPJoRhRB1vXyGzAjrWjA4CWJdMmVu8MWo5zod7cvpkzdrQp18aQTcCDQwlU1DmNGiEOo
zimuLuAUKe6AyAorB43/1QRQQqCxNB7BHRnOJAQDnoyMFVNrG12rKOA/sAyZpMLD4B6xJ7gH7QXT
AZuGXKyILGNZ45qXUr2Hw1p0w3wXMgy/YvUW8HbaHN4jAYcIe/ECoyXyKCAWdzANlF2rT2PeCMqV
QEbigoyqGX27Rm4To5kqLVbmwgAs2ChKUhPckA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR8YLkP+Cq0MiT1XckSgPvE9wroyAiBbeHMaKlLiOTx7yegD3rCMk4uetnkA7xdOCG95C0Od5pVH
e2YrEW06xFSOsWdDnQqKOKFYhTwAs147Ze0j25zjomr5m7CmawjMolxykzS96zChWImangU+6Dpu
mE/MKg5/kaC+7gqdMqPmK5P2lIX+ouok9XKxOokJuqD87QwEzDlFFh/qV9pd923yFRNG1c5yQCAY
jC0bWlxJRQo6nbEwBgMn8rC/mMABPH8uD2sMe1yaJv5P7sFeOf3cmAdUGQBGVHRKdpZ59LnHTu1K
InNoIfz9Mx01CNUYdTBr3X0w6fmS/h2C4MO1mA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qqgM6XiDSmuIOj2QmFL4f6puTJICjYjWzQLoNxU1gzCcXd5+ng75tjwe5w6urE45Df59LYjXr90N
xoD+v0GnCLOppWUn4S+1ojqBqn0qMLsvms3D9/dYenWKxpbEiFxbArUoCPmld0c++8yPVQ73qapG
1gDmjbWJO8ByYC0/tiugtOK/vE3jYVzEtxehN3MCFPsHGsspvaF3CdRsMas3tebV/SuH2XSAP8j+
fZhSi0u301RRmZ6mSAEqJK3He0Y91Z5ZQOd80417UBeLHaQiA9kHY2RWaBMXWHjx36IJNuIr/7jr
pqPYRD+g+IOGSYqYr2U+oVSWF/J6FaLGEFORSw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SLY1z3pfrH+89d+aYr8ZYKuGi1pV2B4YTh8mk4uHOGs4LKQ1igmeyM9GJBaMAmt5JcC96WDDnBw4
nB1kIjnCrjVv02nSbiHz+gz/GD9SP86nLzS9QkwUHgiEudWJ/8Fkv+fRer0hLWhtpFMq+QCQAqbX
Dy+Em4RhLOM5CQyRCxiExuROQRkGjH1tQtyz+peAX147pqTEtR9LrFRYUYEPXhtD9b7MSp46zgf4
lSI4aGfqhp6fXq48O+If4NBHVZAh8gHdbneSQhe7VWYJyFRn5NXB16YXAJLa4JQatsMczE+AmO09
k2OEByw2UvUNKGEaf4tNqeBnQNu8yAJKmMaRpQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
rHgksH8uRTUXMqfrbR/KpR7K/BN7+l1GGoZ5uBkIVJQ9E1b2f3VZJPrQ7S7VUrJ9W3clOpFEhjAM
Oc8jJzlnUOrbHfYO51LCZ66FccJgE3OjLaM/OzA3c72JbMeF05jEDKf4QdMRaIQwV0vXvFMXFbcg
CD7AuUhMJ/GWQx0JJmueM8RLvNdUcIDBkWoZcPsRFynLr8IfIXTFpVIdlFrvWDV9M+csfXnQIq6k
Y3z8TRciA00/EiKvOp6Eo50/kD4QjKDFCqzWcw9vpMR1S+mAW8D3yQQ3Mw+7TRW5DTmB7qmmS/LD
xKznKyYDNP9KJ8z4NfSZgy9kCEKF/AEOrpIJqnNaoA6HXh9YFegFhy9SpTPldFTNyW6JDzyY5DW1
hVFcYJFPmlT/ZDM7HC/yiWmfTZamjNjr6j6r4fX5ptKg03NOZ6yoiMqKwnvLDnRIQe9/S7fEOqdV
LqZswQByjnvoCBsrGYw6cNNfz5CW00eecKgkExyDTb2F/xuv6oGtNaRS

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oDWKuMa0YoA/U/QPkQrlE/kjfj1li0yqCn8MeJ3rAm2Z/2YKghA9gsxWs8xB4fe/adKSQ4aHEt1i
tUAxBkQYlT8XiaSFJIAVhNmuXgiEPZ20R+VwppLUjekdT7PC18dHecsi59XlgVJPcddzakFIoqXD
rk8iU8PsQ4WRTiUl44mpMR93K+emGu1nkBJznWpM1pH3aBODRmMjU7IigwOfmOnDjrCzVULW4z7V
2AuUO8AJxPTXjBkt8QkS+Lo97MZG0bItGmjC+mkr0BAz/l2ADPjOsfpKHAN3Qk4Crlkhpfgt7XT0
5KHCyECHiPkWrJah55lp7roA13m4EgPMJeM69w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rabaiFoR9bIj5CFcJ70CIsYI2myG5mevbxKcSzOpgQHZ4FX874h3Mvv4oNhB5aIwoXefnyix4Pas
3xk2ZBOqreX1vuZUYS7Nk3rT6wqN+/JYXGO7E9xfmFF/iTdL9heWc8JHcLe4e6B8B9QYhGlkRIbN
3etlFTSqKlO5nfA6dKX6Cd+yV3PZZfJXT4jlaY1rpqMPaBtlHWQ7D4o1gO+mHgP0sOQ4bpowU+7Q
jMr0tYghyxsfIddTxrVE0fwZeg1qWlo+iSU1PAJGRVMKIAn7NZ4i8f+ed6NJKt2vGjDFfZXLXClO
nyA+xb6K3aWY3lMR6qP8qDkKAJJZe9Y36MRGng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpnCRmSw3bCoDXuz4ACuAPPPaMheVpOmUjnTbTAMOWU5UsZtyDXZeGV8/oIsADVazSxLQZSBGgiy
SKvVnFKfYB7AgQDUMZFw0rVRtHiVMwSzKWeKD6RAhsC0bPj9SvO7LAbMlPup0Bqp/B+25di0U3gR
HcJdPJAve7xMFNBSYWEA8qxoNxWNshmZSjI/bZ357HlFVPisa6jUUqfB1NL8is8ZUS6S+cNLQyEf
tij0AWwPrqG8naFrpTzHWE6VrXYG5oNftxQbYOQR6HjuL4cx/R64+btFaWdnBHup1adCO/sGxhdd
Dd1b6OQ/2YtZTyp2K8aDHbceCM5X1/8CZdRU5g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29024)
`pragma protect data_block
7al5PTOV44eUhEmzHQy+AEUNVirnQnP6OX2JYDPdgu2YFNUD12LQlwrjWZv/quYj/51+njjli6gY
nXLRloCV89qfYRxSt/PV6+kMtxUr8KVl8XJSkEwIMbF3qHjIxQ8kH93A01krijP7K0JqWl9oU1OA
nCwb52z/iG9kSXpQE5emA0mdCgKz1Mxnzlnaw7VUMOc7zxbXlgaKMsFAhakbc1Xxkpwb5CKiFpAl
0nBXdjUncJfM3tj/RemQbbK8qCxVIvHV2Hv8SQD5y5FEkSTkGNjLrbCp+OMyHe0tvfhwF9mUZ9oi
OdaKZCsyFb2lAhsXrN4/KO7+Dkgsg0aM+tMRLmP/BrDWrRVLXT5haKRPh369TadqvbzMMrq1Pj2O
OiWJuVnYmPIDbQjHl35HnofEBtybblhX/ya+n7co3AlGNKCBIQu3x1qtmK9Idc8JJjEs3es2J/Zq
QbQAKi8sXQ+VUnmLreRHqI8cWj7LUn7Rk2TjfBSEwKsobMwaHLIkDImqC1jyTZTEmEF65xjkUU1p
dMt4QI5i/8R/PFw0DC0PMzgLRVim+qo58iGgML/+8Zu6ehBCd7Ydg7mXM98vWraybhi3cA1odsRz
5y3+6E/sRKPGbOTg1yXz2HUygGVS5+1x4OplIBJ4k/Ee9IL66W6xpF3WWhaFH5LB24jv8ePsycce
BCn5SzXwSgIvAVF86+KoBBEWBzUS1kV+gnphSX/AmO50g/wIuYUx3OBTdXCzoId34llid73EiK+V
1ZcAFFhgm26lfrv0FZ26jPE5XTOUq08OCmEWIxRS1xHmspJvpcijNoGoCHNukR44jrg8e00vf0PH
vS0MJlx6Q7X47cNsQvyUIdmepygQZoKHnx/MMVLqjRhcKQCHMdc4DFV5RcoUQqVJlA/dvFb9Cbrc
S6B5ciRyrygKQ7ZGTGnbeaTbCYYVxnztPXMi+msnAaGt4UoYD1AJpp3qAyZYexPBMD1lmr24FJy0
drkenWSeJzASvGf4jNKcVlYZ5lWnydRPQm1gzssuvUEagoQ/OMI79o8cILi4jOuM8K7HUUi8kms0
tXI9syzdtV3YF9HU+PqlAhgOOCERwIy2lkDwmjd3mpsDMO23w9yL86F4nao8SFO49IwVnDNikK8d
lzNiveSchhtUSIlHbvnD8V4sbqL70+kpECljiSYQNn4LKtujxeiHgGwGIVnnApZn4xYPE72KTac1
YXLIDF4uWWSJAZMh9lI7+GAXAYYh6v/Tm8dIYmpelnt4P2qTI/3RJS/meRcL+xbjbgQBjlVT6E48
j97Xh6jS4qhplK/NKS3EcZ+Ch1IYDzze/J551tFGdseeycimHrZQy6CxvV1k0w+S8DawR+qDnO8B
k6ZLiTrxgkVpiWgFhtEc/2GFf6JrxKwnRWPNpuP70pqPEY9pn8AcXMcksHxvMQ1nw9Ehd1kbyo3j
iTXs3TbCGYa0XwWpwpouKQ3CTg6lOgQpbZ5JHKp/+LkjuO7wff0OfjX63mRblYhHzlXYZq0k3C1R
SSjgoH96y9dOO7Ot9hV7FfpGHkeofvdmSQzwFlSHaZswgr8eWr6AGY7gIjYjhTfT9t4kv0ob5ZY8
I6/wZN6s9gUVYEUC5bHFbY+HxweUR6BMe4D6nKpH511PiYSCW/L7O0T9aIB6MiiqAZZNG5e9/In7
nvYNIlamE0WA3hUxBeWB+mHEYETUkyoDeZ3j7E5gTaWGmQAx0uB4Im7igyvwELAzTW9LoN/GMyvv
dqMhzqMLrUvVNDGMqjBKUhzA8CUFEvMgNkXZRQwPcD7+nrDEayoYCmB+e6wrcOTr/bA2tiIRxtDj
P++eOD9H2z4gjGNAanSZGfgdW5AXvUMTKWiRMVNMT6jxxNmya3xLpjh1vFKRPQz3Aw0KuxiRrX2Z
3pxFsT+aZ8lkBLL4K+w2FOcoDDKGnnm/F0pSx/J4T1QPKiDCoQt2A8L0bHebrfbtzvF7Xs6SgKal
Rc1528wWc5cBNOCvEzeAArejDG+xbZchEvKtLn7+adLer/MU2kX/ng+MYF5iMpA3sDKvCJY5E14h
nM8PlCQRp5AHLYf/19t4XcnjVfrb1bN1wt2N0/KFPUAinHLWbxrMHVrXM6kfB2jA2Vx4IuFcdZ4v
93AlCmkMGC6Ue2kenWxgaMKvyqRjZYPB13RsVnaGrBUiCXM1MTA7xiKybXWAL/hcggYoR4BYwNqL
HVuhTLpa4AX0gPM+GDJaHOqNtdu1T6AwtKAjEtv0dzCgW+YmC3gBjfKzZd9A+imV4DCrmIqV7raQ
3GGbUk1DcvVm2fJbGq/FtBoZU2z0ZgNiYpGU8yEPGTDIz16cg7CAYT4mLxGNn786t9d9E4XNEM8H
2OJ18olECDzghmYqCKTmrdZFJqyFTylA2i6CSJOXONuUSozuRhxhhTz69gYb34CX8Qm6sxAyHcCb
/1wxLX45OMoIoLtbFYfD/5exNquM8M/kZtimHOQPsm+nfrEaa8ugHfgSX2GVDnMPjyeGaZahuV3+
5rTKwSWaTmaovXz+e1AddIOuOy6YOEBgJKEqyJsnJzIX+CC57w0Np8mJXtN3Ex0vAmk24fBXbsoo
jsdygxWLT0F6CJ7k7X3Du6L4bW13P70gtL6WjjsDk2W29NsqyzMMoTRwTyfkwMANPqdCoN2t6SWy
LsyKw2DPpgyXF/ODezLQZeu3cp3OfUlKpkiS6bnDRVx7hKhvt8/pPjneHT0yvNrDjZ91tjYXUJtS
PVhPSZ947vAeeAUov4r+MEc5QLh9G3KEXUJBOT0smKupG8rqCC0tDvOIRFHOU+xdokdpNaEYc0h7
A45OxjsjzGk8uA/Ey75PVLFW1G63vmOFZauErW/zA8XnkU2kUaPpQWdxHNgyNMjLSl2e5zz+6KOI
zbQ+zePMPOuwY24EVdrWduMbn6d34z4DhDp/Foj2jWPnRnNjNeV2ymrmFIBVjUz2Yp/Zkhpe3r54
VhY9j94dG3XCvvKzI7lv25STpsimwMb+4WT4MN849TjUvr0GXnoes+vQFlVxJcDkF1cOifvXOgvk
csVP7nPzbNH2HkcOifOwgAp8YjTCLOvz2Y3HsRcW7N5SoZBMrG6zmW47p24zDwcY47n6n1By6GLd
n2Sy2YbMJW5zwX8hKlgazSagMWqHO0h9ZDvXHTVrMsAZxbQlTSA90JrGkxhf6RdvLHeMCiVMIk9x
aFIXv9CujROm2aKEWB1hHU5iihFq7tt5QZOPyg8oLCb00/8FDQpNZgXfMPNbJIcPIDLg+gjVW1P1
zSRuxsLh0PwMgyuOqkBkvl29kBt2ItFGvCxKc2iXxYsguvOnjq3hGs90RevP9xKw2KwCy1GFDX28
/hplMBzx8t3wBw8EnAGP0wuvLyzxncwecvZNmC6rle436bmkNEX6of5sdkPUdkud8NmZ4cLJbl5r
XR3Z1kvnr33to40x5hf8vspaUc5gFc5Dy+tDtB/0FsjHq2ric2TOQaQ1kYN/7U7AeibMho0S+toE
vx9AcUyih/FMclgHqxMB40o5UQRtjHhXqNKC6m3We649GK50Jrl0/uoyww76Du6WpoFeeMRfizGM
wUgdysQcK/3HIRfmmUu0kqi4TT24HBdvoBgqR38+gom7bUgKDnuinHB831WvHcUA0gs3LAAFCD8n
hVXUGAsgAphtjajrmsiQ12U2xEXO4LOm0OXY2KM1H0xBrE4txTyplisVKemGx8SkAsj/5R9vz1Zb
NA4XonjOCvpytYrGEimnbnsQY38RrUwsq7sdWZGvmAf2/kvIk3AFsCHOkfhoT2tE1qdSLQNutM+y
MRljhOlOG4glmF9N8SrPAfbfZpwsUpYLOdoke0i4p6UOKsFqDatRuoQXfyizqRtD0lxEmyHfyN45
T8JCFtUGOIx2T31Y09YjCPBTEbE2jcEvA24OkaX2kOgndm31JWNYPYrkZsjqGElloRbf2kA08IdD
ApnbZsKo5m7YK3fhWagRijjYglqnyKQgzQstYpzfhDOopjeIy7jOG5uafUZ4fWysv0ORSiMFsARQ
Av0KbbHnfHHDCZp7+A6CLPjY2kH5uTCs5Zk3wHuvQNYKNbiYV46VgtEYF22W7ozfWy6oNu12IUal
w928Q6e0JrkYNBPMDgwe5/RM0M0V8gE+VPGky/se2JnUbEV8i4AwYjwsMzt5fw43v6oachgDMP8N
rMfOM/R/ZSGPBZXDPYYotXb2DG03xgt1ZQ+Km0+9mwfzW069EFYutd+PJ8r7If0xE687TeN/lBVK
lJIEZ1g/gutytfaJz2wXY2+ziEGX+TSHSUH+B9Xd/7P2GW0a8MwEsOjoWZhTsWss9HczM6obnso7
T2/w3CMTnu3qhn1YCUu5U9YONtbyt9FPhY1vAPBuDA4/g5JRNQX6Kif0t/XokE2NIbWIMjbPhxxX
CCWCgqzOowcSPoxp9VqQ6LbPzsplIK2hhraFeho2yNfr55Um+u3VV6OD8ke3XBOW5sHZstaVwdCB
0K9qnWtkyVoNl7ZYP5RCi+kRtqxqFSIjcQ/9qtlszAoZTdFvmZZPCQzxS3CpHuN7YT00euq89ytf
txjdBpje7DRpG9EzXY+fDghQTm9Lua4OEJNPKhDPS5ciacJB0vgB/bDikX2BUeJ25G8aXDydkEPI
mkBEomiH3cwQKdpygpHf4rlrDTmicHYCujxvxYGRuO1I7wlcB2MjkMTl00vY8Su8kp7uErI4P7Hw
kQ6I6KyISmqyEttaCT+rlktR7++3K4Xs86W+maZ1ss41/+QAXriU5XsSWJMljRkhiMzMY4Qijlsr
bW6/UdczqCe1Gd2teNzJyAq6sls+1gPPc4F8tfFPRFTG2AuS1zDmTLdyoXIHTrfp3kXBaf17BCLV
VjxQvG7aqnzFI+8zHpU8PR+Evi3V5Q+UUnAJJm3UHg7PXTcW0iRkKugWIdAILJXkZ0g+s1UMugPl
hrlueIEChpYYVLN+VEEml1cU2cz7qckiWaLvJJLbT0uNP//7iewQeNeuX4G+K49JJuP/qL44ftrv
ExfKKywuE7DWd26z9U5imrNflv2FPjtZ/H+9nIc6p3RjRBdUWDJVolfTR8x2WvIYvqLaQQtYJy8d
hhNG1pJry63vg6Y4eRxZx6Iq3Tzn8RnyUamQnrpO5VOiDAaVzyD++OceTMygEIRtGB8tZY8RBMtR
SBXUEAc0ppi4F77cft2Uxhk8n79iPjAEkw4Mgj37MCuMmMzhkbl7p7gLhwvJtNbiNcx3YDR9+x+I
riF8OO2EilhkdU9vksd9Aea5uBvoeunSoOkryIw/OfUnkkt3cxfjRsaRi2e62WZLLBiBtgH6mHn6
9tzeIo2LcnmsdzpL0uPYVmYrrcK7HLzbx2YeA4KzEHtSVl1RoT30M50cNbn1YztNGIbd+ORdF3of
EMvNsHrxorAIL1GniW65i1mQ8F71vKbZ0SPmw9E+GImBNOavbACUIEolUcEii/ToS5Q41Idufix1
CRl+LRjduRzOkuYQJS4i5kYSdD6Emlg71tObgm6hhIxHeBHIJO+qsCRrU491jQsAKyXht+EQOeB2
8IkxC9p3cderY8TNrH/fnq2SfVEHiWVdYN+NJXudOaFBEHlqQjhj+HagnT1d8R2JAXOtxG3oVwJs
QObxAhYNdbNsTSUOMsTGgRwZmNOs9acw962ItEoGAWpHttpU8B1DUhxs+x7+G0cX3C4Ogs9c5+JL
3tTLMTgpSYFKi3c8bk3nP35/ccDILL5ZTIo3jMd/oa3aVgEhhblnYzWklTWzCsDxB6e20R0eDzyT
gO7AdvdqkOB5K77NB5NtOjh4aVQ+ionVUTJq2CcpEfjTQyau3quvxhlxeIGHSHm5om9316XmX3Si
tVerQBScXkRJWG9sUeZHRms0n2AkF5BwGuVB92MewVRTXvybdW7nm8aaa+/1nnGTHRGnUMHrxoBJ
Euc/JxJ+JmQjNmJzo9L1zfcfaCFA2WqqcybZ6vmt9YR2T97hQEKtJdTjBAZKXIZdKUCvS9fscZZE
7JPFT3o87vVLm+fX/0EbGsYxRRE5pcG0q8g33XTaDTr1BRPEHhruCUFMs9TR/lhJRNa6VllWUGRR
B4VNJ1WlQQ4hXO4R7DQjHjitHrxl3MSgPnphph2zFCxiBkLy9POcGyZ/4NBAQ1s8q2G9KSVYv0aL
YXhrl/i+VM3Xe5UG3kZndw9wnonb+HDYnyl51D3vziGt0LDdwRw0EiVjWOaeQO2HO/jW9A8EvBRJ
egj4dsDV7QO1o9gtoJVfmXCx5RUdqFXMouNNZL8VRyLQpX5ddubvvjIOjsDvx51LizxXHI73wYY+
nwcDXLCHZpNq69hM+ZFF0no8+NJuTZotsIEe0oOD7Rk0JJEtJ2XRV4V1LhMDyzaPw/5AuIjdIKBH
2iTdcbfHMkDQh/uY6YTfgvXGyCw8hqR4tg0tRmOogUwUi4xgXCZD9AMRuLJH5QDo4KbJ6J4f4nzO
M/AUV1sD1K/nlgquhorTh/Ml4u01SzSJCMLTN0bP9JJzyqLNc4YkLtUL+vJZJ/Okcmn00tBEIw/W
zkL7IEWmvvZfayAiXhB0qq44MYqtwb1OQajHD7hrva2aG4O3fG80jKSJlGXYNWpCK+9I4KTXGxsh
7799gddRNZDyLqSPDnRFHL1ebZ0vlITNfSrRnkXbycqhjx9oz0/BLhsE4beVTr6Bua18+hPoUW3r
r40NxQwx0dL6EaDJey6Az/d2T4yYsKi3YYTNSXixSZ+kHBJhK5JJv5H3cktRbTgAW5QuH/ysvk+b
F/mbywc5j2kw7DwepIKmvzUvvDWZ1p7l/wpe3kKXh/XDye5ev/4rJZ3drV8xKTWcDz0ppD6olDQb
RwEvhjB0RDp4FLLRfQoXzAgjZUvjWym875XZwjb4Uo6DfAUyrLSnYjCspR0CK+2U+v+190i7Nh3t
wlNGT2k+ep5Wvv0miMqShYzvnafzDrodQpi9RsGscPPnqVpnfFXdQStQ1XnbFKRsKwU8gOEJiYpI
0Xz0/7rvy8BffeaB/+vhCMkiY0dSxABUCQ7/d2Tx8NlS/s2Y4b/xCsk1B6jnRctDk2/Sw+0yZwnK
DBjezVKMoTalKlmUzGswiHre0hxv1fN+1Fwuw7q1Dt3JNyDrBHCgWs2sG4rqrqnjZAJPfh3dLTjb
UonFUYdNMUI0nbcVVxgkvzL68+1fHRGaQhFO55cO1Q9aUqQ+BZXALuTSr/MyW7PVSFQiRprDJ3xE
xeozNVU8eX3ezBOXT6Jn3oQL1Ix1AY8TmNGaWg4yvincLPy4b3fAo4BDyRHoNF68yI+/wIIIjdAy
NxATUROt7Q4+Ddu5DlyVrUP6fOc5snHWAmY5digekUsOj64Ro51RMulC0O1JxfhXHhy6H6nymSj/
6OzjFxPXKEVElKG3k50uEKnlbGUM80ia8cfcBHWZ204E7V+hZeY7IrP3ezD05WOS9iUxRk26er8f
B7xVo1pIiYnhbQeolAeWfb+vTHoMMTMRq3VqZNYsUuQG8BGUdCpP+oCujhw4YGmJi1+DwmQ8MnfT
kzPhF5M/LPEY3l9VkMiFVA0KvU7uTrqbFnkPGy4NAlw+s8tVJjMrFwBfCsDvHFBjYlf576QS5R+L
cMlQEEqu+3V7QMdBAwmfujCjl++1bcp8kslvxlWMbtREr78GofPhPuh5ka5sFbnPeKMpTcF7Mv9G
KO3g4rC5ix0DZXynws4wVrFVxSrlzlgyK4LoYQ7lOwxmiIrO1AUYYuJbkftq/mTzZjQ8i4nOnpJA
aLLKjeK6HFyG6qn8TwGodWB9YFqbISSWxs4ywJU6j4hLA8ZrMVBwHlsxKwbVA/XFYvokdGt101HB
UVRhOx4XXc9i762Aq/c2qFULYK7mFj4ZjAXb/OHAmQcg5nUkC6NNg883Ny4r1L6Xd78TxDCNJPtW
oKotNIUANDZtipwUuLR30ztn0VsOAHJaDIiQvQ6gW42O8HCln274eI6IIS2RVtntQdFscB7kMdvG
as42QZQz3CyraCsdu3AIpzss5x6ASEEidvfjWGnrJ/MVxNlUa2B5cpXQvnib8wdwQ84DO7Xs6XII
EVfb1WFdz0kVnO3JpPAOI2TknZZmtqljFgZxn5Yc22F7l0hZ0/l6/0VTd1i4oAXp3E7lDi404d0L
ww/GfW5diU0Wl4TSqwY6WwdFcntCsK1iY9f6jD3WDOMcinTZ+BT2Fhi6Mi4oz8srXT7htf7sqHmf
HFj1QnnGyJkkJiUbvCxU1aQc6ORAnvexdWcm9OxiRGFe+Q8dm42ORaF0Ip/3f3O5+yRgwp75p+Ns
HmgUUlsgpJehmrVHH349L2xedxUSFvm9gONcDlxQV+6rJ922uWcSQvZbgwSJV/yGZn9mYaMzEwpj
GZuOjdsRTjOwaMHVWALc7eSd6ZMM/cYPXTqSShBrx0lcZBlFYyDtNOlTafFr0eNJsS0rC/0+G4f+
UPmLav7Dejx4knggMUOvhW1kvOIp0Q9NZSm0HWzog32uE/TZDGB+5bmAT3yNuePHt30e5bns+ONf
ws5lYf8TGdygP+4ncPc5BQsgb+meu+RphBivXTqbfAh6R0S0ywwAPFUiUs1E9Puw4MV1YXb1s/GD
Q6LT/hoEK9xDGtCsn57xWhY4eVH9QKnXveJueQBC4ELmnYuzBEhX8CW8+o4skDyJlH4bGam2xHOI
2jljGcF5i+XaCxp+1UbQINunnHvdnMQ9lj20F0bWbrYiAzg/JY+HRmCStdBO6EgSdk8tDsYXh2QE
Mi4e54PuCg6z16H7J5dNdN0x2htxTBzpBRLm1vXzjdVs/eGhmE7LtvJks23nAXWKba/fiOe/yTN7
33v8VcGTtprVxNasA31KJoUVBPpYQx4p6jmD0dzDU/3K7kYj48d6jgryyKgg9/YsIX97Qyk7redn
z9SQK0q1wnWTKjlGWlyNO3e39vhBC4XM+LMcoFRONMdtMWbZbEAHX1jPDPJQatmWMO4DzbswqBJ6
OO97MTNo7Li3QDFUorhpKUGtZs5lY5434J0E9yWrItEJns/TzOHcak2HM7dhQm9UCE7YYvEfL9S1
ivAVb74aYDEDyMLYxKRfg56S8CvhLJbqAWtvuNacwhPtwY4Dg2KXoKCUIdzdCDTTuo5+beh9okZu
iv9MQnfX21Wv7SKJWy7jC05kBm7HxwUrwn3xWO8yoHOZoA7fvGkCRiF2/Lt6IAJqvtTqa5JS+KWp
K8/Z5UuNRP39psdPSRMNlCKgsfxXU4hfKF2W6yLkTZwFIOaNOucLXlqRtCo1n2iRcTa0V2DhLA0Y
cjhCFUQTsYJg8JtuWypcaHSGLj5PAc9E1NzDobOfKiTRfYHCAY0h36PQiCBl+6D5h2DRw6myJ6Kh
ByOs1s/bfM92q8PGsK+cw39ORy/BcisoAKNjj+9ytdHMAiJOb08G8616hr7oe3CHjahxdXAZ6SF9
oIcxetbKVldiUiSkCdRePbW/YV9Tn8CCDL26Y+gCSqUn7l684xpast2Dy4WRNrERqOuRwnYX/C5u
Nd2DJKjaXkaGSgLTvCTQf/mjNT4PZNJMyah3tFYpH6+bOBM9pDUow8yhq5NdVgGkNhE37ZU4v6TH
uXBRRA+zO/C3sRQ5H+L73+wFgAgRd3RooD24odcUiQxCLUc+JtC3fb/paD0nDpheNrcoAH3IpxIy
GtS/3prUn9G/5cX3ae+g4fP7+ghCdJHew1LagRIO5PknSZuLMdqvUTj3HXZlX5aNpEx6wtEE6WYu
VTvAFoiyou2z8JXVb4Ny9l9ag/+hwSMJjTr1Fn6VlcY6gL6m9iZ6bM8hl2umuNJJptB/9AgcRDei
lKzzNwWnlJ5Qk7iL48kStVjLL/kz7Kga/Bdvm+fYZtWMKXba626DAfgyWnqfEORKMUGniyU1Toq9
Vk0dYVko/IFxB64QdSGUIhyBZ8EMdna1MjNTf+k7i7EEiEgMy4YrX4BtdO8gkVIMP9mqdJ3A0hKv
Ia76vh6Kf0hXcYNPGgrBr05B3y+KmRlpDg69Vos2POquvX8fokSUtxs62OvZdlSmRH+eh7LdNcAR
tFiRY54JxeEj1QgW1VUJAdrWak4AoGm+ciEqkBL4jDICrPob+kpb2B1QlwwlsqC0Mb+xA523JvgP
5G3BPeO2Mre1efJb/bt8Km8FuvBikRcgfj+Xz0+aTrYMG7GJ9y+cvYmTxKUnF1ji+r5KS2bDfnvM
k6AmB62xUwpxvJYKU5tsFKVu1Wk1vFLA1Op8lnv9V9KejR3dTA9x0Ojg2XErGTL8rwDW2l+CKwmf
HzfBsPpAITvJPVyBGI/QiA3QPIXOt1O1LI0nRUqPCAomp/O21/s1ADnDUsUD7yAWdBLsnPl/pro9
nD9WGp4NIg0OTsgBHc6BPFt8K17IKaDfcA4L+FwcdKBMj7RmicOQ0LXfRmf8tZ7c6XUkLos72dLG
PZA49fPVeneto9bsE3tV2sybUMyWbPcsXV2ck6TiWfTvMxx1LIGC8KBO3BcqOYjKRAEssI/DcXxy
pbt2SsnLzhcW1oXpG2llDCFyufOHSrwc58uUufbR04v8spJZkEqzrVD/6lFnJ+XjDaobkTqHBIg7
nPNksQBFOP1q2EF30uW8UFuXRPJKwdS9gHeQWSbh2esmuVPdNcGX7LT+ETEP7sqXXLN2JahqNXze
QHhIO1+j7hcCxikb9Xzu1E9gCZYJ2iMZB5AxX5DMocBbEV0PUkEgClMFRgXjbGV3QXGvHUMTh9Bb
yHWgJ3TChyRuA2jKyF9mfa/WvYH/uh+q1a9Tb8KU4ahtenYRch+kzElfkMjH1brLq9kdmBOPP8ix
hM+ylbmoXqnOg27q+lT1POdER/2f5w3aQcXkIgUH0tuPXGs9poT/bCwACpCCD7kGjTB1M/i41f24
oLldVkr4rxpSbO0Nj6Tt5voUozhw5RPLPnOxT8ALVhv8J6x7A38lkFgR0CID5T+CW0f53XODLdO6
H1ssWa1PfAIOqi6v7fPA08qoTnSAqc+IgHxkmbkImMqdP8/MHW+a9nIpjmoyvAI58lRUG1cUZloT
WFLEKOd1x/b7WXbVJhDyzJZ362OAC96AKhqGEx931KTpninpyHOIdZeqhRas0Orf3ld750bisuPH
TD2FJKFffiz8xav0VB+v2Y7Vs3MHaC+yd9CEZlPICa2lApBD3DOrHjT+LIzJ4zGjloa4BF+XrPsK
0BfGEHDf3oS0wQ4ClNnbt6JeHQ0SRmvfTHP2wOdyk+txI3HpcNqAdAhnipIPXiD2iU5VItD7hB/R
uQY2y3sNjFG9tBYYDE4FN756aSRSxYYxFlrieKeKgh4uhU3GsUEAo2xy2tvkUvbRhTeuJ8gTNXOZ
rnDZC79pZzXy6RHCAq8jlYaOsqPzpJLogitcKmT1OTipKRxogzrwyDi2Owqdrsod6JkAFoRHy5xm
9ZAytNOlfwC8Z/1aOCCWhsGO743Ppi6LJ2TAZDjMm8rNsFBM+J88R7R/Qgf0QxNHv2NPQgHVukU1
YLiEr480wYCFqo6NXPYFPL4zedPezwD9EDHs3HBYhjj37Rtozk8kJuYCz1ORWWPQ92TXPm3meqTt
1UsYVvq730dKWJHBEwhpCiqZPcvKb4GouakDD5PwEaKx1T2+na75MtYanhZWOtMPE+rZkAkrfXzj
w7O9W9JqAyBsGWgDOd6mhfhLIwhhdL8yMWCyjiWISgMnqNEBRw+MJla6TjorSQiU3XbwUgHlkhuV
zhfy7R3PG78kdJpJG01G5RjUFyAvY+Dsp5f3dep9hdWB8nuXc4zBx35DCFgqWlbflY/NciKDw22R
OK40Rs1RIqh7HcFyiJgH0PTuHxoZVeRZZBx9X6oo7TMaYGS1vT01hUFqBkNmYB95HxmP6d47XM4D
eZN+JayVxcClgRVd6ucgBujH4tlw/G+Tnuj5Z3nN25vFBNJ8delPIYUFwqu/C9jBUFTCkTZv3YxU
8gkKjPMgHMifjB2p4fwBLvq6wt5D3EMF4TSsNG0+eGw3/OMqgAJq9RmKv2YeKrt9mNT5BaB8T/mU
fdjF9mMOjtxk4GrwbiN64n3MrgeL+B3UMEETL2bKKbMGX/LALxHcPv+pppHthzmeD0bupq8vAJYy
FjtLvKP48/ZhPFRDfPaGJ3Ecetql8wAIc8FQmF5v3gVi4vfsnCcqkG8YYiIAMDlk+WqXJGFR2HLH
ZVKfez8pgm/6hkv/6zMPVFNpdMMHuBvNiDtTZhAyy2VCAW9FeBAt7ALnDb6xs6DCR60gKVUL2oHw
tGe6ErwBqcOYR2iV8j7EVbiAJpVt6x2SLCWqfb1kcA98kogS326HXQDGz9P45fCXvqHWSFssI6Gt
6y+/Cw/2EFN+u1qFAoSr46jToiY5kfALeLgF2TktDisUPft6HK/m6K+wPkkZZkmzCWPGOWbIiKGS
Mr88+KoTpmbUUIboAgQt+WSop1J1zRIstUgGkD4IxBLTaQ2Og3W4rcu3orpyX0gPT3+GpvLG99ll
49d4AvtdD+gnrD6YqpSnJDhzn80B86TOfnKot8eiOsOcfUVbnQEUO0CVYykFVcRnG5Pi0xAewMzG
EE9AnzAVmyCfJxtqDfprp7Vj8Dq0cL5o9TeEb5s42MZsTWINPGcTIEoHdCrJC5EeodlrxT8vA0i9
T600YWQW6sYlOnwo41DNYr/P7PTlxHWo7cpO10vV0lcuxQtJT+8k/aDPxR/N3fQcxSN190RFJVjl
vvFO9Wn7hsYycPZDPGopJctb1V3Wz1o98tFsbuwcyYUCUo14JjCG7/qaMU45+Nv3AZbICswr37wv
xcGLWdO7E7UByOtAK+uCBE5+L2fImXAfT7vorz4I//uqrgdOuYSHROMrWndof6k80BQvO7hVdQIt
FH2biEOoknkhYdMBiFXoSUk7dcsUh2TestHASFBvHra7dOGytRxzVMY2lk2Ba+GBPRbw6riaoD5Y
7fQIYqqiL3GsAcSmgsD+skJjIf4u9pMyAkmSk8baaPG3EsNNUIr19FERlxtzMbtLBmIvE2fYOxfo
L/FQ2ATKAlTaNjjCZzEI9aDRQBkVcZjd7aNYRKObjPY7Ud033YBhCDmRsbvbWOJRaTppovgCsxjp
37f1aFjTZjxE8l1YuIRCHsKxJRU+F55caosKDEV8VpkND5k0VBDBFKcRbnNq2EX2pdtJXA5ebpi+
6lYmbyby2H01J5Q7bibiB2rUsNzIhzkXj4JHQfPERmUn1AEiJ/zTaWaXMOzCUdyiKss3B8GTZ8sU
OZ2gZoOXUHTW8M1Kt0a++0L1R9P9SsYYlAW/u4w6vraERz2GuPfQNIbc2Wg7/BL2JArG0g/N0Q7x
Vs36xDym6k7Yhu1qxgkvAB5TD0wGINjvTc/d6jLI5F4pWkmP99z+S4o49J41pcZHIdDJ9atl+Ja4
XZ3ZZi+uCFe1UwXJML9Mlp4+J55m0vhYVmj1LmVl+xiaT7VZ/c8c2I01gqXzRAZgoKx79fJzxtdu
sBefXRDTw628TKh1/o3I0n4e1QePY/wMM2cYgYpcyUtU0CBpaFhMKaUcjjKcgRCvyvUl+4fwcgvC
kmgcKK/H3DOpGTnQsWQEWBB5AXzZH7E8KiLySE6+D5p/qiDJS1NO+d2trniTyhr351OtTcLoqJff
+HJTh3o0FxvWOoI6paCRkNveAr6P0688BhnRK5cs+TzuCQ580+/YL3ZYslUHb4wg/N8Ov4reumZf
eA979pbOW9BnheUofug34Qk3REpJ0UqwvpUsO+FVKKF1AsV/2qTpJLd7mA/7gJEsbKeF3frajhCT
Rm4o17FOVIfOb8V70SzJWYBPxonVrDgYiEewkvoIiE+whd8euFL7QLJ7L2oBr0z7QbBT/JvuaZBb
IvYS2S4ncIKaIglH7J9jdNk49xV29l3tS50OOxrGBGcneKLjxp+nzbiUnFdoPL32qHD1BDOQnOXS
jgqafkh0C+VY4fXBN+auqXxB8BLBWt89WRoULbOcY048gp1hJISSA2krSFN5K/y0zsQBPFjVIoXx
X6wnT7yPul1aPxJ3av1jk5yQPce/gLAhXeKLDYZYdFZKlpplvli1vaS+B9Y21CDs2BfthlMJil4d
xmYsCEkEBVTR4O7tYoA0Gt3svp9k7Io77dc3ubInUo1Sm6rIot/yoYxdNy/AH7mGGggNgfXBCkw2
dQCBUlb6xFrAzaTYm6lD8Kzy5swpouo2K0Onnk3a/O+HhsfZlHHV20mOsmZDS/6HhjylYn4tRJ9K
8U9ejOEoN+ob+P9UWHQtVk1CvjPVh1gjFmMyLEt8e5tnbQAC+R0dr79tyt9g1d9egbcMk8wB6SRX
6bbygorgn1heUY2z7MzRvD3hqf5aAMxg8BSBBGDjb2zLmIMmH7AZG+TsaD6/MrzzIgRMA+Paj0+H
teLVg83K39u7gvsdTGp4U16EmR7tpR83vLOW1+hHE1tuJE4cnAykmYLKDp8eExgzEQzp2kidtGit
Dzda3789232qOODKHxNqswDfKeE5gkf8YXGbgCRj2errvf3BzBROSIfwP8bmfpDrgvXeblLG7bCe
VcsnhVuDzIQeFx2pHyHSw5+L5xccQsGYfg52pLUtIrFVjADKzP184cVfz9nMz7PBh71Nu3RJ+JZG
iHaO+TYGJxXdmsWAvM+xXuxkXQr/lPaRZsR+rsjqBb4WKSwkZxqxRCI+/BIenRwWygxtUWU8bTvo
I18FKzeRtSduSSWJmsAsSMmS6okbK3At0GRMqEdxsWWLig9XaMjvVx5b6H3tpxGDMhasspgvRgER
cfsbuXXtGjjbc0zZgk8mJk16SQqIc//korFueHaLY5Ew9j477E7U4lpL1nBQUZ8VPW8wFk0SqBG3
aTFjhA5Lv2gWJ4pkJy6U//2vbY5c+T2hAoaB/TKG/O4Xk5kAW9uelQRCqWO/XI2YZ04HYcldzM4a
SlMh6vToeo9tdVpbneZ1mDnfJ/HHM5QUIfXNURtDqrswDC30r77FBFLHd/hb1Hd9M5HcpMT/UkCb
XMeaZlsSO6nRRk5SnwrWwQjO+cmKVZ4dtDPG/5e4VB3qpF6xehjizzUnVsFQkhdJvmgZBY2Q1DO7
Hvyk0RkM8TX14C1uqLFbpEC3TPhdO2kdpLea1/CVlP5zYFhL+uAoiMJF0w2zALjhxbmmQKi6w/J5
orSkzDILFm7SPOYUCBFY/GLhmZo4JDE4sWLY3aUmI5OqsFGpUPxJC9YyUDIdkO4Z1wuACBQDt4SG
nBwvYR/LaBpnDLdIQrxcwTXI0jw35Xet9bEdaDyIM//gGkJutvUMaB9EwJdWRpguk+UhtmVEkfI8
hQqo/aVdi5JBkG72c6bqp82oQPGtW873H17RZ3Ib4B+aFiTtNxCedt4LXaBD/k2aiFB6rpO15aTl
b3gOH5JNEmNqpv5U6l3M+ogASaP4aQNBw5/v5IPi++3ueKm9kAwHkOccT1IMLLruyIaQ71vgsLWE
QWwsRWd7IcaJlVme/3dn3kpPiIRqDngnYPjdQUIsfIYNMSvKRIaYrQBedmWOQWLyeTGqmEmtzyhP
4KmBmxlyZuzgAdob9Sb5ykU1mEGPjvp/59D8o9Qism4ywCfozx3SIhMzIRGgfZzmPwagQJ4o11Fl
j8VteW9pKA2N9hRPFb0p1EX9Sv47nQDX3SfVLzz4NC8m2k7VRgSwPyQq89Q011+oLLiaO7HoQI37
1iTLnWl6F6qaribXQ5rXRhD6Y7QOkTjYaIVRNbifLkVAqIQLeYKzL86ep8INdEkHn8g95uLA7B5h
on0zTtdOsB+FA6gIrjxxjS2loCFMhHFv6vh9UWiN20SbmID4TRyr5H2ZBiwpn6T98ZkoOyO/zPVm
5XS6ZZmwum3gjbNNXHFMNQXMnYNSdZr8O1pWVbm5uZbtLmtpQ/QRmrEwSjzjPbRmYLmuQ5Rq+HH4
hs34TtUX5E6pbceaVWz1PX7Vx7X+XJPhnN17RHbLWgYD5PAUCRGsMAjd2yL1KZFJe44MckpwnzXH
eFdYRZAajUoPu3g4WM9rBn7DJr4Ba2OTUTP3E3UDUCbGimX0Nvcm9Vr3P3VaHX65MmnsLc7VCzLA
xMeBPufZqXu6OS6fMrhcbb9dvN+rb1qf8GQ1X6JyRVB16SQ34O2ZAoVr2DFxD1afn6xGTq3tpliW
1kOvRQGOxkNrFmLoRBeSLYb2h/wR+VXTAjW41lfI9eWScbROEnhGnJgwVHe9AjcO72/DPCx7+fzp
Jcw/q2vqJRJvQYJcHueswCOifkI+Zgl0ARaCwOq9LUNNmNkeY77VnK9yk8NB8SaaMrJ3+xXMTLyb
86BUQsJf8CV/dZferto4zLFFVc00oCGrgzUPE0JxmgATjCneiB1bYlcxZU0k9vuPpzlBKR2YT05E
QW3pOlehTWXbJEm+tlaP/4A8AuLJyObKzpLAxtZumOU56hlGDS842nEfgZs1trMuoFUJzXZjoWgG
yw+m6p6iEuwQ9EM4FCc2cZ6aNWEJ8yQfrELdF8haQMrZhG6DRmywpz98XtIxVton1JrtGsjtZ3vj
2X+iFsbuiBNWF7l3db/a2VDSfDwKf8OAfni9dY7IPZzBVYunk0uhgkzy9UifMvWLexq3JHg6Bq9m
uOG8Oh3glPJAPOVM7SBOviGoT6lj5L9NRt1eo0A86ClyAOUjt3QktKIX741w3JIdRCBkxbwMD8sY
8RFpr7HSQrPHzMKK+PodLo5wTts1O9oEwn8Fs/EZFLzkV/AJPIdsUuQGEwdpUXapLsIc+15jW+OJ
z2QFk0pmFx2wKjL9Sw3GqyNUIKQC2CaFrRUzB7vRYXI2CSkTStmjoSWntvtWLTeEwROTT6+Sdn8Y
OO7HUOwUPUcWhFAw1SXKp0osB6tI2qPzrL6nFDV8B22Gmi4x6JDXAG1efTL4G6rFAkEzLFrNKAie
qqiZSdmmyAF8C8mqcdhtvlpT1ujMfUYe6D5aiBhIDG1+AJkubyz9rE1iwl4QWOGQPoUNMH6FTbwq
QDsWy8NIaxQBzOgqVEOm7oBsB7PYwvi8U7bGCkxj0z626TlKp64Rs+r8eNx5u1vQMlqHzqrQ4wdl
LvolSJN8/s49mH0w/7HvDMp/S71tcRbAieiA80pqnsNCyeBdOlAJxIcIfqx85O9UG8xjfvvuJTyF
JFvpdyert0nCRmZxym8kauxSvs0Mac6UThg1mKC64Z0snNAxi5EH9n97YMwHC2cfO4ktfr94FBJn
ElRe2E2YO46YfNt87xU5sWtIclqky1MDtjMx+L2dVMIXaNHfxQ2Sg3g6gnk93bTe7eU6UesQ+Mim
b466Fmjg8cyKx2D/2zSwweBP5boS73prew+9UGuypDaiySMtNqYvrooqFPpM7W3WW2FCueTznTuM
xqQmBT7YMMPqq//qM9ftoRmJX2fNBPrwmCZrjYP6nOSfYGOeZ64n6oUffklOrovVgpv2Kk9aUwqz
vQ3aMVxOwo02mQDsi+E5qzXTc6zfSSrRGYEnzfARzmoV7G/jDPKptpnnwWtQYSBrfyhT6y0sXnXl
PRUdOvXBY6R+KmYsXoOD8tPyKt2Dm3SJ1Js8rkJi792qu4JYjJ0whDHLxeGOiF7I/4Bwlwca9stu
M4ujUoZUHlI4vaY2UbWtW2rCgBY72lUV3fYhBuhuehyiKuaJOs19+IPZrEdwfFHRMovkUNoUbV+H
I4q987Gio9k22OkKeD0sj7N0eNznS2VwASL6URaW4K/BQYMwFCeWAdAGPvelnRNNiw0sTjl2U7yd
x+MN7czuKYjo3vtPQC8JBmSvpWqgHhSSSviV7FL6PBFc7ND12RSd8D4AjoQ9On6HC2Q+rb+MIysT
xIi9GSuS46luTZJ1DSn+CtLAGhkfuavqlagaQeUCkVjgRn3my99vEr6zkdw9/HE1anUf0GP/3SbP
Hpul1Z2zttlMtSYv8W6xAk+7pQjhyvCIF6V2MVbiZ1WZxuY7y68KmJ3XS3qqj2PjlgS/TxYqeAF7
v68Ezo/Z9id4FgG7HzyUoPtBFsUBCAR++OwtTXWqvMBhs5ES1qUJvFyEdwVlA+8UfxikBvXoVa6r
gbPIeyQD9lp4wxkV5Bi99FLR8djM5h01rF6BjhSwS2P+C1oi56XAUq2VyBnlwZoB5PiVF6/0KdSD
M8Bbks/QRq8+Qidc2i1J3ZngDSJTmDLgINE9lhjrRB/3ck1QEFy5SHoDIw9UBJf9z08uWM6HI3bx
DeZR+MXxs5nEPsuqxVNg06N52Pm+7iDbq0G77qo+WwsnfsiaoVjDl19f2LjrylZedcgIVto2EP2E
Lbx/vbbHyCWKZD1WWofMNQO+D6NY12xuDzfREiFF8ejOmOPT/EoZJqycJhihct/C/+jhIi31Wm0v
FUBZ6z01J74ufJJCmEYANjvWgyVaJGUNsUAE6eqDtAX6OrjTf25T6QF2qwNKsiEJa3iCbjaMi2Dd
JKlmZvnhby9zsXAhFaRRj7rrl1IBwK9b2yDELGL8lJVar6M3VFr01pE6/nwOR9983DsNCVHLAQQI
CoMCxUdSOkVB6dYH6OYFN8hKIPcMIqf8TbJC/5CqwOQQK8qup7fKNawaR12UGCZ2h1hoTXlK97LG
0mJrTxcP3PCVwItE+wVTKm5rMyaK8m11FdWlDAMLMxvqx5tkFWbbCG6yYRjcLpJXIWVHHaSDuAjv
0SR2tJJ9SFOH7Iko2pIqWI35Ofv2Y0cTSh5PZyM/YeCt3g2U3B9AVHkUCe836dhJMOFmg2nwhQig
ZncHB2rH7kPRn2Q9vBoX4Hw0V312vJFqKYaNpUQHNyYVdyAerrzr0tKlWXpKJyxpXX5ADFs3zbCr
+O5WTft/0hkBojSk5TnHjIbOWCDOTnbWlwjE/UTjIw6l7yCninY4NPA5wvxxTF16XwRsox7oo3zy
8d0eNa4Q7RWGqPn/xHRyL/MuY6LLp5y5+TmnXd7YGmQmWQ1kwabCTfVq0hUKU70RSerK7+4RU3YQ
+kt4ic9xBSwju1R4MxH+tHCmlZPxsWVqwW16spI9ZM4Bv2s6v18wL5SYKf8EpczF1TcgXF1XgVQP
QpsKHbVg2KmYJkEOZnWcgC3FBPrs6dQhl3XNsTMr3RIjiPpiskIEwjQP70YiSAReF0qCubp6akdV
huN1K4lSTFOLNGpelGNKSIn63SovNEd01vwuuFjDufI6GaZpTag2kaQqQkPyrxcRqJhFPTg5d0py
JA6HP8Usn9Vca1tlOtE2IZx67W2i+5DDPPXM5qkpqD9IX0ERr8nG3ta5PbIH2fz8ZuG8dk98HzUs
lXYKqcu4oWZ2NQFmDr7EagsOxvWd/BC6mSywZy2G7NSfNBgaElDHYWBWFHRxSyPpy2jM1cO+HyLC
9/5yZOIpsXC7kue6PFsHLjuKdoJQN+2AcMrIy53KrGsncO+MKCXqST7UUCBfyvpnpWxOGhU6/qkB
iR5htNt2+lxyyI3YFam07+6JKgyDjb9qL5UL1jPprfwpttaV800e0Gx3/igcTPhrlpg+Efuckap9
aOiiRTE8XnpMM8jlhHd0cMlI/k0b/XRE9dqp08dkQJjeapcsCE+xc8+nPbhAJFUFylO1fNLYHnc7
bRaYD/V5JgmjjVhf7oXaXAGhi68Pm1OYfjLj8bzU6eBzD+jNHE1mZzOhEdqZQ5WDt6snKwYASH+l
xCGB2bkyuZzVIwkulZP6ypZA9vyuwyk8j4ReXYLczPNepOuUqo/ak+1jT6gtaXnbonOGyT2kCAul
3nXGc+Tbkf/qnFSF9w4YB/Ky42++nu/PzljdSKz7W79Ll1HJgAdWPicIEm0LzRjHEp74+Nd/jvTM
tdwCflWe+j4WNr93k0WvKIKh/zqlsWNCHI15ur/zofeBMpDd9md4je8B6R94r9URWnfj1vYFS9zq
SRVtpnjHxv8wfz+qqdQfGJ3jY8Y8U197h5neqnwgH9OdxbhOwP+CRonSnS1+tzD2SGT0OO9JqBJS
UUrU7zRSoO3UB7kXF3rtc5GdfUaOqJBgsSnv70rl3eCNdq9mnivU5rOAIXEUK86yEuueZRYGLNPf
fGTDJP6o28cEt+BHiSpXmpw1vdeR643X1hot2h25z4FLEdyDFqKzy3qYLOMw5ZxhArt8t+Elwb8K
RzWx84EjW2XxmZKRA7v1dCPVIp6O5UUAhmY9eNQCGWpWnyvCfOrm++YY2W+FedyK0F3GTDCa6ozR
qc3JbZ9fgSiKGako/K+H/dLML6FcE5mvfoJuXqadLyDXkANpxT4izHrvETCycXGXCXQi/hs5Yeh3
6ngULFfFYrA3dKK0qf0jx9k23zQAbdBaf0vdyDZ86hTbvKyxJHUKVfFqR7x66W5IwBpGpecBZgpk
nII3Q++YPSJsTmGJABu6jc29uZmcKuNdTUO2os1YR1NEMdjKdBsrV++w0S5pC7WF1MQuPkRqMoCp
SE5Ko7LFvIPq8rnCw63MKD3TwYpnJDSUuSb9pJbJKXGwKvnY53k9WpOA3ve5mXsll9hkl63S1Cjh
QWkb6v8d6RmIylTMxLAcIRIyiVp8EiWeV7riepOCdKquJOH04RFUhbm37lOiNPcFJPY59HFc8f+C
C25C6jghY/DTFnlo5Y83ABHXojkcDBTJxsd4JkkogD4Kpdm0XhAxsD88J62Iv0vKIALAqFPmcCiX
gHpL9fH+dWYPeeqq9MB6WCwsktpy53Ar4ThDeeZAq03pIXnQzXRIjM26T1wqTWNUVIwmtuSLtbfr
qBvpqECmV9yb5sYNXmUtCVKyjj0+lWlH0DQh+4QkhQ58pnciiRah4y4w0TR/WvYIhnq/xAmhMwMk
//fVkOr7Hi8OzfX10fWmKqKb3fdu1/reQBbi8hKf5AvoH8yhCPIGi6t4WgNkMIEmVL/rHhfRcAGd
N+1eRvnhbTcQPytxtoV1hzXsgPf/KrsuOP/3XdnSiXUDlGTMXV/kzDTF2WJyjwXsSfLhE9wEbUNB
uSCQQuNCQyvMInUp161X4YQJCKDFinrc5p/cWSoXU7tvnvD+f47WDcOZ8eI/P5eWbcZRNNWcj9E9
zMz4pob9tXyxR+2ED6EKakiPeAZM/m8ycOMxISjW9muBWRBfW0YgbIR1Mqb8kTq9NGRtohmUnm6Q
izJhTNuyhYSQdNdQjdLZ4BWXVO6FDf2+WpiY67TCJUO053qFw2Vqivbd+1abA1qcIKrWDJ4oLJgk
ELUuKz42CTLuSSmS9fRltdFkvEKlPLcaYaaLuZCf0T/KJodXyLJrNuGZldCh/u6uiy60tPjT13qf
bhIeG6WZkstyzBxWbDrafVlph8e4MJ0MgOY7BjipZmVvp3jkGsHjMP6slezy1B+5MNPvezWAF1ew
u5gqUW7Cpj4TZD/UMo9mS2ZS00Wq56MxDn4aquoDOBjcg10fiLVOu/N6IYVKYMHhgwh4WrsOF7Oo
p8YPuJnjaHWa4TSeiWfo7OlnWKzRUTSDanXfvKW/7CY+v/djGwlzUkLjNR3+wZcZSp4Yeba/OpYm
fuizjgn2RoaZt2gcr/H7qkPXG4oVYVtbv+67UVQWPmN9JtW4rNDMWqQQukvTMhxsL30lC+1yc99Z
8kIAY7u7l5qNh4IRbGLVMKNBxoInVcrIubtpryB0qS5CjT9EKmB7r528l4++s6nt2+c3y2cAir3D
xyVZuu+ypVhH/XGB9wAhzcFY94F/Rvq+oU+oLtFfFwVf1n3GuR0BHcEbAa5akUgSX9zgwqZiFuam
dEVltm8h1pgutwLD4ey0RlYPvQRZ3g8Hge1/bHnnwp7vGCWE1LNxtHccrjmO7Fg30oUb3g+/09yz
0yL5hvABOvBPPTgx9Lm9bof/l+zSBfApNuzOPVXxvESe9djIL803fAYGVXJ7sM3zQSVhiZybenWx
BVM4eWEi1Sg/hQiwPa6IE3vaNzV9mg+0xF3OapFJIFQD+9WVZxMloOetYkf/fiuP/e/PJkKfI3Ei
uOYYkkQaX79P33P7U6rhM1H3kAKTW1q1r4xPI1WkE2EYj/H7GMlOISvXm+/VG9u2OqxlPYmw7xaD
mDFmclSCYJMIS0Fy60XpQlPv4QwHB7ns64ZiunFueZnWA5rzd7Sxak/3GsRylyOr54mZ2i1IjXXv
ocZa/nXFhT/OCGddW/Z/lSlSz0XK3T7NA4ImqDMMnfKNNq+qoZLqNw0uRo7Bk9VgR4PrHZxOWaz3
Px8yjjeD0sKeAnHdM8/ij9g5BllZEEnMC78gw3920wUOVTBSRHRQfDQkn/+kc47azErc8iMGIVpn
zSWE88rP8SHVTNDYdq+w99nIAVH7DuD0cTnlSVVoQqH3vgwc8eky8LVu1eS0DmaqZRN40NS0uTxf
N5D23uJA8vxTOqjd5f7fKEpBESWD4Jwevp1EiD3lSC49GWLJwo5zaJVGVa8ffAqZobfOx3S5lyr7
ZkxIypm/nhjWIh0+WM6M2gQF00XeKUpAib7p7PqZY0hMEYRKMTorbtlgOGNvve5LSysiWZpptLPR
QdrCKx525zG+yjCEC2AksCkUUbTnW16RChuZ2J3vwNVzc1BU2O+5N8jHFOt+gub3bn8yzblQmnyH
1xRwrKedE7pZGPQ3J1GsbJu2S/qinlhYVof74E7BQNeMBB0RobA9FST1FRHd5+RefjwpnfUrQzKR
paASlcHcjRu5iG5+i9mP/GCGmI1FwKWFVLfmKyHap5HKuK8BWqbaJDkZQ2hgGt2XGq+eGYM/EcOs
dqG+LKUFv7NvzZrJXS1DQgTiQzhSJdeEvEsHmci576eeG8O56JG+viksM/Xd8HNOjneOsNggkzvg
ui85iDInaID7hW9W+5otCYFaNtlMJm7+O0JVbAU/y7mDmbeiWtjAmT4N6eB9r5ZPhqFrsYYj7p7I
1rFemlKMlhns67oik71F+y9xXgZgaDFPzCknZM0sOgLZyHMp0mHkv+YZDjsoIvD753LMEBvZrWPj
fKbd8HMaMk1aNCVGU7R0s5pHK1tLj0wUwyDu5+CXcWjcpSQQ1zxuN+EFjV8Ht6OnW+QWkel8syag
9Cy7VAcDVkIiOSc/B8x+49Nt+0imfRTKMQIS/qoXLyChraVBgC4/ZkEZxeYqQr8RnaYLa5l7+EB8
/VM6C/8jZjG4E4egCOxnfMVEc9LEbjtrM3SD6ldAp+d2Kt9Hioi8HvrJTdtSsU8W+dL//wk3I0tx
jDCALtkUkwwcXySEq/9GpJjrO9CH10Rts1MzEt9jqcRsN8LlFHpEGs0YXY3Lx3zQomTOnIXd/Dup
a5bmK4VKB8Xf4d7BH1QwI570fU3JybEMFe8scBdGsV65ei8OHSIZ6W2WEy+h2f1kDimAVwcX0H3W
GDh56lSzxAVY32ThG7FdSV5wV3hAMNy6ioc/3kvtqaTUoab28Kp2UZuGfkjgqE/SsyKQfbxhPeMW
MzJcfxGwSC54c7afG1iw06no3CO2zJGchjQx7I6P3tuqVz1BGm0sWzf3Q8/SMzx1W/COhsRXxYLn
k56SLs5c6CXAS/Bwfg0+iAT85wnsKkQjnPUBvCyPxwxwSIrqE3riXj/KDghZ367n13GucIgtW4BA
ZmG8yaFeej/1SPuHBjHoOv0nI2LrdtRnVviysMcYfVWb0rlxaJAVFncS5/vj1Lp1Icec5mcNKmiB
JCgPRxMlBt39VN6uVfPXbM9WXRi1lcYbgtjxkH7FqAoLIGTArazwt5t9gak+6h+QIcYYVuS7KDUL
gm+SkuurJkyaL9T8/12lovPnHag/rcoxfRfdHFgJuQacQMb+oxLlYsp4IZaN0aNdRwne4TEboARU
lO0erENrvjrOAhwy3orRrmSj7kTytZ6vwSfD/XNnElZZLVGPZtG1f3MwZz+RnvkSOp/msZdQd0gw
jB/AB8kIVY62VfEyqNBYYxSAQ6YrnyUvGWj8c5wr1wTluAGWYRGoyGNOvTZ9Wcx9eoGM3amc2FyP
sCJ11FgmQl2vhIG83dXSwxyWYqCbaOD2gKKBdXVc87LldCzjK2hi28xvXq1f/8Hbc8hYTerHstCX
W8LxvcdNuUQk8NHtofOlgoH2BsiAPtuUuHyICtN/9qB9NyGbs319+2Iq8PUDe9c6UwVMAfb+SF1h
ASI3FcbQOYVD7eaMVjjiNkp4YFEaIkJiaNZ43ZYZSh8Gzz77XlTiYa/ltCgMY0FaZFc1ZCGdUFfA
D5vG81D2UmWcmuGzpfuH6j0H6FmypmXpLoBHpAjH6zT3GoC7CP5dtW+EdxUTumIl41a0raLNkuiS
W/otd+pfprifpu7NXZJi5enDbeN91LhlXwWwe6Ou72x1j406MTo3GSauYLWiAz7rxfJtmgVJryKI
aSDUWlTiUlU1E1jegKofVfpO40pscRdxTXHNTFJxDQSUOagPgpsxRRtdFoHDdUS8Ow1vTr3w4x9c
Uzp2E8Aq9++z/8bd1fkg9VagnzJyU3k4+qpqiM9S335PXZtkfrTbTGGUTgo1N4+3df64a6rH6FKN
1lS+/Glwjn2/IPr/eLPyZvfUYxawiIKkvWsjTKHkR0lr8sQd0ZGC6j8hg00b6OJ3AwUXdsIpetke
5G+RJFzLGvub61aEBL20pdzAMcsrxnW8g0mbGJeby2jfiPammLUO14RwbVd613vyeKSPIudiFHiF
QELoPOElkimu6Yl1ifjBgCIfuz5IbdW73iMXQ2NVTo2ye1YqszL5YDBJzdynGJlJZpCFd4MGn9+3
ICAoWVNHcAZsaiOZ0aTjlOxZdVebZQghdLOSS4ihGeHtP5tWZ7moGXLYz77DcTCVAPr58Ppzyikr
Xgaddn6+aZDlWEYD5MgsuELdJp8fuL1SRO7dZ69QlE7za/kxPMaLYXBVqrwiJpRiRdsQ8s2yUFQQ
UIcSmyY+9PFphCb7hBGS1cHMvoAl5mNzX+qRy5Ar/nLfjNKGXOYNwsaDJStGgU5AdEIaKtUaCoFp
BHDpYfKen/CUDV1tR+3DH7oM7lQkgICpAuEriSWf1Cs+cq6iqYGqCf2Je1BsTj4J7k13LLFiz9WC
yNLFvpcxDGOK7QIxdH6mSVdY46wx3cWnbRJf/haX2nr9fB2hqOGVwV5weRU3F6MUT97JLuLM0I6f
ItIMFakD+CYb7h7dDtIBpeAK2qBNLl7Tty1XC0XjMrif2ontkkH6yYhuI1JiVDKRDsCp/SE4rsVA
eLib1D8pSb98i6so2Tt0x5SrZekeeWPcuf985RH9GyKNYNZ6q91SG4oGDi9kJhAdzoyuFX0XuWks
29LCn3kwJT9OiYCcBQ+c4NuQgevz68jrksqC8DEe2kHyZs178s5+ZgA/0VydHoazdYrFKq0opO2J
8OadnzPsV61ihLXH1E8hqGLXONBIt73mZKc2+pHogSA/gmorCtA7A6MvFEV/YWQP2sh4p0/BoB3P
hEZpH2lQJ+qbXQ3a0UZuXTiTuQsI3kuHC71p8Km8L/N9mvrGLX9Mt1hQqxnC+XwQPE/IwOvpgA5G
p/jkhpqSe11yepYJ3I8nxhEoqloCQf4/He5JuHn9TNOSXG3OSO3Hn41q6SQBaVtfqBW/nXi4kOiy
DvAHJRzuMUJmqLHH864eqvqFZv3cT1iImh+nlyI+i5EfiFawFX0hUy4d+YhMTa8U+NR50X7yZ9Io
BIqgh7AbCIom1Wn51QLfE2IbTrTWUWWG43vgXTRSxTNkYRMf+/AjIwAYuaAJ++HCQxc5N+f8TmAX
VyOnvLlVYiD6Sr8JnAJX5HVL3yv/jyiXCKim9AUFF9BJd3HwqxZEIQgTTMvfll4bOL8DKw3K7FsZ
VKaRv7uirS8jhAj7jV8L2bNjg1EKgct4Y0S185vTYVePyUFHjQVDtqgGxYRXMN/4nYl8ePkwIl5B
6rB8G/eFzeqZtrc2wO7rALVP2iKTGUZlI20IwWTHCqxuJRq0NziBCRH7avaBJ5MIzKNwqlqlNhFZ
wDXLlNfEOvGxyoTegS3ww6MAQDCaUywywvuA3q3PwtR5w/k6GmxwYmeJFkzweFgVPs/JYbSH6HKV
UIAKZkyMNyT3pmnxz2xmAc4irF97qzvrFhNa0oksPX0qu/TSSpEt9iEqEC7dnCCGvJptLr47tTYL
TI/5EiLaKweAU7WzIixDAwPkf+yk+Slp51HmxgkSkuyVQG+uBu3QQam+uwem3JEqfra7BNMf+4E4
RvRUGMluM2fh5xaNuIuOyGl0X68uYvYp0qFFRsD5IgMRhI87yPiQg92uYJzc7X+iBnydpZNBkTYU
bmZ597EKcnA2H6PVmtoKtedKokrz+S9BC8E24Dplwup27bDzG45LK4RhnaYfv9zeWq0OXhJWOZS0
CmQV7S0STolhYdUPzvkGVmnEe9fUwmhKpM1JDl1l/+Fbro7KA5sitDzZJFq4Tn4GZfjBrqKdKuKj
Xy8+U/ur45mzlpiioIelk4ODz3hzayX+vuRiUc1pj40K2PMWQJppWAEBpO7Znty/djmChXOms6DS
NsKTj2h/tZ7VJfrtA2AbwBAz5Jg4ip5b0S660gsVyteRAwiIBy7X7q7seh9EGvCbHq2Z0RIGVfGI
dyQVsEe8lhzZy+m2ns7knbIRST0VzHIS1FRzIVkB3PpXg/2qkWXpmV3hvfgsYBT00RaYY0e1Vvip
bo9KIiPxtRhGp8RJcHnl44v6cHbKeLNCplY8uitt/fM92+6OA/CJjKR7IzCe2eKH96V1cn0kb34T
nKZ166QuSeZSmoxSi3P6++JuoibVH9yZMuR3/rT3f/CMVBB4vZxnLb6z/1AaSMTe0k5CaWcaorw9
aLCHK9HsFjRL3BS7uHB4FIee1NZFbB1aYLh2wTnp1ed38QGc0duMmKBEJkVUnnA2wHDJvZfLCXll
F/TwPxkbKIq+xbNC/IH8gkuRhHAfdIErjbPiN9Wo8vF3x9W6YxU2jt4JGkUaX8zxqzQwjP7JYsNM
z5MOcugaCBIakW61ZJKb7KGVNXITQNY+41rpIvMTy6wH/Y4177Pvx5IMPMNTgA9p6OsHyvzmqAlY
39U+5LqK7tfOjaBeplwR27Bdz/kaagU6h6UfYSOgjW5OUJP2aDwEA+xhqvHUmri7Zrhb3Y509Ixm
rWJxMweQCOGUBEl/ats0dQaZWEEojjeSX/Ebt3P74FyIXVAs6u5lMzG9D6FC2EXcECTtjsRbKaRn
ZOgc1tfTMsgDA0S7aJiXeANM50f+BpJ51ucXPdU7tp5rlK+1amLe8DxsOdTlhjIIcQfo7cS5dO8R
fyhBkvTq3YNIcheXM4YHbKzHFHRvfFw6qzafok03OySnmcr3owL2L8H8FWXSym5Foi2sul+SgcMI
R3lZ41stUobPtVF2E7umFssujMCpjOg8eNwhS8niLFTdI2dfH3EbQYizPxZ2DSKOT+f5I44sU4nb
F0Z+HlYDNFgMzc0IfCCtM0MxyXHbYYGxmyJGVVa2QFTYnnpS/0Xs/YzeIornOobKrsGVaHfjF6DS
IQOornmh3O2jL73kIYe/6/hzBsz8/7zCTmpesMbbo8NPZ798qln6aSPq+Fxxy2fgG3i/iV9aWnf7
u7Bgaq86gBdI25rKkF+VRZPd24BDyMNugQ2mKUXYdkEzfXFukcXksg4Ng7xLF1q8zEwXAhO/ZC/X
+UHulrxaZxORrTlinR1FLFDF5j01bUOEsG/aJ1C1hmO9S6B8WjRJ72+m7nUAOPbEfYueL7qUoDrx
pDjkW3qJj7UkJy6+IxlQ6laGLktvovEgD5AIiuqF74McoU2v3uj6Hrhd3qWbXN3ZiX2iymFR8bbl
VsB9C56ooAfg0QbIvh5GOqObCFrKdMCIuWwEuzejVagOROW2d7dBbdKwXaNZaZZcpmVwOSoP7cHW
TUZ06HI12Sxmqo0DcJQAA4FxguxNfuxTvcaFX71gOqaCxQcMAXt4yv9M26ZzE8265A1CdRu+Enl4
P5YP7dZWzkzrQPqXjX7/ILL0et+IqSpZzEayAQ7QyVr7BxQHyXZncNOtLWQmnDamxbo3+wkwO5uH
I+jOj9en+CT6YgH/2HU4fvz2cO8pT53CxpfFLmKiz7fZoTo8J9woFk11qMvxZyuk5R4wg2Wxg/Gu
eMarsUFjCc19rYKFMp32tCTkrB+iQjy2vS+OVzzlm/2XMR6DLPYntx9Ured1wPocalRnPmQ4sdvg
PTXZ+KuM9joy2906RvyXmozZ0Wwk8IOCI5ET580oIbpjR11dl1JPKzvkhtZtHMbkUV25cy1dlkAJ
8wWENdU6h3d8P9rlhEGf5peM6wPxBYLL7ujrjhtXOe5PWUYbNbEkEsHPEOmm1pqQpKf47ggtZjJy
pHJ3KqP1e+tt/Tuqd0X6S7kunsKS0HoFAINPvNN5/EKwzMPpu5DL3E6LSVAHhisduUVPu4Sx7Su8
Tick1yqoF/VKr2ufcevYOyqVrm6hRRHk7tJ0VhTPIf5BynSlgaGaSTMGr5uLoK5Nzd0Gp+o+yeGV
dLmm4vEgHhWpT/1Yy/RMf4LUB4bEl65GS8RSQPudz/xcb35My9fU9WBqfIERqn/cQ3acy0FeUT7z
HPwcNX3vZ+euMHjQJsGu0Vkbst1kj41jFiYzq4uFf1xH6uhkjJI2UTAvgaRced954xYrYlcILe3f
3jKXLHo/LRGTjZHURjOoKWDIPdW92WAy3yv3tRx4ulz4OcYw80uA50Cvd9LQMdeAjF8kTWPPBW/z
EdmAmRZX2ZvSSa+guWipABfguCt7n9EfKRi7yr4xYoZBJaGQMa3GBIcNOntc3w3G5F/AhrfdGeF9
5+usTQfd4s13dHr0UAfNj69qH7R4SHfClFwa/pLiz6zo6BGlulc4jo3vyuWNEladp3EGn/zpJoJr
nBe+bsAYkwxuiBjUFhNaF19ay0sgFDx5sNL4jNj5zaIES4QXJ9OLKWxU9lrp2XmTsLezBk6W16W5
fD3OlfH/bsNnQUsepLswh6MkWL/tKcVQBiIMb59qrfI/vIOoE0ZKropeVHtgSwk+iEr997G6X/mS
1MknqWCEoB+QWkbTYFOrFrnKttN9XM+vlVKXR2677BGt610Nbf5MP5y65wgmQl8msCDtIrv2Xpo7
Rq11JAvYxJ5nSXOSHPE5B/Se7tD4VT00zy5h2ALqHsydq0tznzVl1TFwjmt6XHavvbmpgv+1//Qd
WI344gIhjkr1dxVu8UhdERXbX+JULAa0svuwe4JvohytqNscb7EIVGFqTEkgwXpvh5B/GQML0tNA
0BBoIqQCiwDztjHOLuUtNrjvyc4SaqbMYhgrGaQ8e2hnD2lkoarCL7NfFuBePc+iSoyKqNrRRoOL
I2xJyXEvEY3hVX5SSlliYwgINKil19TwFUGNU/9rfRIZSHvwBKlUXImGB8+uHwtoRCydTaCQey2e
kCnXdxJ+GgxhOeB0Bd8w3QbgZFD6yFLA8erVasoQIkqDqsIlzR7IHIEVn+omM4uv+zEx6cosC4mp
lPNd4SXc22XVYR62HRa8AD8EbCnrjcpWkjsBojIrqUp3gFb2BtnwT2FcF6u/ClQ4dl2oJqYTPfbN
ZJ82f8PLLkjc5dP2gPF0K+14CEVdmOW/Pk4uXTC+h23NLTndjLZQdb2ms06vy1pTqmOBNQWoB7iz
Q5bjxyWIwrgJzvpI3+A1e2PZyCdPw35K3l+z4JivqaP9dabjHoBdJNc7iy9TxdxAztx8fmsYW6AJ
sjy3060ZldgtY2HUuhADO7FebfiTxuQmC9ywdl2tR2MdOlBz2LUCKCTqFUCGGSdDaakGozpiVBU/
ZhyAJwTEuMVlapAMAzxzelQBvHMoFPwmcWmJsxHYj7UAoer478ebDJykHioIKPwYPD/9pqBrf430
2ZnMbr0qCUCs0cs3kqAXMYRE55YHsv95tVt2TteQ9clvbL85SDaPzkpyJY4IJsd5IXB9Ls5dZ787
mew1JUs5j6Ijc2JIj6wCei5skhKU+0v+2HlqokLmcsTlT9MCmz9nZaUxgD59idkuQEabo+O0YiFR
CtzAkWu04MrSBHNXjaANbwUNYl4kjyoLGLGN38KVhsEa0ZUPtUG7E+7R4GuLFfxvyVIvqFgPceky
4iRshS8Ydf7RLRgM6iefa7o3bSr17Oxb0E26Y6pgdTsIW0kUYBObo00vHzU8f7Y7JpzakN75mxS6
CxE0eFAeGBdxKi7r14Zrs9vLcCcogkSlbFcyGK6iDoFt635ALdfK8s//yxvY9kaFtlgQbqEmd2S5
w0bLPAptBuzOyArdm/wOlUTQnY0hDPk/xZhNqnvmd5Luu/mmxNMBetF8h2oa8EMFuGrDJybzj80e
ANaDR/3wXypwHPoOFnATLT0/uAYONtFmKVdpumO6kfMWt5HLwZmenT90mzXvZG7f7Wpx5bsqtmyj
BZRxHM8yFgEB1Ydi3rgxuwBKC3rIYQcT2ty+Ord6cMxXx2jJn9JYKMipihPftN0l8rGnxHRcrh15
UjGhClTzEsLfazemarqb2fXfYQfmaB+uxpi35Rvvj+O2D1I46J5EjVzbAaG/je931QKsE+R4SjXp
7rw5GCEOZJdTqEUICcKPz9EdjgRtZFsqrzMgGw9KcQfzWwYsJVgy/p66RIM6IihnBCJQGvWavxmR
Am0L3U662UAtfAwYpZGnas5XzSR/ALHf+84koJ0kHbAT4XbHKzhZ56NByiYNB0nL9OJjEZRbY9gY
9b/c9nRcEmd3GDXf/8Tpm6mMEe4pITNaQks4tw/ASfnf7j1gQLsNsdBnnKQbuNXOnFdBj3TmpU5S
s1K1bEvMMGdoARhkdvuux/8EXN0Mvu6NxFx4g9bUJ02aAOftblYWSSgBGgaJkvlAA7ZADibVLQMm
vpLlTmoyyHjolzMta7R4LKkTz7I1QpIzMKktu0ZA6S3zE1etjOtpTfg8fUik9+EgECsaN8AQvCNp
nBzChGnyS+OjXtXrEcyhZpq/3mJnVkZPIjKX3eY+FTavE5kXTofLm2t2VJm6iPmLfpi0IAQUYbjk
ncrZX+5VDzdMDB8VC8YhDzCejdtwfQi2yH/5I376x3hGduw6WNfs+kWe6fChsi+OeKkwO6IlQr9M
VtO9gH2rtb+qVT4vbPN4YlzwRkq36wCgcJsUDS5HFQ5cCamSIw2yFyerrP0KqrC4iHb1HDi9eykF
+vhH3eh44Gu541diDPSAgPdTqsRq3qVAlcR4Gk67y9b5ALNKQJH8JrS29oJNUxW0jdzFJH3ISnNH
OROK72pcg/99OupHPKBRnhPtXF4SwjXCwKYE9MqsYPPM1Tb+4TK7gfXsCU0NS6WLoKUgcgkXhHES
GnUBn+S2MFdIOo6wlpVb3WjMPR9wN3kydP2w4Eg3qRM/q5RbMPQ8l1ubMS0qZm1/c/zU9sodtPUu
6gJdtWevTYUJVsoXL9RSjMEeFknlyQEHNOlITPEs/s6XyPD0ZtLpopOYnnkGnKc817ic+gyLqZPh
ZzkWAXRYYbGa+bvQmAUXZ7/vf9b9lyysGpDgsf32DBxlI1swDMhxFHTZOlFZf9zUrXSQ85RJoXkB
Fey5w+qh+IobT57CHBXqHDSOtsMcbQ3WMKi9cc5ywpSRGNyTLk2SZF/YwZjoojI6ca7sVvrH90PQ
VdmN6UD+5RCl3OQsZoSuJxmsDgSwplSBd+ScGGS1lnvMOb+6ZF3BJGkW1zaKkapewKT3zajyru8O
8UmvaM0ZqgB1pKD0nJ6el23L3dhVmdHL6KK0l8mD4ojhYr+kpktIBwIw4HbaPqCZPAMGCgX9knVL
7ov3/X7zXJ3ZdtfNoguq5tr8zNcIAh+vrXsPMNMik6Q9MHpNADDi13mXdSMBGhpGeNJLVAIGE3rc
2vmzzxgqN8PmiCGu/X7wlkYTkQE4Lbecz80GnExCh6oTyW229xthlzSGOEsnma/YNXK+emJmaAXc
+nJU+8H1RtKRNQzWPo5cmblIiMF5N1c1rFJX6u4nSa2o/6u98FSBEk5NA6ujgUfa5nkyMUIIAAUK
DQUtnDxANJi3P1qo77o4sRZ3WZS7ivlTk+94WWK0J/JtmJR0Vr8uIN48JCWHJJji8yXhocQLhr/B
pCRAWgIjb7+WAOzGryjoDD+diyJf0FxTLfiMetC9jbyU0A5fscYXOxWhOyeS/bEGVSR4AELG896v
xNVD2CNBs5S97l/9QB//crNfadZ+hDHtysAxQsfVn9mVOw9XJGcLUtM7lmAicOYbDEZlxYkjwI1y
3q7LJUA/Bnxsc1U0RzrrJ+MPQL9CpKu1zzinP8429DOA84fOxbnI+e2YYZ7BcXt27mkn2LIoRv6E
4rxuWUlEvOeO3siwQ6aeqRbUnfGC262CTUoyQFZNAmomJz9tjbm6gNkeNeJb8CwIr1Q44m3vpyWn
yBKCnICtHZqB8ZYavc78I8YBcewGK383pBUw/SgfQWBVGTnoS8AuSEe3VlCosHYFohWTKLlGR6a2
DMTnKlGUCqzjBr7aulBVZ/NKP0CoAR6mYygqsOn1M3ZCTOvW7qASdcvkj7xNjQqQeUG5Rm9l7vnR
OpnCX3/c8KYttSvcleNXRs4W0bPw02ZOWOA8/pCcnAilNMn5Mczbre/Z4OLnkcX68UNw6uqcsXpi
p1XXpr0WGIYo3kdvXeMV14K4HZbKLRN/9U2aLHL/mGg9KocqIRFwxjLOySUEczStdEbGRiS8TleC
+QDiaItvutJ9+dyV0lbrWr9qidz+nv2PEfRRIJAtKL+ei6sJLYsDoNw/niqyzVJxPVDCWI/4NWJk
/A9BH+X+Dkjb/nqm2aOuGjMIDD2Rs2kFhydmulsbcmB1hweQzvmm1J+wQxfpUvP89ocVuXpspeAk
Mf60cI0ktE23biiKvAp6ooRCxyHhllngxJX/VzznUGQc3xXuQejbV60oljwXtPrnLmMu8BhV3iKO
RhveTRs7PyUVnYepxPwhlbj2jWOEX5ymlmuycicI17PXEYjFWvOuaLFUFiEAPZe0bLoZaOwuaNsL
+9VEk6Gcord22zdzn9UGI27Sapw3iMpqX3A1EmijCKxyp8D34M/XzZpVgDjc/goaZ5xlCrmbkn/f
JfWS90lS3DgAVB+9/MjPvzjujCsvGgIiZ7mbrl7HRtPE+yWiHLj0NdvmCqfNIl6JNkLEZiOSC/QE
/chxrbX7DdvUhcTVdZMl6vUuiFY/vRkuXVXGiOEU+uC8e3bUS2prVPaDAnbKyLavafoOhSYGBQMm
UHrlMZ0Dq0NIKAhiDoPLKxsgT2g2vYcMUXlu2gTEpYauCf+TgYkkVcDG8Z5jhPoUcTtZGramojyl
cu9SbSwgs49JBZqSWl3K6E3IvRA9UcQccdTv12BlcMDX5KooHa5v/LHu1x1y7VzNlcfUUtn2vkS9
cH7Pm72rGJxKSEuOcAxD/2s96FxR18Lr4FwSA0TAaTFLVofbJvixKpBxWO1SuVdbXyjAqQo4bpMg
x9qOHgUCuERaY0eFRAVai1wNQtIuQhqB8DAy4KvH+SOjgc4VDxGR49c1/gVQqVKNaaK2UEu9HEc3
5HqpcCtcN4woDfLJW7M3BG+a/u5o6fB0zFikufCGkNdBo/8BO0vKPETDA8OeQd58wRAhvF8cd1dB
VK5KL1olZwKIrsEgTkfEomxplq8QLRMct9nQgEz8AlhuJZsj85Juf9vwMibT0kKiEUidGePgBgu6
VQR+HQg1XiIKdOp/BxQcA94iyF5ZpoX6o3t3tXvy2iyAyH2Dkjol77/u5zWIokNsIoa8jw6NvPxC
oqP6wL/YoVabSgGMtZBe5WrYtaVtAv4G5X0tljlVXYPs8ziVPmYbk82jlKxgG/ILvEZAvqFhbqKW
vRPr7PixWHsSOlP06gZ070eRGVPOAt3mwuvsxtmGhPMhKru7WzOemrdSyPUzcAzPeJFTjknvduN5
AP+dKi5L0usd6JsDOJXEW46PuETg0iVGoQ6JEHKQV86+QujW9J8R+TaprEDnTU2x3Uwnpspij2VD
YHBPnENZ5zY9BDP9dnbvAfbywN7JeiLfASfR3W/aexyHh3PcfJc2OztOyYOcAaVFVP3LJhpYDFnD
Gcu2ZpOJT1jUmpvooNLvNhFRqAiGCRj772q9QFhlm5MiDHfXd5YRuckgY/LErBrIqCeLw4w/1TK0
bZgdUGigoyedSZC5XJeBcPipW7c3bCQ7bvSliLDdhkUH8SWjjz+YdsPuHljoBHj2bz7eHgsGSuP1
JY2Z/xBwUnGGCYF75CbKxFUxkDjoElK1lscGNp7GJpaOs+R57EjJZVtlk7PM6f0BzdKx95+XMnj6
r3n8ppgR4rdQ100ttLac/RdqsYnyIzbq/4Qj6mE2h0jKxsnvjaMgz1HXLXI45vHxEfiPGWJMknLa
8oLB+WZ8WmyzEmOdA0pzkpzlN8DWEEjsjYqwKMsxBYWbyNxm0/NDlHay0BpGtyOC7fLYNLi3Cfss
dbTVuxUPuTJFwJdAhVGH2oZOWBkeLvGZfX1hxePs2Dwk+7vMPucGuRv2xirfuy8htkqL+cmhThwf
tekhm3dh6mfF0aKDZuhwSAb9pNPXnYY8XuwGxz2dOuPuswxIwqKwrkPup1BnS9wrMiQAzNVPOS6e
NCJ9sQaCEY3H2HwggvQB6gzTJlAAkF3b79nnXzSw4tQYbIGWP6xkiiCTo1UL8tepKVnEWfGIP9Qd
aGjLQph0fzuzWaVtgXdoZrEZVuXxlP9R/eWz6s6n6pGYR81Gjv83BtHmGP5v1IZhlqmNaWM44aaD
Ime+5l7jroxv6fdlbcbqBZwSJZqJ165NzWwxgBLVModFZNmbJb6UH8841cWzc1qjctXhylt/9gKW
1/fvWF/KwAlpRXzi1Wbw+1YYTEgw8E9hXz3XNrXw9zmq9BFM7oG0qglnjonOK8N0xpQYNj3UA65y
Bnhba+tIdZ6/ZqrUiKXV3WjKdbRouuYNqMRbxvslXRXwz27gn1h9uVtrLjqnB32VxdW2MO/2bhlT
2lUjHM7uhC8IuhJY5QpEPQhXqOo/75oT4nBBuOEBid0oPkPOT3Y7yRE9DUIS9DiO+MO+mDI0VuCZ
4ZQ2NWrWF0B4tHWL4uaOpGCgpkCpcd8O3aqC+N1ZA8QRJSSlhI4fOeyg52aTZWvI39ivarrebdym
Tc5ernOkX9HcR13Hlm9O+Doo2QfU70vAGve/X1jBYKG1l7mj6b4OHdNcGj/jDcMYFEgZNYc+ypWm
y6cWKDeqPKc/2P/hSFPaSU8Wp8XsoRS8tyNXWek/YODoaxQdjKDLqM/jB/GrIt4a2+DUrrjq7orG
LBufDPP9zjXuLaGMPSCqZG4aPUdfzzeiEntuJz5xFOlQHa7xV3dU3zVDtvmh7gQOuXp1zXlX0y6c
EqNM9POMWksTGI4i9eP8s3U+oeeO95+RZIjaiIyPzSSM63nNYUujMbxsplzuJLJIEnJSsHR85b5T
xO9vfMZW9Tozls4j+KLzlwI9ryUP2WbjlG2D4yHHN1M8amVfmDZNTal2niV62gXqHLsmp8Jm9ZtF
4NYY5bxLgS5QOuCnmuP/QyLpt6L0cPz8MQxO20aFSM930VSv5HhlcnS4Nhh758LSETO9gmiJaP0j
XF944BncZ7I+KR63bH1SR3I/TvbiMPA369KbZpxnlgwj0Im7JcuvK7f1cyDY9G06jM8SJw+V+W3m
M9IbOJJg0jkZV7yuqSaUKfYrjq9ia2CqKeKrMUDHd1EbDeOJbnBJlMg56Q60QxxZPS8k+z6TgLAz
JW3lis1al/NayM8jtMIwS5UlWrz36T//Mqcs38nzKL5ppIW9f6n0G6UrRHzHwT6qtRuFRIyuXU1Y
bgZ4ba52p+fDpO3HMmtW3EvU1UrhoMaHV+/rZSk1Hx6L2RzPjaNQ8tBU4rywlCScAvG2WU6bXttn
TRO96hH2X3BzOBoF9M2f6fr8SBuInkeEhjKFJEJKioAzdbjVHACcNatTauYiKCtuk4vBqh6yUQxG
kGQ3UfmZNxjwzMgl3yPBomYqmXEG1KyfVnuteGZEdKlq4MkQqBwJkPgknRBtyGDfWBOOMwowWX8l
Xn/1QfyDHTaUJXaghhdra6/XAxk0KeDCqvirlIXTA5RwtBHV1AiBTGEonYIbPkkGyo15yPbHEC/j
GBh4Y5cZHh7e69LOSeIEFn0X0RIUgcu6m0EvaqOsjn3xHlyLHfbMMZUE/83jl2oGe2WkuwA75Wwc
lp4/CJk8gQDjbkb9SWF4/BqGS7zm+AIVOQ1T/JqWfQiITl8i9jKA8nGtpRJuS6+W9O90p/s/LvFU
b7vHLypLgTu4g0ydkJxJbkYucoq+26ulCswJVLdKx1GkwkBmB/G6735ufT+Bbd2Y4HMTZ7M4oPD0
ZuPVFxqAHBNvhHSgZX8cCBcdozQrGVuwCLEl4/DfQGL09rgphaAo9GMZoK/pIXZMGp53V2sJCX8V
bS2CDq9L7XXAU8t70+PEhMltaXw8tfQkj5GMxxCtWfemhIKasEqSTTgPwSTHdAn7ymSUE1V9TQDI
YQoSJINJ8LYLuvcSnEg6N+QsKMNhF1XYnmq39W4ZFYdQMQk/kLbX1wHyvH4hcj3xPAwAei3StBzR
VinbC+OtfcQAdis1mi2WWiLTWm4cts64qYwXMMnz1gBpjxJT2lWjT6/mJeqBVZv4mk5l37bAV8HP
lK0ImmOW1Jd8hvR4WvjZa9wr/PIBlmWObSqUZoGsytWfrzBvGTWuk05U1NgS9aVlqFVVwqkLe9CJ
kVAu9RIbGCCOspHzTA+02maAdVr0A+FgeiOdD7+G4vhmbeaecfSFQl3v/vEp0+u1QFs+4IgtDwwb
fSs7rMQYIM43NSOhZXI9M873IZaCl8KLsSIA2eJEK5JYDijYwmt8qewZ/RM/Dv5LACkR1aW05SOS
bCHmyPeWdG9J6zwZzEuorkKtRxBTxCsGNUfFjo3h+JROPRGnXQryVyA4UOFfukTdRjT/gjQI4yvw
nsy7u4/IBZc5/IerNcnxJhq0r2nJbGcf55O6t/Q0sE7QC8rN8klX6+7i0mHzlL4V16fJ925U9CKb
O5qda98RfZihkyXtrl1cgGufeVkbGseHV87aQZBuPe0AnvAx2ExoOjLbXxy8Z4CvJmTMfJ8G8g3o
0uoRPQNyBjfmko6BZpEKQ9XZ39ESKRuMfqIavz8G7mwacTzCEswybqV3fz0VTqO0y6yeGsRW3LUt
8AuK09j3HxK9nIX5k4nmvHTIhfBtXLxMOCGfvrlpWbIyU0tAcPtJHgrFRFV7l3NfAxcxIInytO58
2Mj87RrNtGPnghjBBdYIePlrIvGxIrX8hXFNLlY8Fq6l3mkieEz7lIzDM3FfzhgYon7kBsn8U+zV
03QPSGpTyEeByq/HnJri6nVQfj8VPFtAY5ThdRRWhYpRfLAszqEGkGn9RIXbmOx72IZRg2h9iSjA
fzZ/yA8sF+CYXS6/KHSq3ui3kV/040C4vyrv8bzs2TFaqN2tWVIWsnoAS0jjzAMb64kfGAHHYSlf
ZaqJGyK9bqzrWe4VwYiuYpZKr3gvedehMm9afvLMP6fD+BA6QhtMv6IJEWxGLMo84hCAw1KlTAT+
aEpF+z9H5Mwe3ld/RXrtaJulgVMQnY4wKwzz/csphX9z3hpC6CaTo1PzeADfC2faWVOJr5i+KMFq
AqZh7PNnyamZj866rCrKQPkwIBRURCoWdHOgU0+C3rPGjd+2bWncjbt1jJ0KGV8aqgywftk4EHI3
DUdJWlJjtEyJuj11Tut9Skt70mTfSEiwMsh9CO4JdABD86eQmZ4pK2ALtTVGkc58CCUSvtAAINMV
WIMnTkQtfyv2vIxA4YVb67Q9GdMH1DwK0x80QhsEzQ4O1c6VJfijk2UNKKhR8z8R8fBG3XA1zdnZ
KJIDbdTDQFiBBbNSnnP9jVrLZBwLxbIwQLO/YBI7g3fPlpeM6T6Lo42hG4efb6JSBz7oG8AG9d0t
/dTxD002TjnfC6Z3npNGa0GyMCURMAk9TwbPU3ABRYR7xpc87b0/aIg3UMD+ju7bAkPFB517U2oq
naLtVgsXjq9q3uxeURVEc/ijc7CNZ8+5xpMG9tHHQAQAv2xVzT8dpjT192nuRF7ytb7YcYWfpZQ+
Q7Sfu0oe4fq1HugMUGkSkj3D3Gkz5zizGKigTJYr5SEOy6C5pStbY8M807Er0YfLNS3EQL8hQ8vG
/5XC8y0CyvZDfTpe0TeyPmwfDjfYbUu5kvpzCggYKBTptQ9Dtty/klaZX4XmUxvcZY8USpqMqQsM
YyGLXUUOM5SFOgnYVb+wF5QaQ+TS1AB3gsxR9+sR/mSglGRea5envXSaFvPAyptchfKk4kuKKeQj
117ZZS3jDOTQ28WX3SxpU0RUGW9jEuWw1zBeB38dGZInGihpw7XPN0nknpAazBeIl7Fp8gswmnZM
yWoyFWuFox9NSSO0Q67BFGCpS2R2g0pjSihpN6RPe0bUoP0z1ukRT2rYgQfRzRCvKSvIQ+mNElbl
cPsf+eswYeOfyl4Iypz93R6nvy7W4TtfVTjYmGHbFu9sM+lkWVFk1OahHTMbUDegIoONSVhPzMHX
IRtkPnJYzSh1nEJAOSo8u7mdoZJJHWEUrgThAm+u+zyLwbrY0sbPvqAd5oaHXihexy3Ifa9P78FY
1SAq66OHQKsjTxdu3lmV9noRj0v/T+2gWbV1S+PRqqmY2Yf8MqllKp2sXAc1bdcZVrH3FVHNJKzI
3ArOfFwehGWU6eZ2ZiKEQZIaPrh1Ez1ZOmh/APJDO1pslJScypf0N+GHnQa9cwfnlUyks3QIp0Ci
KZ8eblaCdFibe+MtaOJzHB5oiLD5iOB8QEBbQ4lCsUYPY5v7kSkE02dJKnciQHrA/KPvK0E+X952
+AGKt9wSmaM7aFM=
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
