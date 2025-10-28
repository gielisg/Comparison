drop table if exists "informix".ord_pref_num ;
create table "informix".ord_pref_num 
  (
    ord_ph_dref integer not null ,
    phone_num varchar(64) not null ,
    resv_number_id integer,
    choice_num smallint not null 
  );

