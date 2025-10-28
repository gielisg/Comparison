drop table if exists "informix".rechrg_trans ;
create table "informix".rechrg_trans 
  (
    trans_id serial not null ,
    rechrg_id integer not null ,
    element_id integer,
    pre_auth_id integer,
    trans_value decimal(16,3) not null ,
    trans_dt datetime year to second 
        default current year to second not null ,
    fin_ref integer,
    ext_reference varchar(20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

