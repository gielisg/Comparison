drop table if exists "informix".sp_cn_mailboxes ;
create table "informix".sp_cn_mailboxes 
  (
    sp_cn_mbox_ref serial not null ,
    sp_cn_ref integer not null ,
    password varchar(50,10) not null ,
    address varchar(254,20) not null ,
    full_name varchar(254,20),
    quota decimal(8,3),
    alias char(1),
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    status_id integer 
        default 1 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status_id IN (1 ,2 ,3 ,4 ,5 )) constraint "informix".chk_1_2_3_4_5,
    
    check (alias IN ('Y' ,'N' )) constraint "informix".yes_no
  );

