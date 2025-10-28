drop table if exists "informix".bartgrp ;
create table "informix".bartgrp 
  (
    bartgrpid serial not null ,
    bartgrpnarr varchar(32) not null 
  );

