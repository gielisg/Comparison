drop table if exists "informix".inv_proof ;
create table "informix".inv_proof 
  (
    debtor_code char(10) not null ,
    invpnarr varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

