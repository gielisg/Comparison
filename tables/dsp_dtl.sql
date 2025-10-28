drop table if exists "informix".dsp_dtl ;
create table "informix".dsp_dtl 
  (
    dsp_id integer not null ,
    dsp_line_num smallint not null ,
    prod_code char(20) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

