drop table if exists "informix".bill_delegation ;
create table "informix".bill_delegation 
  (
    bill_deleg_id serial not null ,
    contact_code char(10) not null ,
    start_billperiod integer not null ,
    end_billperiod integer,
    deleg_contact_cd char(10) not null ,
    reason_id integer,
    comments lvarchar(1024),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

