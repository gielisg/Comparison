drop table if exists "informix".costcent_reln ;
create table "informix".costcent_reln 
  (
    costcent_relnid serial not null ,
    prnt_costcentid integer not null ,
    sub_costcentid integer not null ,
    costcent_relnwef datetime year to second,
    costcent_relnwet datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

