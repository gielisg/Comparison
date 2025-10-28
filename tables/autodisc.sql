drop table if exists "informix".autodisc ;
create table "informix".autodisc 
  (
    autodiscid serial not null ,
    autodiscnarr varchar(64) not null ,
    discid integer not null ,
    autodiscmaxappl integer,
    autodiscwefr date not null ,
    autodiscweto date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

