parameter extraction excercise-1

.lib /project2020/eda/ngspice-32/models/scn4m_subm/scmos_bsim4.lib nom
.temp 25


vds out 0 dc 5
vid out D dc 0
vgs G 0 dc 1


M1 D G  0 0  scmosn w=2.5u l=1u m=1

.dc vds 0 5 0.001
.control
run
plot vid#branch vs v(D)
.endc
.end

