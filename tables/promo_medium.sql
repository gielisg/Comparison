drop table if exists "informix".promo_medium ;
create table "informix".promo_medium 
  (
    pro_med_code serial not null ,
    pro_med_narr varchar(32) not null ,
    type_id char(2)
  );

