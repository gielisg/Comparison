drop table if exists "informix".resv_num_types ;
create table "informix".resv_num_types 
  (
    resv_num_typ_id char(2) not null ,
    network_id char(2) not null ,
    disp_order smallint not null ,
    resv_num_narr varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

