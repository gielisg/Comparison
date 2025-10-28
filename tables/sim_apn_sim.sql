drop table if exists "informix".sim_apn_sim ;
create table "informix".sim_apn_sim 
  (
    sim_apn_id integer not null ,
    sim_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    end_dt datetime year to second,
    sim_apn_status smallint 
        default 0 not null ,
    note lvarchar,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((sim_apn_status >= 0 ) AND (sim_apn_status <= 5 ) ) constraint "informix".zero_five5
  );

