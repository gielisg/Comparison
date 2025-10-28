drop table if exists "informix".tap2_lac_map ;
create table "informix".tap2_lac_map 
  (
    lac_map_ref serial not null ,
    cell_id decimal(5,0) not null ,
    effective_start date 
        default today not null ,
    effective_end date 
        default  '01/01/9999' not null 
  );

