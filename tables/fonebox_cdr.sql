drop table if exists "informix".fonebox_cdr ;
create table "informix".fonebox_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    event_id varchar(30),
    cl_date_time varchar(20),
    orig_number varchar(63,12),
    term_number varchar(63,11),
    charged_part varchar(63,13),
    cl_duration integer,
    cl_rate varchar(80),
    cl_cost decimal(13,3),
    location_info varchar(130)
  );

