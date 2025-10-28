drop table if exists "informix".loylplan ;
create table "informix".loylplan 
  (
    loylplanid serial not null ,
    loylplannarr varchar(64) not null ,
    loylplanaccmbsis char(1) 
        default 'I' not null ,
    loylplanexprmths integer 
        default 0 not null ,
    loylplanexprrefr char(1) 
        default 'N' not null ,
    loylplanrelscrit char(4) 
        default 'IMMD' not null ,
    loylplanblcksize decimal(10,2) 
        default 0.00 not null ,
    loylplanenabled char(1) 
        default 'Y' not null ,
    loylplandispordr integer not null ,
    loylplanwefr date not null ,
    loylplanweto date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

