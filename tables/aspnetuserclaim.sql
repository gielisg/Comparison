drop table if exists "informix".aspnetuserclaim ;
create table "informix".aspnetuserclaim 
  (
    id serial not null ,
    userid integer not null ,
    claimtype varchar(254),
    claimvalue lvarchar(4096)
  );

