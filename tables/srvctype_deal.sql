drop table if exists "informix".srvctype_deal ;
create table "informix".srvctype_deal 
  (
    srvctypecode char(4) not null ,
    dealer_id char(10) not null ,
    spcode varchar(8),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

