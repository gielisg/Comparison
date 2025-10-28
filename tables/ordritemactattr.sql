drop table if exists "informix".ordritemactattr ;
create table "informix".ordritemactattr 
  (
    acttype char(10) not null ,
    attrcode varchar(12) not null ,
    email_narr varchar(40),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

