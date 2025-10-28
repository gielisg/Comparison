drop table if exists "informix".return_inv_hist ;
create table "informix".return_inv_hist 
  (
    ret_inv_hist_ref serial not null ,
    debtor_code char(10) not null ,
    return_reason char(2) not null ,
    retn_inv_wefr datetime year to second not null ,
    retn_inv_weto datetime year to second not null ,
    address_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

