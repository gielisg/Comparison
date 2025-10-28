drop table if exists "informix".mail ;
create table "informix".mail 
  (
    mail_id serial not null ,
    mail_hdr varchar(254,10) not null ,
    mail_body varchar(254,30),
    priority integer 
        default 3 not null ,
    mail_dt datetime year to second 
        default current year to second not null ,
    supp_esc_prd integer 
        default 0 not null ,
    
    check (priority IN (1 ,2 ,3 )) constraint "informix".chk_1_2_372
  );

