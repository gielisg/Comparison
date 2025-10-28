drop table if exists "informix".stmt_code_deal ;
create table "informix".stmt_code_deal 
  (
    stmt_code char(1) not null ,
    dealer_id char(10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

