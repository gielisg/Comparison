drop table if exists "informix".attrchrgtran ;
create table "informix".attrchrgtran 
  (
    attrchrgtranref serial not null ,
    attrchrgdetlref integer not null ,
    debtor_code char(10) not null ,
    sp_cn_ref integer not null ,
    sp_plan_ref integer not null ,
    attrchrggrpref integer not null ,
    attrchrgdateref integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    attrchrgtranwefr datetime year to second not null ,
    attrchrgtranweto datetime year to second not null ,
    attrchrgterminal char(1) not null ,
    chg_code char(4) not null ,
    bandattribtype char(4) not null ,
    bandattribvalue integer,
    qntyinband integer,
    nmnlchrgextax decimal(18,10) not null ,
    attrchrgtranstat char(4) not null ,
    prnttranref integer,
    sp_cn_chg_ref integer,
    term_bill_period integer,
    term_cycle_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

