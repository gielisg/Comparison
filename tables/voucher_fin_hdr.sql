drop table if exists "informix".voucher_fin_hdr ;
create table "informix".voucher_fin_hdr 
  (
    voucher_id integer not null ,
    fin_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

