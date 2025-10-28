drop table if exists "informix".fin_type ;
create table "informix".fin_type 
  (
    fin_type_code char(2) not null ,
    fin_type_narr varchar(32) not null ,
    fin_tp_proc_ordr integer 
        default 1 not null ,
    fin_type_credit char(1) 
        default 'Y' not null ,
    fin_tp_disp_ordr integer 
        default 1 not null ,
    rpt_pathname varchar(128),
    pdf_path varchar(128),
    api_pdf_path varchar(128),
    api_excel_path varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

