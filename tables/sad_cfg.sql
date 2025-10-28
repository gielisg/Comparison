drop table if exists "informix".sad_cfg ;
create table "informix".sad_cfg 
  (
    pl_new_timeout integer 
        default 300 not null 
  );

