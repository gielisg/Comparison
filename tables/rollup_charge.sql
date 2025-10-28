drop table if exists "informix".rollup_charge ;
create table "informix".rollup_charge 
  (
    rollup_id serial not null ,
    description varchar(254) not null ,
    bill_narr varchar(254),
    srvctypecode char(4) not null ,
    chg_code char(4) not null ,
    wefr datetime year to second 
        default current year to second not null ,
    weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

