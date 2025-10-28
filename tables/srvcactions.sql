drop table if exists "informix".srvcactions ;
create table "informix".srvcactions 
  (
    actionid integer not null ,
    actionnarr varchar(254,32) not null ,
    display_flag char(1) 
        default 'Y' not null ,
    object_id integer,
    srvcact_cat_code char(6),
    actionref varchar(32),
    oppactionid integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (display_flag IN ('Y' ,'N' )) constraint "informix".yes_no
  );

