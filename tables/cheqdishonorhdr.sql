drop table if exists "informix".cheqdishonorhdr ;
create table "informix".cheqdishonorhdr 
  (
    cheqdis_hdrid serial not null ,
    nt_file_num integer,
    svc_prov_fee_bsb char(7),
    svc_prov_fee_acc char(20),
    trans_total decimal(16,3),
    fee_total decimal(16,3),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

