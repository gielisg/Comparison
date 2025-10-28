drop table if exists "informix".aspnetemlsmsconf ;
create table "informix".aspnetemlsmsconf 
  (
    id serial not null ,
    userid integer not null ,
    type varchar(32) not null ,
    sent_dt datetime year to second 
        default current year to second not null ,
    status varchar(32) not null ,
    status_dt datetime year to second 
        default current year to second not null ,
    
    check (status IN ('Sent' ,'Confirmed' ,'Blocked' )) constraint "informix".status_aspemlsms,
    
    check (type IN ('Email' ,'SMS' ,'Block' )) constraint "informix".type_aspemlsms3
  );

