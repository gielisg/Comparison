drop table if exists "informix".ord_grp_mig ;
create table "informix".ord_grp_mig 
  (
    ord_group_num integer not null ,
    sim_num char(20),
    puk char(10),
    phone_num varchar(64),
    ser_num char(20),
    enq_passwd char(20)
  );

