* common emitter amplifier circuit
VS	1	0
VCC	10	0	DC	12
*
RS	1	2	100
C1	2	3	1UF
R1	10	3	22K
R2	3	0	11K
Q1	4  3	5	Q2N2222
RC	10	4	1800
RE1	5	6	600
RE2	6	0	600
CE	6	0	50UF
CL	4	7	1UF
RL	7	0	30K
*
.model Q2N2222  NPN(Is=3.108f Xti=3 Eg=1.11 Vaf=131.5 Bf=217.5 Ne=1.541
+               Ise=190.7f Ikf=1.296 Xtb=1.5 Br=6.18 Nc=2 Isc=0 Ikr=0 Rc=1
+               Cjc=14.57p Vjc=.75 Mjc=.3333 Fc=.5 Cje=26.08p Vje=.75
+               Mje=.3333 Tr=51.35n Tf=451p Itf=.1 Vtf=10 Xtf=2 Rb=10)
*
* ANALYSIS
*.AC 	DEC 	5 10 10MEG
.TRAN 	0.001MS  0.2MS
* VIEW RESULTS
*.PLOT	AC 	V(2) V(5)
.PLOT	TRAN 	V(2) V(5)
.PROBE
.END
