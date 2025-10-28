drop table if exists "informix".disc ;
create table "informix".disc 
  (
    discid serial not null ,
    disctypeid char(2) not null ,
    discsnar varchar(32) not null ,
    disclnar varchar(128) not null ,
    discbnar varchar(64) not null ,
    chlddiscid integer 
        default null,
    discintvstrt integer,
    discintvsrnd char(1) 
        default 'N' not null ,
    discintvend integer,
    discintvernd char(1) 
        default 'Y' not null ,
    discintvunit char(1) 
        default 'M' not null ,
    discordr smallint not null ,
    discwefr datetime year to second not null ,
    discweto datetime year to second not null ,
    discterminal char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (discintvunit IN ('D' ,'M' )) constraint "informix".discintv10,
    
    check (discterminal IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (discintvsrnd IN ('Y' ,'N' ,'C' )) constraint "informix".yes_no
  );

