#!/bin/sh

netgen -batch lvs "../mag/sawgen-fet-sky130.spice sawgen-fet-sky130" "../xschem/sawgen-fet-sky130_tb.spice sawgen-fet-sky130" /usr/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl comp.out
