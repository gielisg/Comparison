drop table if exists "informix".chgcode_gl_split ;
create table "informix".chgcode_gl_split 
  (
    chg_code char(4) not null ,
    gl_acctcode varchar(45) not null ,
    split_perc decimal(6,4) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

