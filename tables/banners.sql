drop table if exists "informix".banners ;
create table "informix".banners 
  (
    bus_unit_code char(2) not null ,
    sub_system smallint,
    seq_num smallint,
    msg_text char(300)
  );

