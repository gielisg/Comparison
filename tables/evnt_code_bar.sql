drop table if exists "informix".evnt_code_bar ;
create table "informix".evnt_code_bar 
  (
    event_type char(2) not null ,
    event_code char(2) not null ,
    action char(2) not null ,
    opp_event_type char(2),
    opp_event_code char(2),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (action IN ('BA' ,'UB' )) constraint "informix".bar_unbar7
  );

