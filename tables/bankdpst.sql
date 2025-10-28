drop table if exists "informix".bankdpst ;
create table "informix".bankdpst 
  (
    bankdpstid serial not null ,
    bank_acct_id integer not null ,
    bankdpstdate date 
        default today not null ,
    bus_unit_code char(2) not null ,
    bankdpststatcode char(2) not null ,
    bankdpstcomm varchar(255),
    bankdpstcashtotl decimal(12,2) 
        default 0.00 not null ,
    bankdpstcheqtotl decimal(10,2) 
        default 0.00 not null ,
    bankdpsttotl decimal(12,2) 
        default 0.00 not null ,
    bankdpsttype char(1) 
        default 'M' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (bankdpststatcode IN ('OP' ,'CA' ,'BK' )) constraint "informix".bdstatcode,
    
    check (bankdpsttype IN ('M' ,'A' ,'S' )) constraint "informix".dpst_type3
  );

