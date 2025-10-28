drop table if exists "informix".stmt_code ;
create table "informix".stmt_code 
  (
    stmt_code char(1) not null ,
    stmt_narr varchar(32) not null ,
    rpt_pathname varchar(128) not null ,
    pdf_path varchar(128) not null ,
    dev_rpt_pathname varchar(255),
    dev_pdf_path varchar(255),
    stmt_code_dft char(1) 
        default 'Y' not null ,
    stmt_dis_ordr smallint 
        default 1 not null ,
    new_chg_min decimal(8,2) 
        default 0.00 not null ,
    new_chg_max decimal(8,2) 
        default 0.00 not null ,
    balance_min decimal(8,2) 
        default 0.00 not null ,
    balance_max decimal(8,2) 
        default 0.00 not null ,
    display char(1) 
        default 'Y' not null ,
    api_pdf_path varchar(128),
    api_excel_path varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (stmt_code_dft IN ('Y' ,'N' )),
    
    check (display IN ('Y' ,'N' )) constraint "informix".yes_no
  );

