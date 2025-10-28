drop table if exists "informix".inv_option_hist ;
create table "informix".inv_option_hist 
  (
    inv_opt_hist_ref serial not null ,
    debtor_code char(10) not null ,
    invopt_code char(1) not null ,
    inv_option_wefr datetime year to second not null ,
    inv_option_weto datetime year to second not null ,
    value lvarchar(2000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

