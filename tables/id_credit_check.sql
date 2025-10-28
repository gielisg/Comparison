drop table if exists "informix".id_credit_check ;
create table "informix".id_credit_check 
  (
    idcheck_id serial not null ,
    contact_code char(10),
    score varchar(50),
    id_check_status varchar(30),
    vender varchar(20) 
        default 'Equifax' not null ,
    type varchar(20) 
        default 'Id Only' not null ,
    request_status varchar(20) 
        default 'New' not null ,
    request lvarchar(10000),
    request_dt datetime year to second,
    response_dt datetime year to second,
    error varchar(254),
    created_by varchar(18,10) 
        default user not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    
    check (request_status IN ('New' ,'Pending' ,'In Progress' ,'Cancelled' ,'Completed' ,'Failed' )) 
              constraint "informix".idcheck_reqstatus2,
    
    check (id_check_status IN ('Verified' ,'Unverified' ,'No Record' ,'Possible Fraud' ,'More Information Required' )) 
              constraint "informix".idcheck_status2,
    
    check (type IN ('Id Only' ,'Credit Score Only' ,'Id and Score' )) constraint 
              "informix".idcheck_type2,
    
    check (vender = 'Equifax' ) constraint "informix".idcheck_vender2
  );

