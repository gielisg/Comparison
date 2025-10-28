drop table if exists "informix".ord_esc_mail_sup ;
create table "informix".ord_esc_mail_sup 
  (
    ord_id integer not null ,
    suppress char(1) 
        default 'N' not null 
  );

