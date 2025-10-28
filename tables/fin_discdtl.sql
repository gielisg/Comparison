drop table if exists "informix".fin_discdtl ;
create table "informix".fin_discdtl 
  (
    fin_ref integer not null ,
    subsdiscid integer,
    calc_narr varchar(254),
    inc_amount decimal(18,10) not null ,
    tax_amount decimal(18,10) not null 
  );

