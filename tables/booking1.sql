drop table if exists "informix".booking1 ;
create table "informix".booking1 
  (
    booking_id serial not null ,
    booking_ref varchar(20,5) not null ,
    booked_date date,
    sched_start_time datetime year to second not null ,
    sched_end_time datetime year to second not null ,
    act_start_time datetime year to second,
    act_end_time datetime year to second,
    status_id integer not null ,
    forfeit_cost char(1) 
        default 'N',
    siteid integer not null ,
    charged_service integer not null ,
    asset_service integer not null ,
    customer_note varchar(255),
    operation_note varchar(255),
    price decimal(16) not null ,
    email_confirm char(1) 
        default 'Y',
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

