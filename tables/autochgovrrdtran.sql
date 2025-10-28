drop table if exists "informix".autochgovrrdtran ;
create table "informix".autochgovrrdtran 
  (
    chgoverrideid integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    autochgovrrddesc varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

