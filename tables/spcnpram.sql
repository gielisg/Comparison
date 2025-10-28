drop table if exists "informix".spcnpram ;
create table "informix".spcnpram 
  (
    spcnpramid serial not null ,
    subscriber_code char(10) not null ,
    subsdiscid integer,
    sp_plan_ref integer,
    disceligid integer,
    bill_period integer not null ,
    cycle_code char(2) 
        default 'CM' not null ,
    spcnpramwefr datetime year to second not null ,
    spcnpramweto datetime year to second not null ,
    spcnpramamnt decimal(22,10) not null ,
    spcnpramused decimal(22,10) not null ,
    dcelaggrid int8,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

