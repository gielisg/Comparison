drop table if exists "informix".ntwtrans_layout ;
create table "informix".ntwtrans_layout 
  (
    ntwtrantypecd char(10) not null ,
    definition_wefr datetime year to second not null ,
    definition_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    delim_heading char(1200) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

