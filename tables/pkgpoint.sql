drop table if exists "informix".pkgpoint ;
create table "informix".pkgpoint 
  (
    pkgpoint_id serial not null ,
    pkg_code integer not null ,
    option smallint not null ,
    pkgpoint_wef date not null ,
    pkgpoint_wet date 
        default  '01/01/9999' not null ,
    pkgpoint_qtyper integer 
        default 0 not null ,
    pkgpoint_unitqty integer 
        default 1 not null ,
    pkgpoint_unit char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (pkgpoint_unit IN ('D' ,'M' ,'Y' )) constraint "informix".day_month_year99
  );

