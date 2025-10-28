drop table if exists "informix".spcn_contract_inst ;
create table "informix".spcn_contract_inst 
  (
    id serial not null ,
    sp_cn_ref integer,
    contr_instance_id integer,
    from_dt datetime year to second,
    to_dt datetime year to second,
    salesperson char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

