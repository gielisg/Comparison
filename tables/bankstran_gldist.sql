drop table if exists "informix".bankstran_gldist ;
create table "informix".bankstran_gldist 
  (
    bank_gldist_ref serial not null ,
    bank_stmt_id integer not null ,
    seq_num integer not null ,
    gl_acctcode varchar(45) not null ,
    sign char(1),
    dist_amnt decimal(12,2),
    exp_date date,
    gl_period char(6),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sign IN ('C' ,'D' )) constraint "informix".check
  );

