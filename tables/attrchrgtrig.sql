drop table if exists "informix".attrchrgtrig ;
create table "informix".attrchrgtrig 
  (
    attrchrgtrigid serial not null ,
    attribid integer not null ,
    attribvalue varchar(128),
    chg_code char(4) not null ,
    attrchrgaction char(5) not null ,
    enabled char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (attrchrgaction IN ('Apply' ,'End' )) constraint "informix".apply_end,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

