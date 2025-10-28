drop table if exists "informix".svc_step_type ;
create table "informix".svc_step_type 
  (
    srvctypecode char(4) not null ,
    step_type integer not null ,
    seq_num integer not null ,
    valid_days integer 
        default 0 not null 
  );

