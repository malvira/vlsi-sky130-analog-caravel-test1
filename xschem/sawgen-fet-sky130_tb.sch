v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -720 40 -700 { lab=VDD}
N 40 -640 40 -620 { lab=GND}
N 290 -630 290 -620 { lab=GND}
N 290 -630 320 -630 { lab=GND}
N 290 -700 290 -690 { lab=VDD}
N 290 -690 320 -690 { lab=VDD}
N 300 -670 320 -670 { lab=cur}
N 300 -670 300 -650 { lab=cur}
N 300 -650 320 -650 { lab=cur}
N 440 -580 440 -560 { lab=Vt}
N 440 -560 470 -560 { lab=Vt}
N 470 -580 470 -560 { lab=Vt}
N 590 -590 590 -580 { lab=GND}
N 560 -650 590 -650 { lab=saw}
N 410 -580 410 -560 { lab=Vd}
N 590 -650 630 -650 { lab=saw}
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
plot V(saw) V(cur) V(vt) V(vd) 
//V(Vt) V(vd)
//plot V(vd)
//plot I(Vb)
.endc"}
C {devices/vdd.sym} 40 -720 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 40 -620 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 40 -670 0 0 {name=V1 value=10}
C {sawgen-fet-sky130.sym} 470 -680 0 0 {name=x1}
C {devices/vdd.sym} 290 -700 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 290 -620 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 590 -620 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 590 -580 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 410 -560 3 0 {name=l6 sig_type=std_logic lab=Vd}
C {devices/lab_pin.sym} 450 -560 3 0 {name=l7 sig_type=std_logic lab=Vt}
C {devices/lab_pin.sym} 630 -650 2 0 {name=l8 sig_type=std_logic lab=saw}
C {devices/lab_pin.sym} 300 -660 0 0 {name=l9 sig_type=std_logic lab=cur}
