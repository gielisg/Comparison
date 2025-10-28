drop table if exists "informix".fin_pre_fin_hdr ;
create table "informix".fin_pre_fin_hdr 
  (
    pre_auth_ref integer not null ,
    fin_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

