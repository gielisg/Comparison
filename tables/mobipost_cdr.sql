drop table if exists "informix".mobipost_cdr ;
create table "informix".mobipost_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    corporate_name varchar(255),
    location varchar(255),
    mms_sent decimal(20,0),
    mms_delivered decimal(20,0),
    mms_percentage decimal(13,2),
    sms_sent decimal(20,0),
    tot_sms_parts decimal(20,0),
    smses_to_bill decimal(20,0),
    email_sent decimal(20,0),
    txt varchar(20),
    usage_type varchar(20,3),
    ref_rec_num integer
  );

