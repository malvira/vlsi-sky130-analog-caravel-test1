v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -290 510 -290 { lab=#net1}
N 300 -250 430 -250 { lab=#net2}
N 300 -210 400 -210 { lab=#net3}
N 300 10 450 10 { lab=#net4}
N 300 30 470 30 { lab=#net5}
N 300 50 410 50 { lab=#net6}
N 300 -50 620 -50 { lab=#net7}
N 300 -70 480 -70 { lab=#net8}
N 300 -270 400 -270 { lab=#net9}
N 300 -230 400 -230 { lab=#net10}
N 300 -190 400 -190 { lab=#net11}
N 300 -190 400 -190 { lab=#net11}
N 300 -170 400 -170 { lab=#net12}
N 290 -150 390 -150 { lab=#net13}
N 290 -130 390 -130 { lab=#net14}
N 290 -110 390 -110 { lab=#net15}
N 300 -90 400 -90 { lab=#net16}
N 300 -30 400 -30 { lab=#net17}
N 300 -10 400 -10 { lab=#net18}
N 300 70 400 70 { lab=#net19}
N -60 -290 -0 -290 { lab=#net20}
N -60 -270 0 -270 { lab=#net21}
N -60 -250 0 -250 { lab=#net22}
N -60 -230 0 -230 { lab=#net23}
N -60 -210 0 -210 { lab=#net24}
N -60 -210 0 -210 { lab=#net24}
N -60 -190 0 -190 { lab=#net25}
N -60 -190 0 -190 { lab=#net25}
N -60 -170 0 -170 { lab=#net26}
N -60 -150 0 -150 { lab=#net27}
N -60 -130 0 -130 { lab=#net28}
N -60 -110 0 -110 { lab=#net29}
N -60 -90 0 -90 { lab=#net30}
N -60 -70 0 -70 { lab=#net31}
N -60 -50 0 -50 { lab=#net32}
C {user_analog_project_wrapper.sym} 150 -110 0 0 {name=x1}
C {devices/code_shown.sym} 920 -130 0 0 {name=s1 only_toplevel=false value=".param mc_mm_switch=0
.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.control
tran 10u 20m
plot V(io_out[11]) V(io_out[12]) V(io_out[15]) V(io_out[16])
+ V(gpio_analog[3]) V(gpio_analog[7])
.endc"}
