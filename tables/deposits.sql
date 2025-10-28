drop table if exists "informix".deposits ;
create table "informix".deposits 
  (
    dep_id serial not null ,
    dep_type char(1) not null ,
    dep_amount decimal(8,2) 
        default 0.00 not null ,
    dep_date date 
        default today not null ,
    dep_exp_date date not null ,
    status_id integer 
        default 0 not null ,
    status_reas_id integer,
    status_chg_dt datetime year to second 
        default current year to second not null ,
    status_chg_by varchar(18,10) 
        default user not null ,
    created_by varchar(18,10) 
        default user not null ,
    created_dt datetime year to second 
        default current year to second not null ,
    note varchar(253),
    acc_pay_meth_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dep_type IN ('S' ,'R' ,'I' ,'O' )) constraint "informix".dep_type47
  );

