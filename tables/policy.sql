drop table if exists "informix".policy ;
create table "informix".policy 
  (
    policy_id serial not null ,
    ins_source_id integer,
    policy_ref char(10),
    policy_wef datetime year to second,
    policy_wet datetime year to second,
    master_policy_id integer not null ,
    policy_create_dt datetime year to second,
    policy_create_user varchar(18,10) 
        default user not null ,
    contact_code char(10) not null ,
    ins_status_id integer not null ,
    event_ref integer,
    ins_reason_id integer,
    ins_order_id integer,
    phone_users varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

