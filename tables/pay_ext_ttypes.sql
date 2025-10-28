drop table if exists "informix".pay_ext_ttypes ;
create table "informix".pay_ext_ttypes 
  (
    trans_type_code integer not null ,
    trans_type_narr varchar(32)
  );

