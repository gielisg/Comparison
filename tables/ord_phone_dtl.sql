drop table if exists "informix".ord_phone_dtl ;
create table "informix".ord_phone_dtl 
  (
    ord_ph_dref serial not null ,
    ord_id integer not null ,
    ord_line_num smallint not null ,
    password varchar(32) not null ,
    password_callb varchar(32),
    stmt_code char(1),
    user_name varchar(32),
    user_fname varchar(32),
    phone_num char(18),
    resv_number_id integer,
    serial_num_resv char(20)
  );

