drop table if exists "informix".oper_ip_ranges ;
create table "informix".oper_ip_ranges 
  (
    login_code varchar(18),
    start_ip_address char(15) not null ,
    end_ip_address char(15) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

