drop table if exists "informix".cont_id ;
create table "informix".cont_id 
  (
    cont_id serial not null ,
    contact_code char(10),
    id_type char(1),
    status varchar(32) 
        default 'Unverified' not null ,
    id_detail varchar(254) not null ,
    doc_id integer,
    exp_date date,
    note lvarchar(1000),
    issue_date date,
    state varchar(254),
    reference varchar(254),
    card_number varchar(254),
    name_on_card varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('Unverified' ,'Verified' ,'Invalid' ,'Suspected Fraud' ,'Unknown' )) 
              constraint "informix".status_cont_id
  );

