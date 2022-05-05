// EngineeringDataModule
namespace com.suncore; 

using { managed, sap, sap.common.CodeList } from '@sap/cds/common';
type Cdgrp     :    String(15);
type Code     :    Integer;
type Codedsc     : String(120);
type Codeltxt     :    String(190);

type Cdgrpdsc     :    String(40);
type Tgroup     :    String(30);
type Frmname     :    String(30);
type Frmdsc     :    String(30);
type Tagno     :    String(27);

entity ZEDF4_HEADER {
  key Cdgrp : Cdgrp; 
  Cdgrpdsc : Cdgrpdsc;
  details  : Composition of many ZEDF4_DETAIL on details.Cdgrp = $self;
};

entity ZEDF4_DETAIL {
    key Cdgrp : association to ZEDF4_HEADER;
    key Code   : Code; 
        Codedsc : Codedsc;
        Codeltxt : Codeltxt;
};

entity ZEDTGROUPS {
    key Tgroup : Tgroup;
};

entity ZEDM_PFORMS {
    key Tgroup : Tgroup;
        Frmname     :    Frmname; 
        Frmdsc     :    Frmdsc;
 };

// ZENGDATA_DOCS

entity  ZENGDATA_DOCS {
Mandt     :    String(3);
key Tagno     :     Tagno;
Item     :    Integer;
Docno     :    String(40);
Doctyp     :    String(10);
Doctitle     :    String(132);
Comnt     :    String(40);

};
//  ZENGDATA_HTC
entity  ZENGDATA_HTC {
key Tagno     :     Tagno;
Htcirc     :    String(20);


};
//  ZENGDATA_LIN
entity  ZENGDATA_LIN {
key Tagno     :     Tagno;
Etno     :    String(20);
Linno     :    String(20);


};
//  ZENGDATA_NTS
entity  ZENGDATA_NTS {

Mandt     :    String(3);
key Tagno     :     Tagno;
Note     :    String(4);


};
//  ZENGDATA_REV
entity  ZENGDATA_REV {
key Tagno     :     Tagno;
Rev     :    String(3);
Descr     :    String(40);
Prep     :    String(3);
Chk     :    String(3);
App     :    String(3);
Dater     :    DateTime;


};


//MAIN TABLES

entity ZENGDATA1 {
    key Mandt : String(3);
    key Tagno     :    String(27);
Tgroup     :    String(30);
Status     :    String(1);
Tdesc     :    String(80);
Area     :    String(30);
Dlc     :    String(4);
Disc     :    String(2);
Fissue     :    String(15);
Hosign     :    String(10);
Impdat     :    DateTime;
Itag     :    String(20);
Licexp     :    DateTime;
Ponum     :    String(30);
Sapb     :    String(15);
Tagrev     :    String(2);
Tagsrc     :    String(30);
Vendtag     :    String(25);
Xissue     :    String(15);
Ainsp     :    String(30);
Apbdy     :    String(30);
Gsgrp     :    String(30);
Harea     :    String(30);
Indep     :    String(255);
Mantst     :    String(255);
Protcl     :    String(30);
Linesz     :    String(30);
Rapid     :    String(255);
Typgen     :    String(30);
Vlvend     :    String(30);
Wgtdry     :    String(8);
Future     :    String(6);
Hazflg     :    String(4);
Ingrs     :    String(30);
Lgflg     :    String(4);
Manuf     :    String(30);
Notifn     :    String(8);
Model     :    String(255);
Prtnum     :    String(30);
Pvflg     :    String(4);
Ppid     :    String(10);
Prmthd     :    String(30);
Sapflg     :    String(4);
Serial     :    String(30);
Suppl     :    String(30);
Vlvflg     :    String(4);
Wonum     :    String(8);
Lah     :    String(3);
Lahh     :    String(3);
Lal     :    String(3);
Lall     :    String(3);
Alhg     :    String(30);
Alhg2     :    String(30);
 };
// 2ZENGDATA

entity  ZENGDATA2 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Alhh     :    String(30);
Allw     :    String(30);
Allwl     :    String(30);
Alinh     :    String(4);
Alst     :    String(10);
Ctrlact     :    String(30);
Ctrlfl     :    String(10);
Elfrq     :    Decimal(7,2);
Elphs     :    String(1);
Elvolt     :    Decimal(7,2);
Engu     :    String(8);
Eqlin     :    String(30);
Fail     :    String(12);
Flow     :    String(8);
Fluid     :    String(30);
Ftag     :    String(14);
Grphc     :    String(8);
Hmyid     :    String(30);
Iocirc     :    String(4);
Ioelec     :    String(4);
Ioloc     :    String(4);
Iolpc     :    String(11);
Iopwr     :    String(5);
Iosrv     :    String(16);
Iosrv2     :    String(16);
Iosigd     :    String(5);
Iosigs     :    String(1);
Iosigt     :    String(4);
Iotyp     :    String(10);
Inflp     :    String(3);
Inhovr     :    String(8);
Inhib     :    String(3);
Iscirc     :    String(3);
Log0     :    String(7);
Log1     :    String(7);
Macro     :    String(30);
Pcucab     :    String(14);
Pcumod     :    String(3);
Pcumod2     :    String(3);
Pcunod     :    String(3);
Pcuslv     :    String(4);
Pcuslvc     :    String(3);
Pcuslv2     :    String(4);
Phse     :    String(1);
Pidtyp     :    String(3);
Pdes     :    Decimal(7,2);
Pdesmx     :    Decimal(7,2);
Pdesmx2     :    Decimal(7,2);
Pdesmin     :    Decimal(7,2);
Popr     :    Decimal(7,2);
Poprmx     :    Decimal(7,2);
Poprmn     :    Decimal(7,2);
Pulse     :    String(3);
Range     :    String(30);
Revlvl     :    String(30);
Scmpod     :    String(7);
Spt     :    String(12);
Spt2     :    String(12);
Sptflg     :    String(4);
Sioff     :    Decimal(17,2);
Siplca     :    String(5);
Siplcb     :    String(3);
Siplcrf     :    String(30);
Siplcrg     :    String(6);
Siscl     :    Decimal(9,2);
Sigspn     :    String(14);
Sigzr     :    String(10);
Srdflg     :    String(4);
Tcls     :    String(30);
Tdesmx     :    Decimal(5,2);
Tdesmx2     :    Decimal(5,2);
Tdesmn     :    Decimal(5,2);
Tdesmn2     :    Decimal(5,2);
Topr     :    Decimal(5,2);
Toprmx     :    Decimal(5,2);
Toprmn     :    Decimal(5,2);
Toprnr     :    Decimal(5,2);
Tquad     :    String(2);
Tcbl     :    String(15);
Tequip     :    String(25);
Tpair     :    String(5);
Tpair2     :    String(5);
Tblk1     :    String(12);
Tblk2     :    String(12);
Tblk3     :    String(12);
Tblk4     :    String(12);
Trend     :    String(10);
Turef     :    String(16);
Tutrm1     :    String(6);
Tutrm2     :    String(6);
Tuxw1     :    String(30);
Tuxw2     :    String(30);
Vestyp     :    String(30);
Xmast     :    String(6);
C99Cmt     :    String(255);
C99Vsd     :    String(255);
Cblcd     :    String(15);
Cbldsc     :    String(255);
Cnoref     :    String(30);
Deldc     :    String(30);
Deldf     :    String(30);
Fabarea     :    String(4);
Fldcbl     :    String(30);

};
// ZENGDATA3

entity  ZENGDATA3 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Frtag     :    String(30);
Frloc     :    String(30);
Frdsc3     :    String(255);
Gld1Fr     :    String(30);
Gld1To     :    String(30);
Gldfr     :    String(30);
Gldto     :    String(30);
Hucd     :    String(2);
Jbno     :    String(15);
Lencld     :    Decimal(10,2);
Lenest     :    Decimal(10,2);
Sidir     :    String(10);
Silvl     :    String(5);
Cblno     :    String(10);
Cblsz     :    Decimal(4,2);
Ltare     :    Decimal(10,2);
Matl     :    String(30);
Quant     :    Decimal(6,0);
Rtlen     :    String(30);
Rtsch     :    String(30);
Szco     :    String(30);
Stidjb     :    String(30);
Systm     :    String(8);
Tstruce     :    String(255);
Tstdat     :    DateTime;
Voltge     :    String(8);
Insthk     :    String(5);
Inscls     :    String(4);
Linins     :    String(5);
Ndecls     :    String(20);
Ndtcls     :    String(30);
Ndprs     :    Decimal(7,2);
Ndtmp     :    Decimal(5,2);
Ptcls     :    String(30);
Pipspec     :    String(4);
Poprnr     :    Decimal(7,2);
Ptst     :    Decimal(7,2);
Totag     :    String(30);
Frdwg     :    String(30);
Frnod     :    Decimal(7,0);
Pscd     :    String(2);
Nocbls     :    Decimal(6,0);
Rotst     :    String(5);
Toloc     :    String(30);
Todwg     :    String(30);
Tonod     :    Decimal(7,0);
Pid     :    String(30);
Grmt1     :    Decimal(1,0);
Grmt2     :    Decimal(1,0);
Bkgrp     :    Decimal(4,2);
Cbltyp     :    String(10);
Dscint     :    String(10);
Inrcur     :    Decimal(4,2);
Islyt     :    String(30);
Istand     :    String(10);
Tckits     :    Decimal(6,0);
Tstats     :    Decimal(6,0);
Operc     :    Decimal(4,2);
Phup     :    String(30);
Pwrdist     :    String(30);
Temptr     :    Decimal(5,2);
Tracel     :    Decimal(4,2);
Tubing     :    String(2);
Instyp     :    String(2);
Isosht     :    String(30);
Nopass     :    Decimal(6,0);
Notape     :    Decimal(6,0);
Nothreq     :    Decimal(6,0);
Pdmsp     :    String(10);
Pipedi     :    Decimal(5,2);
Pipiso     :    String(2);
Pwrpt     :    String(4);
Ptsht     :    String(30);
Tmpmain     :    Decimal(5,2);
Thermo     :    String(10);
Totcircl     :    Decimal(5,2);
Antcon     :    String(30);
Antgn     :    String(30);
Antlen     :    Decimal(4,2);
Antmod     :    String(30);
Antptn     :    String(30);
Antrtg     :    String(30);
Anttun     :    String(30);
Antvert     :    String(30);
Bumed     :    String(30);
Battyp     :    String(30);
Cmodif     :    String(10);
Dskstg     :    String(10);
Dsply     :    String(10);
Freqrng     :    Decimal(4,2);
Gyro     :    Decimal(4,2);
Impdnce     :    Decimal(4,2);
Isratg     :    String(8);
Lanfib     :    String(10);
Lanspd     :    Decimal(4,2);
Lifeobs     :    Decimal(4,2);
Majalm     :    String(10);

};
// ZENGDATA4

entity  ZENGDATA4 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Mattyp     :    String(30);
Minalm     :    String(30);
Modult     :    String(5);
Noport     :    Decimal(3,0);
Nochnls     :    Decimal(6,0);
Nompwr     :    Decimal(10,2);
Pwrprim     :    String(30);
Pwrsec     :    String(30);
Prnter     :    String(10);
Procr     :    String(10);
Radlicn     :    String(15);
Radome     :    String(4);
Recsens     :    String(10);
Scaffold     :    String(4);
Softwver     :    String(20);
Spkrst     :    String(10);
Spkrtaw     :    Decimal(4,2);
Spkrtyp     :    String(10);
Stdwv     :    Decimal(3,2);
Supct     :    String(30);
Supcname     :    String(30);
Supcph     :    String(30);
Supven     :    String(30);
Trnslin     :    String(20);
Awline     :    String(30);
Calcsht     :    String(30);
Capcl     :    Decimal(10,2);
Catref     :    String(30);
Szminst     :    Decimal(4,2);
Dimensn     :    String(60);
Dclosetyp     :    String(255);
Dgasktyp     :    String(255);
Dhngtyp     :    String(255);
Dlocktyp     :    String(255);
Dopentyp     :    String(255);

};
// ZENGDATA5

entity  ZENGDATA5 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Dstoptyp     :    String(132);
Dutykw     :    Decimal(9,2);
Dwsect     :    String(4);
Easting     :    String(7);
Easttp     :    String(7);
Firezn     :    String(3);
Fgerat     :    String(35);
Handwhl     :    String(1);
Hazcertstd     :    String(30);
Haztyp     :    String(30);
Heattrc     :    String(1);
Hghtovl     :    String(8);
Indxlift     :    String(10);
Lgthovl     :    String(30);
Loopcurr     :    String(8);
Looptmpt     :    String(30);
Looptyp     :    String(3);
Nderptno     :    String(30);
Northg     :    String(7);
Northtp     :    String(7);
Padeye     :    String(10);
Stdidins     :    String(30);
Tstload     :    Decimal(9,2);
Typcirc     :    String(16);
Upping     :    String(7);
Uppingtp     :    String(7);
Wgtqualf     :    String(30);
Wgtopr     :    String(8);
Widthdia     :    String(30);
Tubthick     :    Decimal(3,2);
Compdsc     :    String(255);
Dlcdsc     :    String(255);
Prntag     :    String(20);
Sched     :    String(4);
Nocondt     :    Decimal(2,0);
Toeqdsc     :    String(30);
Schlen     :    Decimal(7,2);
Sztub     :    String(30);
Pttcsp     :    String(30);
Tdes     :    Decimal(5,2);
Ttype     :    String(15);
Amplf     :    String(15);
Exrtg     :    String(15);
Emgint     :    String(5);
Lifebt     :    String(5);
Met     :    String(5);
Svendnm     :    String(30);
Scont     :    String(30);
Maintcontr     :    String(15);
Scontphn     :    String(15);
Rpwrant     :    String(15);
Transll     :    String(5);
Vswr     :    String(10);
Supvolt     :    String(5);
Ctrfreq     :    String(5);
Remts     :    String(15);
Gmdss     :    String(5);
Rtnloss     :    String(5);
Supphse     :    String(5);
Pwrout     :    String(5);
Bandw     :    String(5);
Rvspwr     :    String(5);
Racktag     :    String(15);
Memry     :    String(15);
Netwid     :    String(15);
Dispmod     :    String(15);
Entertn     :    String(5);
Opersys     :    String(5);
Speed     :    String(5);
Netcnt     :    String(5);
Turnu     :    String(5);
Gain     :    String(5);
Pattrn     :    String(15);
Tunmod     :    String(15);
Contyp     :    String(5);
Windrtg     :    String(15);
Vbeamw     :    String(15);
Hbeamw     :    String(15);
Corermk     :    String(60);
Service     :    String(15);
Inlet     :    String(132);
Inlsz     :    String(30);
Inldia     :    String(10);
Inltyp     :    String(90);


};
// ZENGDATA6

entity  ZENGDATA6 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Admrmk     :    String(132);
Eqprmk     :    String(132);
Liftrmk     :    String(132);
Pvrmk     :    String(132);
Elecrmk     :    String(132);
Instrmk     :    String(132);
Ctlrmk     :    String(132);
Almrmk     :    String(132);
Cbl1     :    String(132);
Cbl2     :    String(132);
Cbl3     :    String(132);
Cbl4     :    String(132);
Cbl5     :    String(132);
Cbl6     :    String(132);
Inlpipe     :    String(4);
Outsz     :    String(30);
Outdia     :    String(10);
Outtyp     :    String(10);
Outpipe     :    String(4);


};
// ZENGDATA7

entity  ZENGDATA7 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Outlet     :    String(132);
Clarif1     :    String(60);
Clarif2     :    String(60);
Clarif3     :    String(60);
Clarif4     :    String(60);
Vlvrmk     :    String(132);
Oempart     :    String(30);
Matnr     :    String(18);
Equnr     :    String(18);
Tplnr     :    String(30);
Oemact     :    String(30);
Wgtact     :    String(8);
Dimact     :    String(12);
Manact     :    String(30);
Cdstmp     :    String(30);
Cldsprs     :    Decimal(7,2);
Flowcap     :    Decimal(7,2);
Insul     :    String(4);
Orif     :    String(10);
Tstmed     :    String(30);
Sys     :    Decimal(4,0);
Subsys     :    Decimal(4,0);
Prepop     :    String(30);
Sheetno     :    String(30);
Prepress     :    String(30);
Recertd     :    DateTime;
Psvrmk     :    String(132);
Htcirc     :    String(20);
Minsftr     :    Decimal(2,0);
Conscd     :    String(20);
Regno     :    String(20);
Mawp     :    Decimal(7,2);
Pressr     :    Decimal(7,2);
Mawt     :    Decimal(5,2);
Mdmt     :    Decimal(5,2);
Altcbl     :    String(25);
Cblrtg     :    String(30);
Frmjb     :    String(25);
Tojb     :    String(25);
Lsmk     :    String(25);
Lhal     :    String(25);
Bendr     :    String(10);
Jackt     :    String(25);
Shldtyp     :    String(25);
Twistdp     :    String(10);
Termtyp1     :    String(40);
Termtyp2     :    String(40);
Purg     :    String(40);
Quant2     :    Decimal(6,0);
Spare1     :    Decimal(6,0);
Spare2     :    Decimal(6,0);
Dettyp     :    String(30);
Gasdet     :    String(30);
Calgs     :    String(30);
Losdis     :    String(30);
Intcsys     :    String(30);
Insrng     :    String(30);
Indic     :    String(1);
Prcon     :    String(20);
Capsls     :    String(40);
Thinr     :    String(10);
Swdead     :    String(10);
Caplgth     :    String(10);
Udimen     :    String(20);
Hmatl     :    String(20);
Manifold     :    String(20);
Flwrt     :    String(15);
Flvel     :    String(15);
Viscos     :    String(15);
Spgrav     :    Decimal(4,2);
Sceflg     :    String(4);
Linlgth     :    Decimal(4,1);
Piphtls     :    Decimal(4,1);
Heatout     :    Decimal(4,1);
Tktag1     :    String(20);
Tktag2     :    String(20);
Phtyp     :    String(3);
Httag     :    String(20);
Swl     :    String(15);

};
// ZENGDATA8

entity  ZENGDATA8 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Unid     :    String(30);
Sptpsv     :    String(12);
Equnrpsv     :    String(18);
Cblsys     :    Integer;
Fromrmk     :    String(132);
Tormk     :    String(132);
Schem     :    String(15);
Sktag     :    String(20);
Vlvbor     :    String(20);
Destd     :    String(40);
Eqped     :    String(6);
Opert     :    String(115);
Cvbld     :    String(4);
Slinj     :    String(10);
Lckdv     :    String(4);
Matls     :    String(4);
Bdbncv     :    String(115);
Smtrpn     :    String(75);
Obgtbl     :    String(110);
Stinsr     :    String(125);
Sprgs     :    String(30);
Gaskts     :    String(62);
Seals     :    String(42);
Stpkng     :    String(62);
Boltng     :    String(42);
Firesf     :    String(60);
Antist     :    String(4);
Soursrv     :    String(4);
Ndepfor     :    String(4);
Ndepcas     :    String(4);
Accpcas     :    String(4);
Accpfor     :    String(4);
Hydshl     :    String(50);
Hydst     :    String(70);
Lowst     :    String(70);
Hghst     :    String(45);
Hghsl     :    String(45);
Backt     :    String(30);
Torqt     :    String(4);
Paint     :    String(4);
Pleak     :    String(4);
Firet     :    String(4);
Chart     :    String(4);
Dpress     :    String(24);
Typgna     :    String(1);
Altman     :    String(35);
Altpno     :    String(40);
Altstk     :    String(40);
Cmainp     :    String(4);
Cpressp     :    String(4);
Origdsht     :    String(27);
Servc     :    String(120);
Othdoc     :    String(120);

};
// ZENGDATA9

entity  ZENGDATA9 {
key Mandt     :    String(3);
key Tagno     :     Tagno;
Vdesc     :    String(255);
Pipcls     :    String(120);
Eqfnr     :    String(30);
Critical     :    String(4);

};
