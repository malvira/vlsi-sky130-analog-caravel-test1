v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1550 -270 1670 -270 { lab=GND}
N 1500 -340 1500 -270 { lab=GND}
N 1500 -270 1550 -270 { lab=GND}
N 1550 -340 1600 -340 { lab=vin}
N 1550 -340 1550 -330 { lab=vin}
N 1500 -480 1500 -400 { lab=#net1}
N 1500 -480 1670 -480 { lab=#net1}
N 1590 -360 1590 -340 { lab=vin}
N 1590 -360 1590 -350 { lab=vin}
N 1630 -390 1630 -340 { lab=vin}
N 1600 -340 1630 -340 { lab=vin}
N 1670 -480 1950 -480 { lab=#net1}
N 1950 -480 1950 -390 { lab=#net1}
N 1930 -390 1950 -390 { lab=#net1}
N 1930 -350 1950 -350 { lab=GND}
N 1950 -350 1950 -340 { lab=GND}
N 1930 -370 1960 -370 { lab=vout}
C {devices/gnd.sym} 1670 -270 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1550 -300 0 0 {name=V1 value="sin 2 .1 1000"}
C {devices/vsource.sym} 1500 -370 0 0 {name=V2 value=7
}
C {devices/lab_pin.sym} 1590 -360 0 0 {name=l3 sig_type=std_logic lab=vin
}
C {devices/code_shown.sym} 1320 -170 0 0 {name=s1 only_toplevel=false value=".param mc_mm_switch=0
.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 1320 -60 0 0 {name=s2 only_toplevel=false value=".control
tran 1u 20m
plot V(vin) V(vout)
.endc"}
C {cellA.sym} 1780 -370 0 0 {name=x1}
C {devices/gnd.sym} 1950 -340 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1960 -370 2 0 {name=l4 sig_type=std_logic lab=vout
}
