drop table if exists "informix".discelig ;
create table "informix".discelig 
  (
    disceligid serial not null ,
    discid integer not null ,
    eligtypeid char(2) not null ,
    disceligordr smallint 
        default 1 not null ,
    disceligexcl char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (disceligexcl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

