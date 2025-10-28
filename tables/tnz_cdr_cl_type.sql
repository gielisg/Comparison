drop table if exists "informix".tnz_cdr_cl_type ;
create table "informix".tnz_cdr_cl_type 
  (
    tnz_cdr_cltp_ref serial not null ,
    record_type char(4) not null ,
    calltype char(4) not null ,
    reference char(50) not null ,
    billing_desc char(128) not null ,
    jurisdiction char(4) not null ,
    cost char(20) not null ,
    calltype_narr varchar(128) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

