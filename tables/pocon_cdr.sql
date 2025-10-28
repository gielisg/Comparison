drop table if exists "informix".pocon_cdr ;
create table "informix".pocon_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    billingclass varchar(120),
    calldate varchar(30),
    destination varchar(200),
    source varchar(60),
    billingsecs decimal(20,0),
    billingcharge decimal(13,3),
    info varchar(200)
  );

