drop table if exists "informix".ntwkident ;
create table "informix".ntwkident 
  (
    ntwkidentid serial not null ,
    identtypecd char(4) not null ,
    ntwkidentvalue varchar(254),
    puk char(8),
    min varchar(10,1),
    esn_dec varchar(15,1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

