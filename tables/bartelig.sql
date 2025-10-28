drop table if exists "informix".bartelig ;
create table "informix".bartelig 
  (
    barteligid serial not null ,
    bartgrpid integer not null ,
    chg_code char(4),
    tar_class_code smallint,
    barteligwefr datetime year to second not null ,
    barteligweto datetime year to second not null ,
    barteligrate decimal(6,4) not null ,
    barteligincltax char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (((chg_code IS NULL ) AND (tar_class_code IS NOT NULL ) ) OR ((chg_code 
              IS NOT NULL ) AND (tar_class_code IS NULL ) ) ) constraint "informix".barteligchk26,
    
    check (barteligincltax IN ('Y' ,'N' ))
  );

