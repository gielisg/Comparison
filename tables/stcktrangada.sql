drop table if exists "informix".stcktrangada ;
create table "informix".stcktrangada 
  (
    stcktrangadaid serial not null ,
    stcktrangadapcn char(8) not null ,
    stcktrangadaactn char(1) not null ,
    stcktrangadaprod char(1),
    stcktrangadasim varchar(20,10),
    stcktrangadaimei varchar(15),
    stcktrangadadate char(8) not null ,
    stcktrangadaproc char(1) 
        default 'N' not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stcktrangadaproc IN ('Y' ,'N' )) constraint "informix".yes_no
  );

