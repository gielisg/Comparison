drop table if exists "informix".id_type ;
create table "informix".id_type 
  (
    id_type char(1) not null ,
    strtypecd char(6),
    id_narr varchar(254) not null ,
    id_points integer,
    credit_card char(1),
    has_exp_date char(1) 
        default 'N' not null ,
    has_issue_date char(1) 
        default 'N' not null ,
    contact_types_appl char(1) 
        default 'X' not null ,
    allow_duplicates char(1) 
        default 'N' not null ,
    has_state varchar(20) 
        default 'NotApplicable' not null ,
    has_reference varchar(20) 
        default 'NotApplicable' not null ,
    has_card_number varchar(20) 
        default 'NotApplicable' not null ,
    has_name varchar(20) 
        default 'NotApplicable' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (contact_types_appl IN ('B' ,'P' ,'X' )) constraint "informix".contact_types_app2,
    
    check (has_state IN ('Mandatory' ,'Optional' ,'NotApplicable' )) constraint "informix".idtype_mona13,
    
    check (has_reference IN ('Mandatory' ,'Optional' ,'NotApplicable' )) constraint 
              "informix".idtype_mona14,
    
    check (has_card_number IN ('Mandatory' ,'Optional' ,'NotApplicable' )) constraint 
              "informix".idtype_mona15,
    
    check (has_name IN ('Mandatory' ,'Optional' ,'NotApplicable' )) constraint "informix".idtype_mona16,
    
    check (has_issue_date IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_duplicates IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (credit_card IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (has_exp_date IN ('Y' ,'N' ,'O' )) constraint "informix".yes_no
  );

