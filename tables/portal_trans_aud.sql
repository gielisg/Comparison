drop table if exists "informix".portal_trans_aud ;
create table "informix".portal_trans_aud 
  (
    guid char(32) not null ,
    page_name varchar(254,32),
    trans_dt datetime year to second 
        default current year to second not null ,
    contact_code char(10),
    session_id varchar(64,20)
  );

