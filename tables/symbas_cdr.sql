drop table if exists "informix".symbas_cdr ;
create table "informix".symbas_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(2),
    reference varchar(128),
    type varchar(10),
    start_time varchar(20),
    originating_num varchar(32),
    destination_num varchar(20),
    tariff_code varchar(10),
    duration varchar(20),
    uom varchar(5),
    description varchar(128),
    group varchar(64),
    aspire_charge varchar(15),
    achieve_charge varchar(15),
    aspire_planid varchar(10),
    achieve_planid varchar(10)
  );

