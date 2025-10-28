drop table if exists "informix".fhdr_paymentplan ;
create table "informix".fhdr_paymentplan 
  (
    plan_ref integer not null ,
    fin_ref integer not null 
  );

