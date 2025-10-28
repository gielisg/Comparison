drop table if exists "informix".datasrce ;
create table "informix".datasrce 
  (
    datasrcecode char(4) not null ,
    datasrcename varchar(40,18) not null ,
    datasrcenarr varchar(128,32) not null ,
    datasrcestat char(1) 
        default 'A' not null ,
    dispordr integer 
        default 0 not null ,
    
    check (datasrcestat IN ('L' ,'A' ,'N' )) constraint "informix".datasrcestat20
  );

