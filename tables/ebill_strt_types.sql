drop table if exists "informix".ebill_strt_types ;
create table "informix".ebill_strt_types 
  (
    type_id char(4) not null ,
    type_narr varchar(32) not null ,
    disp_ordr integer 
        default 3 not null 
  );

