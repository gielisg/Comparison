drop table if exists "informix".spnblassnmbr ;
create table "informix".spnblassnmbr 
  (
    nblassnmbrref serial not null ,
    sp_cn_ref integer not null ,
    spnblasstypeid char(2) not null ,
    srvcnmbr varchar(254) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

