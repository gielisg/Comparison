drop table if exists "informix".fin_invdtl ;
create table "informix".fin_invdtl 
  (
    fin_invdtl_ref serial not null ,
    fin_ref integer,
    sp_cn_ref integer not null ,
    bill_ref integer,
    inv_line_num integer,
    linetypecd char(1) not null ,
    amount decimal(18,10) 
        default 0.0000000000 not null ,
    tax_amount decimal(18,10) 
        default 0.0000000000 not null ,
    rnd_amount decimal(18,10),
    fin_inv_stat char(2) 
        default 'IN' not null ,
    fin_inv_from_dtm datetime year to second not null ,
    fin_inv_to_dtm datetime year to second not null ,
    archive_flag char(1) 
        default 'N' not null ,
    fin_inv_crt_dt datetime year to second 
        default current year to second not null ,
    prnt_invdtl_ref integer,
    
    check (fin_inv_stat IN ('IN' ,'LD' ,'PN' ,'IG' ,'ON' )) constraint "informix".fin_inv_stat39,
    
    check (linetypecd != 'X' ) constraint "informix".no_x,
    
    check (archive_flag IN ('Y' ,'N' ,'Z' )) constraint "informix".yes_no
  );

