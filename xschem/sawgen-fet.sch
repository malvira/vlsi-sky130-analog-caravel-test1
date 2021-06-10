v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -350 -640 -350 -620 { lab=VDD}
N -350 -560 -350 -540 { lab=GND}
N -70 -620 50 -620 { lab=saw}
N 100 -540 120 -540 { lab=vd}
N 90 -590 160 -590 { lab=vt}
N 160 -590 160 -570 { lab=vt}
N 160 -510 160 -460 { lab=GND}
N 290 -540 290 -500 { lab=GND}
N 290 -640 290 -600 { lab=vt}
N 290 -770 290 -700 { lab=VDD}
N 160 -620 290 -620 { lab=vt}
N 160 -620 160 -590 { lab=vt}
N -110 -620 -110 -600 { lab=saw}
N -110 -540 -110 -510 { lab=GND}
N -140 -610 -110 -610 { lab=saw}
N -240 -780 -240 -760 { lab=VDD}
N -240 -700 -240 -670 { lab=vcur}
N -240 -610 -240 -570 { lab=GND}
N -240 -690 -150 -690 { lab=vcur}
N -110 -660 -110 -610 { lab=saw}
N -110 -620 0 -620 { lab=saw}
N -110 -840 -110 -810 { lab=#net1}
N -110 -750 -110 -720 { lab=#net2}
N 50 -410 50 -400 { lab=GND}
N 50 -560 50 -540 { lab=vd}
N -390 -560 -390 -520 { lab=GND}
N -390 -560 -350 -560 { lab=GND}
N 50 -540 50 -530 { lab=vd}
N 50 -540 100 -540 { lab=vd}
N 10 -540 10 -500 { lab=vd}
N 10 -540 50 -540 { lab=vd}
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

//.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
//.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 570 -180 0 0 {name=s2 only_toplevel=false value=".ic V(saw)=0
.control
tran 1n 200u
plot V(saw) V(Vt) V(vd)
//plot V(vd)
//plot I(Vb)
.endc"}
C {devices/vdd.sym} -350 -640 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -350 -540 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -350 -590 0 0 {name=V1 value=10}
C {devices/nmos.sym} 140 -540 0 0 {name=M1 model=2N7002 device=2N7002 footprint=SOT23 m=1}
C {devices/pmos.sym} 70 -590 0 1 {name=M2 
model=BSS84
device=BSS84
m=1}
C {devices/res.sym} 290 -670 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 290 -570 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 290 -500 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 290 -770 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 160 -460 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 290 -620 0 1 {name=l10 sig_type=std_logic lab=vt}
C {devices/capa.sym} -110 -570 0 0 {name=C2
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -110 -510 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -140 -610 0 0 {name=l12 sig_type=std_logic lab=saw}
C {devices/pnp.sym} -130 -690 0 0 {name=Q1
model=2N3906
device=2N2907
footprint=TO92
area=1
m=1}
C {devices/vdd.sym} -110 -900 0 0 {name=l13 lab=VDD}
C {devices/res.sym} -240 -730 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -240 -640 0 0 {name=R4
value=5k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -240 -570 0 0 {name=l16 lab=GND}
C {devices/vdd.sym} -240 -780 0 0 {name=l17 lab=VDD}
C {devices/lab_pin.sym} -240 -690 0 0 {name=l22 sig_type=std_logic lab=vcur}
C {devices/res.sym} -110 -780 0 0 {name=R7
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 50 -440 0 0 {name=Va value=0}
C {devices/vsource.sym} -110 -870 0 0 {name=Vb value=0}
C {devices/vsource.sym} -390 -490 0 0 {name=V2 value=10}
C {devices/vdd.sym} -390 -460 2 0 {name=l2 lab=VEE}
C {devices/gnd.sym} 50 -400 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 50 -540 0 0 {name=l5 sig_type=std_logic lab=vd}
C {devices/nmos.sym} 30 -500 0 0 {name=M3 model=2N7002 device=2N7002 footprint=SOT23 m=1}
