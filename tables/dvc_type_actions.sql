drop table if exists "informix".dvc_type_actions ;
create table "informix".dvc_type_actions 
  (
    dvctype_act_id serial not null ,
    type_id integer not null ,
    action_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    direction char(1),
    msg_broker_id integer,
    set_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (direction IN ('O' ,'I' ,'B' ,'U' )) constraint "informix".oibu16
  );

