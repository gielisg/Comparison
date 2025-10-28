drop table if exists "informix".accterms ;
create table "informix".accterms 
  (
    accterm_ref serial not null ,
    debtor_code char(10) not null ,
    terms_wef date 
        default today not null ,
    terms_wet date 
        default  '01/01/9999' not null ,
    term_code char(2) not null ,
    credit_limit integer 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

