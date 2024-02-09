v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -340 200 -340 { lab=#net1}
N 260 -340 370 -340 { lab=out_fb}
N 150 -340 150 -290 { lab=#net1}
N 460 -450 460 -350 {
lab=Vout_LDO_Q}
N 520 -260 690 -260 {
lab=vss}
N 690 -450 690 -420 {
lab=Vout_LDO_Q}
N 80 -560 140 -560 {
lab=Vref}
N 370 -610 370 -580 {
lab=Vin}
N 300 -570 330 -570 {
lab=Vin}
N 300 -610 300 -570 {
lab=Vin}
N 300 -610 370 -610 {
lab=Vin}
N 370 -620 370 -610 {
lab=Vin}
N 370 -520 370 -510 {
lab=#net2}
N 460 -450 690 -450 {
lab=Vout_LDO_Q}
N 460 -290 460 -260 {
lab=vss}
N 370 -450 460 -450 {
lab=Vout_LDO_Q}
N 370 -450 370 -420 {
lab=Vout_LDO_Q}
N 690 -360 690 -260 {
lab=vss}
N 370 -260 460 -260 {
lab=vss}
N 310 -530 330 -530 {
lab=#net3}
N 370 -340 370 -330 {
lab=out_fb}
N 0 -480 140 -480 {
lab=#net1}
N 0 -480 0 -340 {
lab=#net1}
N 370 -360 370 -340 {
lab=out_fb}
N 370 -270 370 -260 {
lab=vss}
N 520 -260 520 -230 { lab=vss}
N 460 -260 520 -260 {
lab=vss}
N 700 -130 700 -100 {
lab=GND}
N 840 -140 840 -90 {
lab=VSS}
N 840 -240 840 -200 {
lab=Vref}
N 770 -230 770 -200 {
lab=Vin}
N 700 -230 700 -190 {
lab=VSS}
N 770 -140 770 -90 {
lab=VSS}
N 0 -340 150 -340 {
lab=#net1}
N 150 -150 150 -110 {
lab=vss}
N 150 -230 150 -210 {
lab=#net4}
C {devices/ind.sym} 230 -340 1 0 {name=L15
m=1
value=100e6
footprint=1206
device=inductor}
C {devices/capa.sym} 150 -260 0 0 {name=c1 m=1 value=100e6
}
C {devices/lab_wire.sym} 150 -130 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/isource.sym} 460 -320 0 0 {name=I1 value="dc \{Il\} pwl(0 10u 600u 10u 600.5u \{Il\} 900u \{Il\} 900.5u 10u)"
}
C {devices/capa.sym} 690 -390 0 0 {name=C2
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 -600 2 1 {name=p12 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 120 -560 1 0 {name=p13 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 520 -450 1 0 {name=p14 sig_type=std_logic lab=Vout_LDO_Q
}
C {devices/vccs.sym} 370 -550 2 1 {name=G2 value=6.6e-3}
C {devices/vsource.sym} 370 -480 0 0 {name=V5 value="0" savecurrent=false}
C {/foss/designs/EE628_LDO/Ideal_Error_amp.sym} 290 -530 2 1 {name=x2}
C {devices/res.sym} 370 -390 0 0 {name=R3
value=1K
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 370 -300 0 0 {name=R4
value=1K
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 300 -340 1 0 {name=p15 sig_type=std_logic lab=out_fb}
C {devices/lab_wire.sym} 520 -250 3 0 {name=l2 sig_type=std_logic lab=vss}
C {devices/code.sym} 330 -200 0 0 {name=NGSPICE
only_toplevel=true
value="* Control
.param B=0 temp=27 vdd=1.8 Il=2m Res=1Meg Cap=10p Gm=20m
.model mysw SW vt=\{vdd/2\} ron=10k roff=10gig reltol=1e-4
.control
save all
ac dec 20 10 1e9
let phase=180/3.14*cph(out_fb)
plot vdb(out_fb) 
plot phase
plot vdb(out_fb) phase xlog 

let phase=180 + 180/3.14*cph(out_fb)
meas ac ugbw when vdb(out_fb)=0
meas ac pm find phase when vdb(out_fb)=0
meas ac gain find vdb(out_fb) at=10
*echo \\"ugbw,pm,gain\\" > ac.txt
*echo \\"mb1,$&ugbw,$&pm,$&gain\\" >> ac.txt
.endc
"}
C {devices/code.sym} 200 -200 0 0 {name=CORNERS_NG 
only_toplevel=false
format="tcleval( @value )"
value="* Model Corners
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt 
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
**.include \\\\$::CORNERS\\\\/ngspice/tt.spice
*.include \\\\$::CORNERS\\\\/ngspice/ff.spice
*.include \\\\$::CORNERS\\\\/ngspice/ss.spice
*.include \\\\$::CORNERS\\\\/ngspice/sf.spice
*.include \\\\$::CORNERS\\\\/ngspice/fs.spice
"}
C {devices/title.sym} 20 240 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/gnd.sym} 700 -100 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 840 -170 0 0 {name=V2 value="dc 0.6" savecurrent=false}
C {devices/vsource.sym} 700 -160 0 0 {name=V3 value="0" savecurrent=false}
C {devices/lab_pin.sym} 700 -220 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 770 -100 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -120 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 770 -220 2 1 {name=p6 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 840 -210 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 770 -170 0 0 {name=V1 value="dc \{vdd\} pwl(0 0 10u \{vdd\} 200u \{vdd\} 200.5u \{1.25*vdd\} 500u \{1.25*vdd\} 500.5u \{vdd\}) "}
C {devices/vsource.sym} 150 -180 0 0 {name=V4 value="dc 0 ac 1" savecurrent=false}
