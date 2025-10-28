drop table if exists "informix".srvcatttype ;
create table "informix".srvcatttype 
  (
    srvcatttypeid serial not null ,
    srvcattypenarr varchar(254),
    srvctypecode char(4) not null ,
    strtypecd char(6),
    relntypeid char(2) not null ,
    sp_cn_status char(3),
    menu_id integer,
    disp_ord integer not null ,
    grplabel varchar(32),
    datatypectrl char(1)
  );

