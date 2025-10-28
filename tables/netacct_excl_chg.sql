drop table if exists "informix".netacct_excl_chg ;
create table "informix".netacct_excl_chg 
  (
    file_type_code char(10) not null ,
    account_no varchar(20) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

