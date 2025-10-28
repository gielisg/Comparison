drop table if exists "informix".spcn_sup_contr ;
create table "informix".spcn_sup_contr 
  (
    spcnsupcontr_ref serial not null ,
    sp_cn_ref integer not null ,
    start_date date not null ,
    sup_contr_code char(4) not null ,
    end_date date not null ,
    network_id char(2),
    comment varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

