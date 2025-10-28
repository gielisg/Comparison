drop table if exists "informix".cont_popup_note ;
create table "informix".cont_popup_note 
  (
    contact_code char(10) not null ,
    cont_popup_note varchar(254) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

