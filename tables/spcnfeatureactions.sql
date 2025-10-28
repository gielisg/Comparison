drop table if exists "informix".spcnfeatureactions ;
create table "informix".spcnfeatureactions 
  (
    id serial not null ,
    sp_cn_feature_id integer,
    actionid integer,
    due datetime year to second,
    status varchar(20) 
        default 'Pending' not null ,
    status_dt datetime year to second 
        default current year to second,
    note varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('Pending' ,'Completed' ,'Failed' ,'Cancelled' ,'InProgress' )) 
              constraint "informix".status_spcnfeatac6
  );

