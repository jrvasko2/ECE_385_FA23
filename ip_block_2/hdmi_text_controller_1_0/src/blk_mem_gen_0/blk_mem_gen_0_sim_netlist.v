// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Wed Oct 25 14:19:41 2023
// Host        : LAPTOP-2QLAU5K9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/18472/385_xilinx_files/ip_repo/hdmi_text_controller_1_0/src/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_MEM_TYPE = "0" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
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
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27936)
`pragma protect data_block
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
KgFlecae
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
