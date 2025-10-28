drop table if exists "informix".dealers ;
create table "informix".dealers 
  (
    dealer_id char(10) not null ,
    dealer_type_id integer 
        default 2 not null ,
    dealcatgid integer not null ,
    comm_type_id integer,
    comm_agg_sales char(1),
    object_id integer,
    passwd varchar(18),
    status_id integer 
        default 1 not null ,
    contact_code char(10) not null ,
    parent_id char(10),
    disp_self_care char(1) 
        default 'Y' not null ,
    gl_acctcode varchar(45),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (comm_agg_sales IN ('Y' ,'N' )),
    
    check (disp_self_care IN ('Y' ,'N' )) constraint "informix".yes_no
  );

