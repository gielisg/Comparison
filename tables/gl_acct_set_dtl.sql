drop table if exists "informix".gl_acct_set_dtl ;
create table "informix".gl_acct_set_dtl 
  (
    gl_detail_id serial not null ,
    gl_set_id integer not null ,
    gl_acctcode varchar(45),
    remarks lvarchar(2000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

