drop table if exists "informix".obs_service_num ;
create table "informix".obs_service_num 
  (
    obs_serv_num_ref serial not null ,
    service_num varchar(30) not null ,
    record_code char(2) not null ,
    service_class varchar(30),
    service_label varchar(30),
    hierarchy_id varchar(30),
    parent_id varchar(30),
    hierarchy_seq varchar(30),
    relative_level varchar(30),
    hierarchy_desc varchar(30),
    file_date date 
        default  '01/01/2018',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

