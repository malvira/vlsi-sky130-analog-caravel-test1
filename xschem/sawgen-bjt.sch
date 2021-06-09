v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 430 -540 430 -520 { lab=saw}
N 430 -460 430 -430 { lab=GND}
N 400 -530 430 -530 { lab=saw}
N 90 -580 90 -560 { lab=VDD}
N 90 -500 90 -480 { lab=GND}
N 300 -700 300 -680 { lab=VDD}
N 300 -620 300 -590 { lab=vcur}
N 300 -530 300 -490 { lab=GND}
N 300 -610 390 -610 { lab=vcur}
N 430 -580 430 -530 { lab=saw}
N 430 -540 540 -540 { lab=saw}
N 540 -540 540 -530 { lab=saw}
N 540 -470 540 -440 { lab=#net1}
N 540 -440 590 -440 { lab=#net1}
N 580 -500 630 -500 { lab=vt}
N 630 -500 630 -470 { lab=vt}
N 630 -410 630 -380 { lab=GND}
N 630 -500 740 -500 { lab=vt}
N 740 -520 740 -500 { lab=vt}
N 740 -520 740 -470 { lab=vt}
N 740 -620 740 -580 { lab=VDD}
N 740 -410 740 -380 { lab=GND}
N 430 -760 430 -730 { lab=VDD}
N 430 -670 430 -640 { lab=#net2}
C {devices/capa.sym} 430 -490 0 0 {name=C1
m=1
value=.1n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 430 -430 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -360 -260 0 0 {name=s1 only_toplevel=false value="
*
.model 2N3904 NPN(IS=1E-14 VAF=100
+  Bf=300 IKF=0.4 XTB=1.5 BR=4
+  CJC=4E-12  CJE=8E-12 RB=20 RC=0.1 RE=0.1
+  TR=250E-9  TF=350E-12 ITF=1 VTF=2 XTF=3 Vceo=40 Icrating=200m mfg=Philips)

.model 2N3906 PNP(IS=1E-14 VAF=100
+  BF=200 IKF=0.4 XTB=1.5 BR=4
+  CJC=4.5E-12 CJE=10E-12 RB=20 RC=0.1 RE=0.1
+  TR=250E-9   TF=350E-12 ITF=1 VTF=2 XTF=3 Vceo=40  Icrating=200m mfg=Philips)

.OPTION ABSTOL=1e-15.
.OPTION GMIN=1.0e-12.
.OPTION ITL1=1e5
.OPTION RSHUNT=1e12
.OPTION RELTOL=1e-5
.OPTION METHOD=gear
//.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
//.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
C {devices/code_shown.sym} 570 -180 0 0 {name=s2 only_toplevel=false value=".ic V(saw)=0
.control
tran 1n 200u
plot V(saw) V(vcur) V(Vt)
.endc"}
C {devices/lab_pin.sym} 400 -530 0 0 {name=l5 sig_type=std_logic lab=saw}
C {devices/pnp.sym} 410 -610 0 0 {name=Q1
model=2N3906
device=2N2907
footprint=TO92
area=1
m=1}
C {devices/vdd.sym} 430 -760 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} 90 -580 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 90 -480 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 90 -530 0 0 {name=V1 value=10}
C {devices/res.sym} 300 -650 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 300 -560 0 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 300 -490 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 300 -700 0 0 {name=l7 lab=VDD}
C {devices/npn.sym} 610 -440 0 0 {name=Q2
model=2N3904
device=MMBT2222
footprint=SOT23
area=1
m=1}
C {devices/pnp.sym} 560 -500 0 1 {name=Q3
model=2N3906
device=2N2907
footprint=TO92
area=1
m=1}
C {devices/res.sym} 740 -440 0 0 {name=R3
value=100
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 740 -550 0 0 {name=R4
value=100
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 740 -620 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 630 -380 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 740 -380 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 740 -500 0 1 {name=l12 sig_type=std_logic lab=vt
}
C {devices/lab_pin.sym} 300 -610 0 0 {name=l13 sig_type=std_logic lab=vcur}
C {devices/res.sym} 430 -700 0 0 {name=R5
value=100k
footprint=1206
device=resistor
m=1}
