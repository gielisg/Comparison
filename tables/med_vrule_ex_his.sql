drop table if exists "informix".med_vrule_ex_his ;
create table "informix".med_vrule_ex_his 
  (
    med_vr_ex_his_id serial not null ,
    med_rset_dtl_id integer not null ,
    med_id integer not null ,
    description varchar(30),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

