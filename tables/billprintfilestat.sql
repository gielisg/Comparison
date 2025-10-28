drop table if exists "informix".billprintfilestat ;
create table "informix".billprintfilestat 
  (
    billprtfilestatref serial not null ,
    billstepref integer not null ,
    billrunref integer not null ,
    billprintfileseq integer not null ,
    start_bill_ref integer not null ,
    end_bill_ref integer not null ,
    printstarted datetime year to second,
    printcompleted datetime year to second,
    filesysfileref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

