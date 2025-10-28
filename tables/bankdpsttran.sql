drop table if exists "informix".bankdpsttran ;
create table "informix".bankdpsttran 
  (
    bankdpstid integer not null ,
    fin_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

