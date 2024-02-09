v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 5 417.5 -152.5 422.5 -147.5 {name=Vout
dir=inout}
N 100 -150 100 -100 {
lab=#net1}
N 100 -150 200 -150 {
lab=#net1}
N 200 -150 200 -110 {
lab=#net1}
N 100 -40 100 -10 {
lab=GND}
N 350 -10 390 -10 {
lab=GND}
N 390 -50 390 -10 {
lab=GND}
N 270 -150 270 -110 {
lab=#net1}
N 200 -150 270 -150 {
lab=#net1}
N 200 -50 200 -10 {
lab=GND}
N 100 -10 200 -10 {
lab=GND}
N 270 -50 270 -10 {
lab=GND}
N 240 -10 270 -10 {
lab=GND}
N 270 -150 350 -150 {
lab=#net1}
N 350 -150 350 -100 {
lab=#net1}
N 350 -60 350 -10 {
lab=GND}
N 270 -10 350 -10 {
lab=GND}
N 390 -150 390 -110 {
lab=Vout}
N 390 -150 450 -150 {
lab=Vout}
N 240 -10 240 10 {
lab=GND}
N 200 -10 240 -10 {
lab=GND}
N -40 -90 60 -90 {
lab=Vm}
N -40 -50 60 -50 {
lab=Vp}
N -150 0 -150 10 {
lab=GND}
N -150 10 240 10 {
lab=GND}
N -230 -60 -230 0 {
lab=GND}
N -230 0 -150 0 {
lab=GND}
N -150 -50 -150 0 {
lab=GND}
C {devices/vcvs.sym} 390 -80 0 0 {name=E1 value=1}
C {devices/code.sym} 10 -360 0 0 {name="MODEL" only_toplevel=false value=".lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt 
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ
**.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/sg13g2_moslv_mod.lib mos_tt 
**.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/sg13g2_moslv_parm.lib mos_tt
**.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/sg13g2_moslv_stat.lib mos_tt"}
C {devices/vccs.sym} 100 -70 2 1 {name=G1 value="Gm"}
C {devices/res.sym} 200 -80 0 0 {name=R1
value="Res"
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 270 -80 0 0 {name=C1
m=1
value="Cap"
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 240 10 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 30 -90 1 0 {name=p1 sig_type=std_logic lab=Vm}
C {devices/lab_pin.sym} 30 -50 3 0 {name=p2 sig_type=std_logic lab=Vp}
C {devices/lab_pin.sym} 410 -150 1 0 {name=p3 sig_type=std_logic lab=Vout}
C {devices/ipin.sym} -40 -90 0 0 {name=p6 lab=Vm}
C {devices/ipin.sym} -40 -50 0 0 {name=p7 lab=Vp}
C {devices/opin.sym} 450 -150 0 0 {name=p8 lab=Vout}
C {devices/title.sym} -30 80 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/vsource.sym} -150 -80 0 0 {name=V2 value="dc 0.7 ac 1" savecurrent=false}
C {devices/vsource.sym} -230 -90 0 0 {name=V1 value="dc 0.7" savecurrent=false}
