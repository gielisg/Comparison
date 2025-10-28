drop table if exists "informix".dcelbstf ;
create table "informix".dcelbstf 
  (
    disceligid integer not null ,
    strtypecd char(6) not null ,
    dcelbstfnobf smallint not null ,
    dcelbstfmntm integer not null ,
    dcelbstfdigi smallint 
        default 8 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

