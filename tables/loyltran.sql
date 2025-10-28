drop table if exists "informix".loyltran ;
create table "informix".loyltran 
  (
    loyltranref serial not null ,
    debtor_code char(10) not null ,
    loylsrcecode char(2) not null ,
    loyltranstat char(2) not null ,
    loyltrandate date not null ,
    loylexprdate date not null ,
    loyltranamnt decimal(10,2) not null ,
    loyltranavalamnt decimal(10,2) not null ,
    loyltranopenamnt decimal(10,2) not null ,
    loylreascode char(2) not null ,
    loyltranbillnarr varchar(254),
    loylruleid integer,
    fin_ref integer,
    loylcontid integer,
    bill_period integer,
    cycle_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (loyltranstat IN ('WP' ,'WB' ,'PB' ,'AP' ,'VD' ,'EX' )) constraint "informix".loyltranstat11
  );

