drop table if exists "informix".ordrdisprqstitem ;
create table "informix".ordrdisprqstitem 
  (
    ordritemid integer not null ,
    ordrdisprqstid integer not null ,
    rqstfilelineno integer,
    rqstordrlineno integer,
    ordrdisprqitresp char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ordrdisprqitresp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

