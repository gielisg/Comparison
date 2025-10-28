drop table if exists "informix".fin_institution ;
create table "informix".fin_institution 
  (
    fin_inst_id serial not null ,
    fin_inst_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

