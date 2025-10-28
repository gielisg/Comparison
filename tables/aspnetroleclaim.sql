drop table if exists "informix".aspnetroleclaim ;
create table "informix".aspnetroleclaim 
  (
    id serial not null ,
    roleid integer not null ,
    claimtype varchar(254),
    claimvalue lvarchar(4096)
  );

