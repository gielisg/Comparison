drop table if exists "informix".ord_esc_mail ;
create table "informix".ord_esc_mail 
  (
    ord_id integer not null ,
    mail_id integer not null ,
    crt_dt datetime year to second 
        default current year to second not null ,
    ord_status_code char(2) not null 
  );

