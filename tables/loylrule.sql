drop table if exists "informix".loylrule ;
create table "informix".loylrule 
  (
    loylruleid serial not null ,
    loylplanid integer not null ,
    loylrulenarr varchar(120) not null ,
    loylruleenabled char(1) 
        default 'Y' not null ,
    loyleligtypecode char(4) not null ,
    loylrulepntsdolr decimal(5,2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

