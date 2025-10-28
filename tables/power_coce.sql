drop table if exists "informix".power_coce ;
create table "informix".power_coce 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    account_no decimal(10,0),
    invoice_no decimal(10,0),
    statement_date varchar(14),
    type_code integer,
    billing_level integer,
    transaction_date varchar(14),
    nrc_type_id integer,
    element_id integer,
    external_id varchar(50),
    external_id_type integer,
    amount decimal(18,2),
    currency varchar(6),
    tax_1 varchar(18),
    tax_2 varchar(18),
    description varchar(50),
    adj_code integer,
    coce_rec_id char(20),
    start_dtm datetime year to second,
    end_dtm datetime year to second,
    rebill_ref_id char(16),
    provider_id integer,
    usage_id decimal(6,0),
    rated_units decimal(18,0),
    rated_unit_type decimal(6,0),
    adjust_type_id decimal(7,0),
    disc_type_id decimal(7,0),
    filler varchar(39)
  );

