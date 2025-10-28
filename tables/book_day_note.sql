drop table if exists "informix".book_day_note ;
create table "informix".book_day_note 
  (
    note_ref serial not null ,
    note_date date,
    note_text varchar(255),
    note_site integer,
    note_by char(10) not null ,
    note_tm datetime year to second 
        default current year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

