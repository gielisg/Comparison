drop table if exists "informix".rounding_meths ;
create table "informix".rounding_meths 
  (
    rnd_meth_code char(2) not null ,
    rnd_meth_narr varchar(32) not null ,
    rnd_meth_type char(1) not null ,
    rnd_meth_prec integer not null ,
    rnd_whole_chgs char(1) 
        default 'N' not null ,
    rnd_meth_dflt char(1) 
        default 'N' not null ,
    rnd_meth_enabled char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((rnd_meth_prec >= 0 ) AND (rnd_meth_prec <= 10 ) ) constraint "informix".rnd_meth_prec_2,
    
    check (rnd_meth_type IN ('U' ,'D' ,'N' ,'G' ,'P' ,'B' ,'A' )) constraint "informix".rnd_meth_udngbap,
    
    check (rnd_whole_chgs IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (rnd_meth_dflt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (rnd_meth_enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

