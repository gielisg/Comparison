drop table if exists "informix".policy_iisg_tran ;
create table "informix".policy_iisg_tran 
  (
    policy_id integer not null ,
    iisg_tran_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

