drop table if exists "informix".sp_cn_contract ;
create table "informix".sp_cn_contract 
  (
    spcncontract_ref serial not null ,
    sp_cn_ref integer not null ,
    start_date datetime year to second not null ,
    contract_code char(4) not null ,
    contract_num varchar(254),
    end_date datetime year to second not null ,
    salesperson char(10),
    status_id integer 
        default 0 not null ,
    note lvarchar(10000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((status_id >= 0 ) AND (status_id <= 5 ) ) constraint "informix".zero_five19
  );

