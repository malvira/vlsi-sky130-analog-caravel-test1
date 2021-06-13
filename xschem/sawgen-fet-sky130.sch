v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {7k8} 500 -530 0 0 0.2 0.2 {}
N 400 -550 420 -550 { lab=VSS}
N 440 -860 440 -810 { lab=VDD}
N 440 -840 440 -810 { lab=VDD}
N 480 -780 490 -780 { lab=Ri}
N 480 -780 490 -780 { lab=Ri}
N 490 -780 560 -780 { lab=Ri}
N 600 -860 600 -810 { lab=VDD}
N 510 -780 510 -730 { lab=Ri}
N 440 -730 510 -730 { lab=Ri}
N 600 -730 730 -730 { lab=Csaw}
N 730 -730 730 -710 { lab=Csaw}
N 840 -680 840 -650 { lab=Vt}
N 730 -620 800 -620 { lab=Vd}
N 730 -650 730 -620 { lab=Vd}
N 730 -620 730 -600 { lab=Vd}
N 840 -590 840 -520 { lab=VSS}
N 930 -730 950 -730 { lab=VSS}
N 930 -600 950 -600 { lab=VSS}
N 970 -860 970 -760 { lab=VDD}
N 970 -700 970 -680 { lab=Vb}
N 970 -680 970 -630 { lab=Vb}
N 970 -570 970 -520 { lab=VSS}
N 440 -750 440 -720 { lab=Ri}
N 440 -720 440 -700 { lab=Ri}
N 440 -520 440 -500 { lab=VSS}
N 600 -750 600 -700 { lab=Csaw}
N 600 -700 600 -670 { lab=Csaw}
N 440 -900 440 -860 { lab=VDD}
N 360 -900 440 -900 { lab=VDD}
N 600 -900 600 -860 { lab=VDD}
N 440 -900 600 -900 { lab=VDD}
N 970 -900 970 -860 { lab=VDD}
N 600 -900 970 -900 { lab=VDD}
N 440 -440 970 -440 { lab=VSS}
N 970 -520 970 -440 { lab=VSS}
N 840 -520 840 -440 { lab=VSS}
N 730 -480 730 -440 { lab=VSS}
N 600 -610 600 -440 { lab=VSS}
N 930 -600 930 -440 { lab=VSS}
N 400 -550 400 -500 { lab=VSS}
N 400 -500 440 -500 { lab=VSS}
N 930 -730 930 -600 { lab=VSS}
N 360 -440 440 -440 { lab=VSS}
N 440 -500 440 -440 { lab=VSS}
N 440 -700 440 -660 { lab=Ri}
N 440 -620 440 -580 { lab=Rb}
N 770 -680 840 -680 { lab=Vt}
N 840 -560 870 -560 { lab=VSS}
N 870 -620 870 -560 { lab=VSS}
N 840 -620 870 -620 { lab=VSS}
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
C {sky130_fd_pr/res_high_po_0p35.sym} 440 -550 0 0 {name=R8
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
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
C {devices/iopin.sym} 440 -620 0 1 { name=p5 lab=Rb}
C {devices/iopin.sym} 440 -660 0 1 { name=p6 lab=Ri}
C {devices/iopin.sym} 600 -670 0 1 { name=p7 lab=Csaw}
C {devices/iopin.sym} 840 -680 0 0 { name=p8 lab=Vt}
C {devices/iopin.sym} 970 -660 0 0 { name=p9 lab=Vb}
C {devices/iopin.sym} 730 -610 0 1 { name=p10 lab=Vd}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 820 -620 0 0 {name=M4
L=0.8
W=2
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
