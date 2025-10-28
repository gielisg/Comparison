drop table if exists "informix".primus_lolm_data ;
create table "informix".primus_lolm_data 
  (
    ref serial not null ,
    code char(10),
    sort smallint,
    narr char(100),
    tx_date char(18),
    phone_num varchar(64),
    esn char(18)
  );

