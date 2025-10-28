drop table if exists "informix".timebanddetl ;
create table "informix".timebanddetl 
  (
    timebandcode char(4) not null ,
    tmbddetldayfr smallint not null ,
    tmbddetltimefr datetime hour to second not null ,
    tmbddetldayto smallint not null ,
    tmbddetltimeto datetime hour to second not null ,
    timebanddetlnarr varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

