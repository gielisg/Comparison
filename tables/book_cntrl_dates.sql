drop table if exists "informix".book_cntrl_dates ;
create table "informix".book_cntrl_dates 
  (
    book_cntrl_date date not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

