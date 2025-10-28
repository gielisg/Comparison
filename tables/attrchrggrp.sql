drop table if exists "informix".attrchrggrp ;
create table "informix".attrchrggrp 
  (
    attrchrggrpref serial not null ,
    attrchrgnarr varchar(64) not null ,
    pkg_code integer not null ,
    option integer,
    chg_code char(4) not null ,
    chg_narr varchar(64),
    attribid1 integer,
    attribid2 integer,
    bandattribid integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

