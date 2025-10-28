drop table if exists "informix".h_sp_cn_chg ;
create table "informix".h_sp_cn_chg 
  (
    sp_cn_chg_ref integer not null ,
    hst_type char(3) not null ,
    end_date datetime year to second not null ,
    default_amount decimal(18,10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

