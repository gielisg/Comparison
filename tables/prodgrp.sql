drop table if exists "informix".prodgrp ;
create table "informix".prodgrp 
  (
    prodgrpid serial not null ,
    prodgrpnarr varchar(128) not null ,
    prodgrpdflt char(1) 
        default 'N' not null 
  );

