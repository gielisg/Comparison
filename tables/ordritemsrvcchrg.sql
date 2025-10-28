drop table if exists "informix".ordritemsrvcchrg ;
create table "informix".ordritemsrvcchrg 
  (
    ordritemchrgid serial not null ,
    ordritemid integer,
    chg_code char(4) not null ,
    chg_narr varchar(64),
    default_amount decimal(18,10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

