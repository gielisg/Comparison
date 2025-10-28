drop table if exists "informix".person_detail ;
create table "informix".person_detail 
  (
    contact_code char(10) not null ,
    sex char(1),
    initials char(4),
    dob date,
    title char(5),
    salutation varchar(32),
    occupation varchar(32),
    employee_ref varchar(32),
    abn varchar(20),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

