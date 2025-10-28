drop table if exists "informix".billrunnotes ;
create table "informix".billrunnotes 
  (
    billrunnoteref serial not null ,
    billrunref integer not null ,
    note varchar(255) not null ,
    seq_no smallint not null ,
    note_deleted char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (note_deleted IN ('Y' ,'N' )) constraint "informix".yes_no
  );

