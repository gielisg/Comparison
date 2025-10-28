drop table if exists "informix".voucher_dlr_bat ;
create table "informix".voucher_dlr_bat 
  (
    batch_id integer not null ,
    dealer_id char(10) not null ,
    issue_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

