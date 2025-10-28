drop table if exists "informix".pay_ext_orig ;
create table "informix".pay_ext_orig 
  (
    trans_id integer not null ,
    seq_num integer not null ,
    debtor_code varchar(20,10),
    fin_num varchar(20,10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

