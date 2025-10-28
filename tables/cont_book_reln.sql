drop table if exists "informix".cont_book_reln ;
create table "informix".cont_book_reln 
  (
    cbook_reln_code char(4) not null ,
    cbook_reln_narr varchar(255) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

