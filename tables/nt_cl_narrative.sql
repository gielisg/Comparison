drop table if exists "informix".nt_cl_narrative ;
create table "informix".nt_cl_narrative 
  (
    nt_cl_ref serial not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    narrative varchar(70),
    ori_cl_start_dt datetime year to second,
    ori_unitquantity decimal(12,3),
    bparty_dest varchar(16),
    trig_file_num integer,
    trig_rec_num integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

