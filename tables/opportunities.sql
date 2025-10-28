drop table if exists "informix".opportunities ;
create table "informix".opportunities 
  (
    opp_ref serial not null ,
    opp_type_id integer not null ,
    opp_name varchar(254,32),
    opp_desc varchar(254,32),
    lead_src_code integer not null ,
    stage_id integer not null ,
    curr_code char(3),
    contact_code char(10) not null ,
    opp_amount decimal(10,3),
    exp_close_date date,
    next_step varchar(254,20),
    fu_date date,
    probability integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((probability >= 0 ) AND (probability <= 100 ) ) constraint "informix".percent31
  );

