drop table if exists "informix".attribdef ;
create table "informix".attribdef 
  (
    attribid serial not null ,
    attribnarr varchar(254,32) not null ,
    entityid integer not null ,
    menu_id integer,
    object_id integer,
    attr_class_id integer,
    key_type char(4),
    strtypecd char(6) not null ,
    usestrtypenarr char(1) 
        default 'Y' not null ,
    disp_ord integer 
        default 1 not null ,
    datatypectrl char(1) not null ,
    minnum integer 
        default 1 not null ,
    maxnum integer 
        default 1 not null ,
    spattribcode varchar(40),
    med_attribute char(1) 
        default 'N' not null ,
    default_value varchar(128),
    datatype integer 
        default 0,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (maxnum >= minnum ) constraint "informix".attribdefchk,
    
    check (minnum >= 1 ),
    
    check (maxnum >= 1 ),
    
    check (usestrtypenarr IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (med_attribute IN ('Y' ,'N' )) constraint "informix".yes_no
  );

