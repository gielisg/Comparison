drop table if exists "informix".pay_decl_fin_src ;
create table "informix".pay_decl_fin_src 
  (
    decline_fee_id integer not null ,
    fin_src_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

