drop table if exists "informix".template_body_part ;
create table "informix".template_body_part 
  (
    tempbodypart_id serial not null ,
    template_id integer not null ,
    seq_num smallint not null ,
    body_part lvarchar(32000) not null ,
    
    check (seq_num > 0 ) constraint "informix".greater_than_041
  );

