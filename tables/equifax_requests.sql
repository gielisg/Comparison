drop table if exists "informix".equifax_requests ;
create table "informix".equifax_requests 
  (
    req_id serial not null ,
    request_id varchar(40),
    request_dt datetime year to second 
        default current year to second not null ,
    status char(10) 
        default 'New' not null ,
    note varchar(254),
    request lvarchar(31000),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('New' ,'In Progress' ,'Completed' ,'Failed' ,'Cancelled' )) 
              constraint "informix".status_eq_requests
  );

