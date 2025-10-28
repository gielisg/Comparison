drop table if exists "informix".gl_acct_reln ;
create table "informix".gl_acct_reln 
  (
    gl_acct_relnid serial not null ,
    prnt_gl_acctcode varchar(45) not null ,
    chld_gl_acctcode varchar(45) not null ,
    gl_acct_relnwef datetime year to second,
    gl_acct_relnwet datetime year to second,
    relntypeid char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

