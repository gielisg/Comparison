drop table if exists "informix".orders ;
create table "informix".orders 
  (
    order_id serial not null ,
    number varchar(50),
    contact_code char(10),
    date datetime year to second,
    body lvarchar(32000),
    dealer_id char(10),
    status varchar(30) 
        default 'New' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('New' ,'Pending' ,'On Hold' ,'Cancelled' ,'Error' ,'Committed' ,'Completed' ,'Partially Completed' ,'Partially Cancelled' ,'Pending Credit Approval' ,'Pending Technical Approval' ,'Partially Entered' ,'Quote Awaiting Acceptance' ,'Quote Accepted' ,'Under Assessment' ,'Waiting On Customer' ,'Declined' ,'Approved' )) 
              constraint "informix".status_orders3
  );

