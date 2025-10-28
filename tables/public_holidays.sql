drop table if exists "informix".public_holidays ;
create table "informix".public_holidays 
  (
    state_code char(3) not null ,
    country_code char(2) not null ,
    holiday_date date not null ,
    hol_type_code char(10) not null ,
    holiday_narr varchar(64,10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (state_code IN ('ACT' ,'NSW' ,'NT' ,'QLD' ,'SA' ,'TAS' ,'VIC' ,'WA' ,'NA' )) 
              constraint "informix".holiday_state_code
  );

