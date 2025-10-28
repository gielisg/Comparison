drop table if exists "informix".oper_locs ;
create table "informix".oper_locs 
  (
    login_code varchar(18) not null ,
    location_code char(2) not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second
  );

