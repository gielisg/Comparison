drop table if exists "informix".opportunity_type ;
create table "informix".opportunity_type 
  (
    opp_type_id serial not null ,
    opp_type_narr varchar(64,10) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

