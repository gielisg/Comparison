drop table if exists "informix".pay_decl_cont_st ;
create table "informix".pay_decl_cont_st 
  (
    decline_fee_id integer not null ,
    cont_status char(3) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

