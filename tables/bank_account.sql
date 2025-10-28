drop table if exists "informix".bank_account ;
create table "informix".bank_account 
  (
    bank_acct_id serial not null ,
    bank_acct_narr varchar(32) not null ,
    bank_bsb char(7),
    bank_acct_num char(20),
    curr_code char(3),
    fin_inst_id integer,
    rpt_pathname varchar(128),
    pdf_path varchar(128),
    bus_unit_code char(2),
    gl_acctcode varchar(45),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

