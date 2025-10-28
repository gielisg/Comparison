drop table if exists "informix".invmsg_dtl ;
create table "informix".invmsg_dtl 
  (
    invmsg_num integer not null ,
    line_num smallint not null ,
    msg_narr char(70) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

