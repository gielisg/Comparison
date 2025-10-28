drop table if exists "informix".strttype ;
create table "informix".strttype 
  (
    strttypeid char(3) not null ,
    strttypenarr varchar(32) not null ,
    disp_order smallint 
        default 1 not null 
  );

