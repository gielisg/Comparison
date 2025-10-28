drop table if exists "informix".sgfx_groups ;
create table "informix".sgfx_groups 
  (
    group_id serial not null ,
    status_id integer 
        default 0 not null ,
    id varchar(254),
    name varchar(80),
    type char(4),
    billable char(1),
    description varchar(128),
    timezone varchar(64),
    parent1 varchar(64),
    parent2 varchar(64),
    nameci varchar(80),
    create_event char(1) 
        default 'N',
    version char(2),
    resource_type char(2) 
        default 'AU',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (create_event IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check ((status_id >= 0 ) AND (status_id <= 5 ) ) constraint "informix".zero_five18
  );

