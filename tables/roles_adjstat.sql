drop table if exists "informix".roles_adjstat ;
create table "informix".roles_adjstat 
  (
    adj_stat_code char(2) not null ,
    role_id integer not null 
  );

