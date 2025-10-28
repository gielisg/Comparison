drop table if exists "informix".menuitemspcnstat ;
create table "informix".menuitemspcnstat 
  (
    mnuitm_id integer not null ,
    sp_cn_status char(3) not null ,
    menuitemstatexcl char(1) 
        default 'N' not null ,
    mnuitm_caption varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (menuitemstatexcl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

