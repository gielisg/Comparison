drop table if exists "informix".bill_msg_cnfg ;
create table "informix".bill_msg_cnfg 
  (
    bus_unit_code char(2) not null ,
    trigger_type smallint not null ,
    msg_num varchar(254,20) not null ,
    msg varchar(254,20) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

