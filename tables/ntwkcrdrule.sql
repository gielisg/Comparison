drop table if exists "informix".ntwkcrdrule ;
create table "informix".ntwkcrdrule 
  (
    ntwkcrdruleid serial not null ,
    ntwkcrdplanid integer not null ,
    ntwkcrdrulenarr varchar(120) not null ,
    ntwkcrdruleenabled char(1) 
        default 'Y' not null ,
    ntwkcrdeligtypeid integer not null ,
    ntwcrdrulepntsdolr decimal(5,2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

