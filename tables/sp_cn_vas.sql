drop table if exists "informix".sp_cn_vas ;
create table "informix".sp_cn_vas 
  (
    sp_cn_vas_ref serial not null ,
    sp_cn_ref integer not null ,
    vas_id char(10) not null ,
    start_dt datetime year to second 
        default current year to second not null ,
    end_dt datetime year to second not null ,
    status_id integer not null ,
    status_chg_dt datetime year to second 
        default current year to second not null ,
    sp_cn_chg_ref integer,
    created_by varchar(18,10) 
        default user not null ,
    created_dt datetime year to second 
        default current year to second not null ,
    note varchar(254)
  );

