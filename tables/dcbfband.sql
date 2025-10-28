drop table if exists "informix".dcbfband ;
create table "informix".dcbfband 
  (
    discbenfid integer not null ,
    dcbfbandno integer not null ,
    dcbfbandlowr decimal(20,10) 
        default 0.0000000000 not null ,
    dcbfbanduppr decimal(20,10) 
        default 0.0000000000 not null ,
    dcbfbandperc decimal(16,10) not null ,
    dcbfbanddiscamnt decimal(20,10),
    disceligid integer,
    dcbfbandinclflag char(1) 
        default 'Y' not null ,
    dcbfbandprorate char(1) 
        default 'Y',
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

