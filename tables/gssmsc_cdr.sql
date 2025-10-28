drop table if exists "informix".gssmsc_cdr ;
create table "informix".gssmsc_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    traffic_event char(10) not null ,
    dest_addr_phys varchar(254,1),
    oorig_addr_phys varchar(254,1),
    orig_addr_phys varchar(254,1),
    accept_time char(14),
    imsi varchar(18,1)
  );

