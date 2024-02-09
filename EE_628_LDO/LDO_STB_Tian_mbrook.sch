v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 350 330 350 { lab=out_fb}
N 420 240 420 340 {
lab=Vout_LDO_Q}
N 480 430 650 430 {
lab=vss}
N 650 240 650 270 {
lab=Vout_LDO_Q}
N 40 130 100 130 {
lab=Vref}
N 330 80 330 110 {
lab=Vin}
N 260 120 290 120 {
lab=Vin}
N 260 80 260 120 {
lab=Vin}
N 260 80 330 80 {
lab=Vin}
N 330 70 330 80 {
lab=Vin}
N 330 170 330 180 {
lab=#net1}
N 420 240 650 240 {
lab=Vout_LDO_Q}
N 420 400 420 430 {
lab=vss}
N 330 240 420 240 {
lab=Vout_LDO_Q}
N 330 240 330 270 {
lab=Vout_LDO_Q}
N 650 330 650 430 {
lab=vss}
N 330 430 420 430 {
lab=vss}
N 270 160 290 160 {
lab=#net2}
N 330 350 330 360 {
lab=out_fb}
N -40 210 100 210 {
lab=#net3}
N -40 210 -40 350 {
lab=#net3}
N 330 330 330 350 {
lab=out_fb}
N 330 420 330 430 {
lab=vss}
N 480 430 480 460 { lab=vss}
N 420 430 480 430 {
lab=vss}
N 660 560 660 590 {
lab=GND}
N 800 550 800 600 {
lab=VSS}
N 800 450 800 490 {
lab=Vref}
N 730 460 730 490 {
lab=Vin}
N 660 460 660 500 {
lab=VSS}
N 730 550 730 600 {
lab=VSS}
N 110 540 110 580 {
lab=vss}
N 110 350 110 480 {
lab=probe}
N 110 350 160 350 {
lab=probe}
N 50 350 110 350 {
lab=probe}
N -40 350 -10 350 {
lab=#net3}
C {devices/lab_wire.sym} 110 560 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/isource.sym} 420 370 0 0 {name=I1 value="dc \{Il\} pwl(0 10u 600u 10u 600.5u \{Il\} 900u \{Il\} 900.5u 10u)"
}
C {devices/capa.sym} 650 300 0 0 {name=C2
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 330 90 2 1 {name=p12 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 80 130 1 0 {name=p13 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 480 240 1 0 {name=p14 sig_type=std_logic lab=Vout_LDO_Q
}
C {devices/vccs.sym} 330 140 2 1 {name=G2 value=6.6e-3}
C {devices/vsource.sym} 330 210 0 0 {name=V5 value="0" savecurrent=false}
C {/foss/designs/EE628_LDO/Ideal_Error_amp.sym} 250 160 2 1 {name=x2}
C {devices/res.sym} 330 300 0 0 {name=R3
value=1K
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 330 390 0 0 {name=R4
value=1K
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 260 350 1 0 {name=p15 sig_type=std_logic lab=out_fb}
C {devices/lab_wire.sym} 480 440 3 0 {name=l2 sig_type=std_logic lab=vss}
C {devices/code.sym} 790 260 0 0 {name=CORNERS_NG 
only_toplevel=false
format="tcleval( @value )"
value="* Model Corners
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt 
.lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerRES.lib res_typ

"}
C {devices/gnd.sym} 660 590 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 800 520 0 0 {name=V2 value="dc 0.6" savecurrent=false}
C {devices/vsource.sym} 660 530 0 0 {name=V3 value="0" savecurrent=false}
C {devices/lab_pin.sym} 660 470 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 590 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 570 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 470 2 1 {name=p6 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 800 480 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 730 520 0 0 {name=V1 value="dc \{vdd\} pwl(0 0 10u \{vdd\} 200u \{vdd\} 200.5u \{1.25*vdd\} 500u \{1.25*vdd\} 500.5u \{vdd\}) "}
C {devices/isource.sym} 110 510 2 0 {name=Iprobe1 value="dc 0 ac 0"
}
C {devices/vsource.sym} 190 350 3 1 {name="Vprobe1" value="dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 20 350 1 1 {name=Vprobe2 value="dc 0" savecurrent=false}
C {devices/code_shown.sym} 930 40 0 0 {name=NGSpice1 only_toplevel=false value="

.param B=0 temp=27 vdd=1.8 Il=2m Res=1Meg Cap=10p Gm=20m
**.model mysw SW vt=\{vdd/2\} ron=10k roff=10gig reltol=1e-4

.control
save all



************************************ Test ************

.OPTIONS itl1=200
.OPTIONS itl2=200
.OPTIONS itl4=200

let runs=2
let run=0

alter @Vprobe1[acmag]=1
alter @Iprobe1[acmag]=0

dowhile run<runs
set run =$&run
set temp=27

ac dec 20 0.01 500meg
**write LDO_testLDO_stb_tb_\{$run\}.raw 

**all

alter @Vprobe1[acmag]=0
alter @Iprobe1[acmag]=1

let run=run + 1

end

let ip11 = ac1.i(Vprobe1)
let ip12 = ac1.i(Vprobe2)
let ip21 = ac2.i(Vprobe1)
let ip22 = ac2.i(Vprobe2)
let vprb1 = ac1.v(probe)
let vprb2 = ac2.v(probe)

let mb = 1/(vprb1+ip22)-1

let av = 1/(1/(2*(ip11*vprb2-vprb1*ip21)+vprb1+ip21)-1)

let phase=180/PI*vp(av)
let phase_mb = 180/PI*vp(mb)
plot vdb(av)
plot phase
plot vdb(mb)
plot phase_mb
plot vdb(mb) phase_mb xlog
plot vdb(av) phase xlog

echo “—-”
echo “—-”

meas ac gm_db find vdb(av) when vp(av)=0
meas ac pm_deg find phase when vdb(av)=0
meas ac 3db_f when phase=135
meas ac 0db_f when vdb(av)=0
meas ac dc_gain find vdb(av) at=0.01
meas ac m6dB when vdB(av)=-6

echo “—-”
echo “—-”



.endc"}
C {devices/lab_pin.sym} 110 370 0 0 {name=p4 sig_type=std_logic lab=probe}
