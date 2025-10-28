drop table if exists "informix".ntfl_actlog ;
create table "informix".ntfl_actlog 
  (
    log_id serial not null ,
    nt_file_num integer not null ,
    seq_num integer,
    action_id integer not null ,
    action_dt datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

