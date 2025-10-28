drop table if exists "informix".acn_exemption ;
create table "informix".acn_exemption 
  (
    acn_exempt_code char(4) not null ,
    acn_exempt_narr char(30)
  );

