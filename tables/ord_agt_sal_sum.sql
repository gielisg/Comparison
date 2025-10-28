drop table if exists "informix".ord_agt_sal_sum ;
create table "informix".ord_agt_sal_sum 
  (
    rec_id integer not null ,
    bus_unit_code char(2) not null ,
    bus_unit_narr varchar(32) not null ,
    complete integer 
        default 0 not null ,
    incomplete integer 
        default 0 not null ,
    declined integer 
        default 0 not null 
  );

