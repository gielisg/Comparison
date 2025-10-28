drop table if exists "informix".invmsg_hdr ;
create table "informix".invmsg_hdr 
  (
    invmsg_num serial not null ,
    invmsg_type char(1) not null ,
    display_order smallint not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

