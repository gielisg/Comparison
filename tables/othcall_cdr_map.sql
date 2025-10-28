drop table if exists "informix".othcall_cdr_map ;
create table "informix".othcall_cdr_map 
  (
    othcall_map_ref serial not null ,
    clcall_type char(2) not null ,
    clcall_type_narr varchar(80),
    clrec_type char(2) not null ,
    clrec_type_narr varchar(20),
    mobile_locn char(1) not null ,
    mobile_locn_narr varchar(20),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

