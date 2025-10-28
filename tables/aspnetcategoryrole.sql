drop table if exists "informix".aspnetcategoryrole ;
create table "informix".aspnetcategoryrole 
  (
    category char(20) 
        default 'Customer' not null ,
    roleid integer not null ,
    default char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    
    check (category IN ('System' ,'Administrator' ,'ServiceProvider' ,'Customer' ,'CustomerRelated' ,'Partner' ,'PartnerRelated' )) 
              constraint "informix".chk_category10,
    
    check (default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

