drop table if exists "informix".subsdiscuserinfo ;
create table "informix".subsdiscuserinfo 
  (
    subsdiscinfoid serial not null ,
    subsdiscid integer not null ,
    disceligid integer not null ,
    subsdiscinfoseqn integer not null ,
    subsdiscinfowefr datetime year to second not null ,
    subsdiscinfoweto datetime year to second not null ,
    subsdiscinfoinfo varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

