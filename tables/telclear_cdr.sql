drop table if exists "informix".telclear_cdr ;
create table "informix".telclear_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    customer_num char(11),
    originating_ani char(15),
    terminating_num varchar(16),
    call_start_dtm datetime year to second,
    rated_seconds decimal(9,0),
    rated_amount decimal(14,4),
    country_code char(4),
    billable_authani varchar(15),
    answer_qualifier char(3),
    reversal_ind char(1),
    account_code varchar(7),
    call_party_cat char(2),
    cli_suppressed char(1),
    call_type char(6)
  );

