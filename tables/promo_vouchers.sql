drop table if exists "informix".promo_vouchers ;
create table "informix".promo_vouchers 
  (
    pro_voucher_ref serial not null ,
    discid integer,
    promotion_name varchar(254,20) not null ,
    voucher_number varchar(254,20),
    number_of_uses integer,
    expiry_date date 
        default  '01/01/9999',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

