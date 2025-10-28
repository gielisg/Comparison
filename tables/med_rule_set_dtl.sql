drop table if exists "informix".med_rule_set_dtl ;
create table "informix".med_rule_set_dtl 
  (
    med_rset_dtl_id serial not null ,
    med_rule_set_id integer not null ,
    med_rset_seq_no integer not null ,
    med_rule_id integer not null ,
    attribid integer,
    med_exc_rule_id integer,
    exception_status integer,
    success_status integer,
    note byte,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

