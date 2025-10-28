drop table if exists "informix".fin_split ;
create table "informix".fin_split 
  (
    fin_split_ref serial not null ,
    to_fin_ref integer not null ,
    from_fin_ref integer not null ,
    refund_fin_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

