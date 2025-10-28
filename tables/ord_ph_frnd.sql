drop table if exists "informix".ord_ph_frnd ;
create table "informix".ord_ph_frnd 
  (
    ord_ph_dref integer not null ,
    phone_num varchar(64) not null 
  );

