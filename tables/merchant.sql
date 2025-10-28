drop table if exists "informix".merchant ;
create table "informix".merchant 
  (
    merch_ser_num serial not null ,
    merch_id char(19) not null ,
    short_merch_id char(8),
    merch_name char(32),
    merch_addr1 char(32),
    merch_addr2 char(32),
    merch_phone char(10),
    bank_state_num char(1),
    auth_limit smallint not null ,
    auth_rpt_narr char(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

