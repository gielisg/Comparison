drop table if exists "informix".rsl_inbound ;
create table "informix".rsl_inbound 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    originating_num varchar(30),
    origin varchar(254),
    inbound_num varchar(30),
    terminating_num varchar(30),
    local_time datetime year to fraction(3),
    termination varchar(10),
    event_num varchar(22),
    presentation_ind char(1),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

