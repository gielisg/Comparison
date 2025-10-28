drop table if exists "informix".ntwkcrdsrce ;
create table "informix".ntwkcrdsrce 
  (
    ntwkcrdsrceid serial not null ,
    ntwkcrdsrcenarr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

