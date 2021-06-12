v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {7k8} 500 -650 0 0 0.2 0.2 {}
N 400 -670 420 -670 { lab=#net1}
N 440 -860 440 -810 { lab=VDD}
N 440 -840 440 -810 { lab=VDD}
N 480 -780 490 -780 { lab=cur}
N 480 -780 490 -780 { lab=cur}
N 490 -780 560 -780 { lab=cur}
N 600 -860 600 -810 { lab=VDD}
N 510 -780 510 -730 { lab=cur}
N 440 -730 510 -730 { lab=cur}
N 600 -730 730 -730 { lab=saw}
N 730 -730 730 -710 { lab=saw}
N 770 -680 970 -680 { lab=vt}
N 840 -680 840 -650 { lab=vt}
N 730 -620 800 -620 { lab=vd}
N 730 -650 730 -620 { lab=vd}
N 730 -620 730 -600 { lab=vd}
N 840 -590 840 -520 { lab=#net1}
N 930 -730 950 -730 { lab=#net1}
N 930 -600 950 -600 { lab=#net1}
N 970 -860 970 -760 { lab=VDD}
N 970 -700 970 -680 { lab=vt}
N 970 -680 970 -630 { lab=vt}
N 970 -570 970 -520 { lab=#net1}
N 440 -750 440 -720 { lab=cur}
N 440 -720 440 -700 { lab=cur}
N 440 -640 440 -620 { lab=#net1}
N 600 -750 600 -700 { lab=saw}
N 600 -700 600 -670 { lab=saw}
N 870 -710 870 -680 { lab=vt}
N 440 -900 440 -860 { lab=VDD}
N 360 -900 440 -900 { lab=VDD}
N 600 -900 600 -860 { lab=VDD}
N 440 -900 600 -900 { lab=VDD}
N 970 -900 970 -860 { lab=VDD}
N 600 -900 970 -900 { lab=VDD}
N 440 -620 440 -440 { lab=#net1}
N 440 -440 970 -440 { lab=#net1}
N 970 -520 970 -440 { lab=#net1}
N 840 -520 840 -440 { lab=#net1}
N 730 -480 730 -440 { lab=#net1}
N 600 -610 600 -440 { lab=#net1}
N 930 -600 930 -440 { lab=#net1}
N 400 -670 400 -620 { lab=#net1}
N 400 -620 440 -620 { lab=#net1}
N 930 -730 930 -600 { lab=#net1}
N 360 -440 440 -440 {}
C {devices/lab_pin.sym} 600 -720 0 0 {name=l12 sig_type=std_logic lab=saw}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 460 -780 0 1 {name=M5
L=0.8
W=16
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 580 -780 0 0 {name=M6
L=0.8
W=2
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 440 -670 0 0 {name=R8
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 440 -720 0 0 {name=l5 sig_type=std_logic lab=cur}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 750 -680 0 1 {name=M1
L=0.8
W=16
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 820 -620 0 0 {name=M4
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
C {sky130_fd_pr/res_high_po_0p35.sym} 970 -730 0 0 {name=R3
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 970 -600 0 0 {name=R4
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/capa.sym} 600 -640 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 730 -630 0 0 {name=l6 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} 870 -710 0 0 {name=l14 sig_type=std_logic lab=vt}
C {sky130_fd_pr/diode.sym} 730 -570 2 0 {name=D1
model=diode_pw2nd_05v5
area=1
}
C {sky130_fd_pr/diode.sym} 730 -510 2 0 {name=D2
model=diode_pw2nd_05v5
area=1
}
C {devices/ipin.sym} 360 -900 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 360 -440 0 0 {name=p2 lab=VSS}
