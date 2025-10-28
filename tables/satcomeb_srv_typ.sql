drop table if exists "informix".satcomeb_srv_typ ;
create table "informix".satcomeb_srv_typ 
  (
    callident_id char(4) not null ,
    initi_calltype varchar(200,10) not null ,
    cl_tocalltype varchar(200,10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

