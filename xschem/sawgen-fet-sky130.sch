v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {9084ohm} 460 -650 0 0 0.4 0.4 {}
N 150 -760 150 -740 { lab=VDD}
N 150 -680 150 -660 { lab=GND}
N 110 -680 110 -640 { lab=GND}
N 110 -680 150 -680 { lab=GND}
N 400 -670 420 -670 { lab=GND}
N 440 -860 440 -810 { lab=VDD}
N 440 -840 440 -810 { lab=VDD}
N 480 -780 490 -780 { lab=cur}
N 480 -780 490 -780 { lab=cur}
N 490 -780 560 -780 { lab=cur}
N 600 -860 600 -810 { lab=VDD}
N 600 -640 600 -620 { lab=GND}
N 510 -780 510 -730 { lab=cur}
N 440 -730 510 -730 { lab=cur}
N 600 -730 730 -730 { lab=saw}
N 730 -730 730 -710 { lab=saw}
N 770 -680 970 -680 { lab=#net1}
N 840 -680 840 -650 { lab=#net1}
N 730 -620 800 -620 { lab=#net2}
N 730 -650 730 -620 { lab=#net2}
N 730 -620 730 -600 { lab=#net2}
N 780 -620 780 -570 { lab=#net2}
N 770 -570 780 -570 { lab=#net2}
N 840 -590 840 -520 { lab=GND}
N 730 -540 730 -520 { lab=GND}
N 930 -730 950 -730 { lab=GND}
N 930 -600 950 -600 { lab=GND}
N 970 -860 970 -760 { lab=VDD}
N 970 -700 970 -680 { lab=#net1}
N 970 -680 970 -630 { lab=#net1}
N 970 -570 970 -520 { lab=GND}
N 440 -750 440 -720 { lab=cur}
N 440 -720 440 -700 { lab=cur}
N 440 -640 440 -620 { lab=GND}
N 600 -750 600 -700 { lab=saw}
N 580 -630 600 -630 { lab=GND}
N 580 -660 580 -630 { lab=GND}
N 580 -700 580 -680 { lab=saw}
N 580 -700 600 -700 { lab=saw}
C {devices/code_shown.sym} -880 -90 0 0 {name=s1 only_toplevel=false value="
.model BSS84 VDMOS(pchan Rg=3 Vto=-2.1 Rd=2.4 Rs=1.8 Rb=3 Kp=.2 Cgdmax=.04n Cgdmin=.001n Cgs=.02n Cjo=.01n Is=2p mfg=Philips Vds=-50 Ron=6000m Qg=1n)
.model 2N7002 VDMOS(Rg=3 Vto=1.6 Rd=0 Rs=.75 Rb=.14 Kp=.17 mtriode=1.25 Cgdmax=80p Cgdmin=12p Cgs=50p Cjo=50p Is=.04p mfg=Fairchild Vds=60 Ron=2 Qg=1.5n)


.model 2N3904 NPN(IS=1E-14 VAF=100
+  Bf=300 IKF=0.4 XTB=1.5 BR=4
+  CJC=4E-12  CJE=8E-12 RB=20 RC=0.1 RE=0.1
+  TR=250E-9  TF=350E-12 ITF=1 VTF=2 XTF=3 Vceo=40 Icrating=200m mfg=Philips)

.model 2N3906 PNP(IS=1E-14 VAF=100
+  BF=200 IKF=0.4 XTB=1.5 BR=4
+  CJC=4.5E-12 CJE=10E-12 RB=20 RC=0.1 RE=0.1
+  TR=250E-9   TF=350E-12 ITF=1 VTF=2 XTF=3 Vceo=40  Icrating=200m mfg=Philips)

//.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_g5v0d10v5.pm3.spice
//.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__res_high_po_0p35.model.spice

.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"
//.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"
}
C {devices/code_shown.sym} -10 -470 0 0 {name=s2 only_toplevel=false value=".ic V(saw)=0
.control
tran 10n 200u
plot V(saw)  V(cur)
//V(Vt) V(vd)
//plot V(vd)
//plot I(Vb)
.endc"}
C {devices/vdd.sym} 150 -760 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 150 -660 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 150 -710 0 0 {name=V1 value=10}
C {devices/lab_pin.sym} 600 -720 0 0 {name=l12 sig_type=std_logic lab=saw}
C {devices/vsource.sym} 110 -610 0 0 {name=V2 value=10}
C {devices/vdd.sym} 110 -580 2 0 {name=l2 lab=VEE}
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
C {devices/gnd.sym} 400 -670 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 440 -620 0 0 {name=l18 lab=GND}
C {devices/vdd.sym} 440 -860 0 0 {name=l19 lab=VDD}
C {devices/vdd.sym} 600 -860 0 0 {name=l20 lab=VDD}
C {devices/gnd.sym} 600 -620 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 440 -720 0 0 {name=l5 sig_type=std_logic lab=cur}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 750 -680 0 1 {name=M1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 750 -570 0 1 {name=M2
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
C {devices/gnd.sym} 730 -520 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 840 -520 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/res_high_po_0p35.sym} 970 -730 0 0 {name=R3
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/gnd.sym} 930 -730 0 0 {name=l9 lab=GND}
C {sky130_fd_pr/res_high_po_0p35.sym} 970 -600 0 0 {name=R4
W=0.35
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/gnd.sym} 930 -600 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 970 -520 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 970 -860 0 0 {name=l13 lab=VDD}
C {sky130_fd_pr/vpp_cap.sym} 600 -670 0 0 {name=C1
model=cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5
W=1
L=1 
mult=5000 
spiceprefix=X}
