v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
B 5 1677.5 -292.5 1682.5 -287.5 {name=XXX
dir=inout}
T {9084ohm} 1760 -410 0 0 0.4 0.4 {}
N 1670 -290 1670 -280 { lab=GND}
N 1670 -290 1670 -260 { lab=GND}
N 1550 -270 1670 -270 { lab=GND}
N 1500 -340 1500 -270 { lab=GND}
N 1500 -270 1550 -270 { lab=GND}
N 1600 -320 1630 -320 { lab=vin}
N 1600 -340 1600 -320 { lab=vin}
N 1550 -340 1600 -340 { lab=vin}
N 1550 -340 1550 -330 { lab=vin}
N 1670 -390 1670 -350 { lab=vout}
N 1500 -480 1500 -400 { lab=#net1}
N 1500 -480 1670 -480 { lab=#net1}
N 1670 -480 1670 -450 { lab=#net1}
N 1590 -360 1590 -340 { lab=vin}
N 1590 -360 1590 -350 { lab=vin}
N 1630 -420 1650 -420 { lab=GND}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1650 -320 0 0 {name=M3
L=0.8
W=2
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 1670 -260 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1550 -300 0 0 {name=V1 value="sin 2 .1 1000"}
C {sky130_fd_pr/res_high_po_0p35.sym} 1670 -420 0 0 {name=R1
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/vsource.sym} 1500 -370 0 0 {name=V2 value=7
}
C {devices/lab_pin.sym} 1670 -370 0 0 {name=l2 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1590 -360 0 0 {name=l3 sig_type=std_logic lab=vin
}
C {devices/gnd.sym} 1630 -420 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 1320 -170 0 0 {name=s1 only_toplevel=false value=".param mc_mm_switch=0
.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 1320 -60 0 0 {name=s2 only_toplevel=false value=".control
tran 1u 20m
plot V(vin) V(vout)
.endc"}
