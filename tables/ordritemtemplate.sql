drop table if exists "informix".ordritemtemplate ;
create table "informix".ordritemtemplate 
  (
    orditm_templ_ref serial not null ,
    srvctypecode char(4) not null ,
    acttype char(10) not null ,
    note_narr varchar(100),
    note_template varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

