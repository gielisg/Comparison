drop table if exists "informix".siteattrvl ;
create table "informix".siteattrvl 
  (
    siteattrvlid serial not null ,
    siteattrid integer not null ,
    siteattrvldata varchar(254,10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

