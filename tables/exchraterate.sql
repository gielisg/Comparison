drop table if exists "informix".exchraterate ;
create table "informix".exchraterate 
  (
    exchraterateid serial not null ,
    exchrateref integer not null ,
    exchratewefr date 
        default today not null ,
    exchrateweto date 
        default  '01/01/9999' not null ,
    exchraterate decimal(12,6) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

