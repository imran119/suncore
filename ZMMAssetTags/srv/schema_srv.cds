using edm from '../db/schema';

service CatalogService {

 entity  ZEDF4_HEADER
	as projection on edm.ZEDF4_HEADER;

 entity ZEDF4_DETAIL
	as projection on  edm.ZEDF4_DETAIL;

 entity ZENGDATA_LIN
	as projection on  edm.ZENGDATA_LINa;

  entity ZENGDATA_DOCS
	as projection on  edm.ZENGDATA_DOCS;

  entity ZENGDATA_HTC
	as projection on  edm.ZENGDATA_HTC;

 entity ZENGDATA_NTS
	as projection on  edm.ZENGDATA_NTS;          

 entity ZENGDATA_REV
	as projection on  edm.ZENGDATA_REV;
    
 entity ZENGDATA1
	as projection on edm.ZENGDATA1a;

 entity ZENGDATA2
	as projection on  edm.ZENGDATA2;


 entity ZENGDATA3
	as projection on  edm.ZENGDATA3a;

  entity ZENGDATA4
	as projection on  edm.ZENGDATA4;

  entity ZENGDATA5
	as projection on  edm.ZENGDATA5;

  entity ZENGDATA6
	as projection on  edm.ZENGDATA6;         

  entity ZENGDATA7
	as projection on  edm.ZENGDATA7a;   

  entity ZENGDATA8
	as projection on  edm.ZENGDATA8;

   entity ZENGDATA9
	as projection on  edm.ZENGDATA9;     

   entity m_ZENGDATA1
	as projection on  edm.m_ZENGDATA1;   

   entity m_ZENGDATA9
	as projection on  edm.m_ZENGDATA9; 

    entity v_heat
	as projection on  edm.heat;   

     view Join_select
        as select from ZENGDATA1
                {
Tagno,
Disc,
Status,
Tdesc,
Tgroup
                };   

 //   view Join_heat
 //        as select from ZENGDATA3
  //            left join ZENGDATA7
  //               on ZENGDATA3.Tagno= ZENGDATA7.Tagno   
 //                        ZENGDATA3.Tagno,
 //ZENGDATA3.Cbltyp,
 //ZENGDATA3.Pwrpt,
 //ZENGDATA3.Tmpmain,
 //ZENGDATA7.Linlgth,
 //ZENGDATA7.Piphtls, 
 //ZENGDATA7.Heatout 
  //                  };                   



}