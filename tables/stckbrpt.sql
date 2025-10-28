drop table if exists "informix".stckbrpt ;
create table "informix".stckbrpt 
  (
    stckbrptctrlnum varchar(32) not null ,
    stckbrptmanfcode varchar(32) not null ,
    stckbrptsim varchar(20),
    stckbrptimei varchar(15),
    stckbrptproddate date 
        default today not null ,
    stckbrptused char(1) 
        default 'N' not null ,
    phone_num varchar(64),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

