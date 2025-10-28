drop table if exists "informix".ordritem ;
create table "informix".ordritem 
  (
    ordritemid serial not null ,
    ordrid integer not null ,
    ordritemlineno integer not null ,
    ordritemprntid integer,
    prodtypecode char(4),
    prodcode varchar(194),
    ordritemnarr varchar(128) not null ,
    ordritemstatcode char(4) not null ,
    ordritemstatdatm datetime year to second 
        default current year to second not null ,
    ordritemqnty integer not null ,
    ordritemcostex decimal(8,2),
    ordritemprceex decimal(8,2),
    ordritemprcetx decimal(8,2),
    ordritemnote varchar(254),
    ordritemsuppnote lvarchar(510),
    ordritemsuppname varchar(254),
    ordritemacttype char(10),
    ordritemtype char(1) 
        default 'P' not null ,
    ordritemreqdate datetime year to second,
    ordritemref char(12),
    rel_srvc integer,
    amended char(1),
    ordriteminvnote varchar(255),
    ordritemsuppdate date,
    ordritemsuppref char(15),
    debtor_code char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ordritemtype IN ('P' ,'A' )) constraint "informix".ordritemtype10
  );

