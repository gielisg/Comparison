drop table if exists "informix".ad_positions ;
create table "informix".ad_positions 
  (
    ad_position_id char(2) not null ,
    ad_position_narr varchar(32) not null 
  );

