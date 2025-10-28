drop table if exists "informix".pay_stat_reasons ;
create table "informix".pay_stat_reasons 
  (
    reason_id serial not null ,
    reason_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

