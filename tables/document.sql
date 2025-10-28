drop table if exists "informix".document ;
create table "informix".document 
  (
    doc_id serial not null ,
    doc_name varchar(254),
    doc_note text,
    doc_filename varchar(254),
    doc_url varchar(254),
    doc_author varchar(254),
    doc_author_dt date,
    doc_type char(1),
    user_editable char(1) 
        default 'N' not null ,
    cust_editable char(1) 
        default 'N' not null ,
    cust_visible char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (doc_type IN ('L' ,'U' )) constraint "informix".doc_type,
    
    check (user_editable IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cust_editable IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cust_visible IN ('Y' ,'N' )) constraint "informix".yes_no
  );

