 ***** INVERTER MODEL STATIC 1 *****


* MODEL FILE 
.LIB /project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib nom

.TEMP 27

.PARAM wn=1u
.PARAM wp=3*wn
.PARAM lc=1u

* DEFINE SUPPLY
vsupply		vd	0	DC	2.5
vin		in	0	DC	2.5

* DEFINE MOSFET
MP1	out	in	vd	vd	scmosp	w=3u	l=lc	m=1
MN1	out	in	0	0	scmosn	w=1u	l=lc	m=1

MP2	out2     in      vd      vd      scmosp  w=3u    l=lc    m=1
MN2	out2     in      0       0       scmosn  w=3u    l=lc    m=1

MP3     out3     in      vd      vd      scmosp  w=9u    l=lc    m=1
MN3     out3     in      0       0       scmosn  w=1u    l=lc    m=1


* SWEEP INPUT VOLTAGE
.DC	vin	0	2.5	0.001

* CONTROL STATEMENT
.CONTROL
RUN
plot v(out) v(out2) v(out3) vs V(in)
.ENDC
.END

