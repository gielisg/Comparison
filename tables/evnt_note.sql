drop table if exists "informix".evnt_note ;
create table "informix".evnt_note 
  (
    event_ref integer not null ,
    note_order_num smallint not null ,
    note_text varchar(254),
    note_group_num integer 
        default 1 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

