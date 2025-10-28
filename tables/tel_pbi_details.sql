drop table if exists "informix".tel_pbi_details ;
create table "informix".tel_pbi_details 
  (
    pbi_code char(8) not null ,
    bill_elem_code char(8) not null ,
    distrange_code char(4) not null ,
    pbi_desc varchar(80,1),
    distrange_desc varchar(50,1),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

