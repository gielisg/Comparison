drop table if exists "informix".sp_reln ;
create table "informix".sp_reln 
  (
    sp_cn_ref1 integer not null ,
    sp_cn_ref2 integer not null ,
    relntypeid char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

