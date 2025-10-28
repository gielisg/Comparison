drop table if exists "informix".sp_cn_address ;
create table "informix".sp_cn_address 
  (
    id serial not null ,
    sp_cn_ref integer not null ,
    type varchar(50,10) not null ,
    address lvarchar(1000),
    from_dt datetime year to second 
        default current year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

