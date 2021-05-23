v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
B 5 1677.5 -292.5 1682.5 -287.5 {name=XXX
dir=inout}
T {9084ohm} 1760 -410 0 0 0.4 0.4 {}
T {Test resistor} 2070 -400 0 0 0.4 0.4 {}
T {9084ohm} 2070 -370 0 0 0.4 0.4 {}
N 1670 -390 1670 -350 { lab=out}
N 1630 -420 1650 -420 { lab=GND}
N 1600 -320 1630 -320 { lab=in}
N 1590 -320 1600 -320 { lab=in}
N 1670 -370 1700 -370 { lab=out}
N 1670 -480 1670 -450 { lab=VDD}
N 1670 -480 1690 -480 { lab=VDD}
N 1670 -290 1680 -290 { lab=VSS}
N 1670 -290 1670 -250 { lab=VSS}
N 1670 -250 1690 -250 { lab=VSS}
N 1940 -420 1960 -420 { lab=GND}
N 1980 -390 1980 -360 { lab=R2}
N 1980 -360 2000 -360 { lab=R2}
N 1980 -480 1980 -450 { lab=R1}
N 1980 -480 2000 -480 { lab=R1}
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
C {sky130_fd_pr/res_high_po_0p35.sym} 1670 -420 0 0 {name=R1
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/gnd.sym} 1630 -420 0 0 {name=l4 lab=GND}
C {devices/ipin.sym} 1590 -320 0 0 {name=p1 lab=in}
C {devices/iopin.sym} 1690 -480 0 0 {name=p2 lab=VDD}
C {devices/opin.sym} 1700 -370 0 0 {name=p3 lab=out}
C {devices/iopin.sym} 1690 -250 0 0 {name=p4 lab=VSS}
C {sky130_fd_pr/res_high_po_0p35.sym} 1980 -420 0 0 {name=R2
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/gnd.sym} 1940 -420 0 0 {name=l1 lab=GND}
C {devices/iopin.sym} 2000 -480 0 0 {name=p5 lab=R1}
C {devices/iopin.sym} 2000 -360 0 0 {name=p6 lab=R2}
