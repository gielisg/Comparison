drop table if exists "informix".sp_new_cn_chg ;
create table "informix".sp_new_cn_chg 
  (
    id serial not null ,
    sp_cn_ref integer,
    chg_code char(4) not null ,
    price decimal(16,4) not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    qty decimal(10,3),
    unit_price decimal(16,4) not null ,
    unit char(10),
    frequency char(1),
    chg_in_advance char(1),
    advance_periods integer,
    prorata char(1),
    sp_ref varchar(254),
    narr_override1 varchar(254)
  );

