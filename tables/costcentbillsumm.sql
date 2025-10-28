drop table if exists "informix".costcentbillsumm ;
create table "informix".costcentbillsumm 
  (
    cc_bill_summ_id serial not null ,
    cost_centreid integer,
    bill_ref integer,
    usg_disc_ex decimal(18,10),
    usg_disc_tax decimal(18,10),
    usg_non_disc_ex decimal(18,10),
    usg_non_disc_tax decimal(18,10),
    usg_cost_ex decimal(18,10),
    usg_cost_tax decimal(18,10),
    chg_disc_ex decimal(18,10),
    chg_disc_tax decimal(18,10),
    chg_non_disc_ex decimal(18,10),
    chg_non_disc_tax decimal(18,10),
    chg_cost_ex decimal(18,10),
    chg_cost_tax decimal(18,10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

