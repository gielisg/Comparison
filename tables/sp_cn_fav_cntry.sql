drop table if exists "informix".sp_cn_fav_cntry ;
create table "informix".sp_cn_fav_cntry 
  (
    sp_fav_co_id serial not null ,
    sp_cn_ref integer not null ,
    country_code char(2) not null ,
    fav_wef datetime year to second 
        default current year to second not null ,
    fav_wet datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    fav_used char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (fav_used IN ('Y' ,'N' )) constraint "informix".yes_no
  );

