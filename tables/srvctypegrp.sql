drop table if exists "informix".srvctypegrp ;
create table "informix".srvctypegrp 
  (
    srvctype_grpcode char(4) not null ,
    srvctype_grpnarr varchar(32),
    sss_bill_grp varchar(16),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

