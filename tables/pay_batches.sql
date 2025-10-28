drop table if exists "informix".pay_batches ;
create table "informix".pay_batches 
  (
    batch_id serial not null ,
    created_dt datetime year to second 
        default current year to second,
    sent_dt datetime year to second 
        default current year to second
  );

