drop table if exists "informix".srvctype_status ;
create table "informix".srvctype_status 
  (
    id serial not null ,
    srvctypecode char(4) not null ,
    sp_cn_status char(3) not null ,
    life_cycle_phase varchar(20) 
        default 'Activated' not null ,
    default char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (life_cycle_phase IN ('PortIn' ,'PortOut' ,'PendingActivation' ,'Activated' ,'PendingTermination' ,'Terminated' ,'Order' )) 
              constraint "informix".life_cycle_phase2,
    
    check (default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

