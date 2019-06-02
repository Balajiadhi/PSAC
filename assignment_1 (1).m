%%part 1
Vrated=750;
l=292;
f=50;
z=0.0166+0.301i;
y=0.0000044i;
gamma=sqrt(z*y);
Zc=sqrt(z/y);
Yc=sqrt(y/z);
A=cosh(gamma*l);
B=Zc*sinh(gamma*l);
C=Yc*sinh(gamma*l);
Zstar=B;
Ystar=2*(A-1)/B;
Ystar_mag=abs(Ystar);
Ystar_deg=(angle(Ystar)/pi)*180;
%%part 2
Z0=real(Zc);
Psil=Vrated*Vrated/Z0;
phiB=angle(B);
phiA=angle(A);
phiA_deg=180*(phiA/pi);
phiB_deg=180*(phiB/pi);
phiC_deg=180*(angle(C)/pi);
Am=abs(A);
Bm=abs(B);
Cm=abs(C);
Pr=Vrated*Vrated/Bm-Vrated*Vrated*Am*cos(phiB-phiA)/Bm;
K=Pr/Psil;
%%part 3
Delta_m=(36/180)*pi;%radian
Vspu=1.02;
Vrpu=0.98;
Vs_act=Vspu*Vrated;
Vr_act=Vrpu*Vrated;
P3sil=Vr_act*Vr_act/Z0;
P3=Vs_act*Vr_act*cos(phiB-Delta_m)/Bm-Vr_act*Vr_act*Am*cos(phiB-phiA)/Bm;
K3=P3/P3sil;
%%part 4
Ifl=1.9;%KA
Vr_pu_4fl=0.96;
Vr_4fl=Vr_pu_4fl*Vrated;
P4=sqrt(3)*Ifl*Vr_4fl;
Q4=P4;
Vs4=(A*Vr_4fl/sqrt(3)+B*Ifl)*sqrt(3);
Vs4_mag=abs(Vs4);
Vs4_ang=angle(Vs4);
Vs4_ang_deg=(Vs4_ang/pi)*180;
Vr4_nl=Vs4/A;
Vr4_nl_mag=abs(Vr4_nl);
Vr4_nl_ang_deg=(angle(Vr4_nl)/pi)*180;
Vregulation=(abs(Vr4_nl)-abs(Vr_4fl))/abs(Vr_4fl)
%%part 5
eps=0.75;%original was 75_%
G=real(Ystar);
H=imag(Ystar);
Ystar_new=G+(1-eps)*H*i;
Zstar_new=Zstar;%Bnew=B
A_new=1+(Ystar_new*Zstar_new)/2;
A_new_mag=abs(A_new);
A_new_deg=(angle(A_new)/pi)*180;
Vr5_fl=Vr_4fl;
Vs5_fl=(A_new*Vr5_fl/sqrt(3)+B*Ifl)*sqrt(3);
Vs5_fl_mag=abs(Vs5_fl);
Vs5_fl_deg=(angle(Vs5_fl)/pi)*180;
Vr5_nl=Vs5_fl/A_new;
Vr5_nl_mag=abs(Vr5_nl);
Vr5_nl_deg=(angle(Vr5_nl)/pi)*180;
Vregulation_5=(abs(Vr5_nl)-abs(Vr5_fl))/abs(Vr5_fl);
















