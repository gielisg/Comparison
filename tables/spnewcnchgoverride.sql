drop table if exists "informix".spnewcnchgoverride ;
create table "informix".spnewcnchgoverride 
  (
    id serial not null ,
    sp_cn_ref integer,
    chg_code char(4) not null ,
    chgoverridewefr datetime year to second not null ,
    chgoverrideweto datetime year to second not null ,
    chg_amount decimal(18,10) not null ,
    nt_cost_comp decimal(15,7) not null ,
    chgoverridebnarr varchar(32)
  );

