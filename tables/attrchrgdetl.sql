drop table if exists "informix".attrchrgdetl ;
create table "informix".attrchrgdetl 
  (
    attrchrgdetlref serial not null ,
    attrchrgdateref integer not null ,
    attribvalue1 varchar(64),
    attribvalue2 varchar(64),
    lowrbandvalu integer,
    upprbandvalu integer,
    fixdchrgextx decimal(18,10) not null ,
    unitchrgextx decimal(18,10) not null ,
    attrchrgdetlnarr varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

