drop table if exists "informix".operator ;
create table "informix".operator 
  (
    login_code varchar(18) not null ,
    contact_code char(10) not null ,
    dept_code char(3) not null ,
    operator_lvl smallint,
    joined date,
    terminated date,
    dealer_id char(10),
    branch_code char(3) not null ,
    encrypt_method integer not null ,
    passwd char(32) 
        default 'password' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((encrypt_method >= 0 ) AND (encrypt_method <= 1 ) ) constraint "informix".zero_one11
  );

