drop table if exists "informix".ord_activity ;
create table "informix".ord_activity 
  (
    ord_activity_id serial not null ,
    ordrid integer not null ,
    event_ref integer,
    reference varchar(254),
    ordritemstatcode char(4) not null ,
    ordact_reas_code char(2),
    note varchar(254),
    supplier_note varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

