drop table if exists "informix".roam_part_utcoff ;
create table "informix".roam_part_utcoff 
  (
    contact_code char(10) not null ,
    roam_wef datetime year to second not null ,
    utc_offset char(10) not null 
  );

