drop table if exists "informix".menu_items ;
create table "informix".menu_items 
  (
    menu_id integer not null ,
    mnuitm_id serial not null ,
    object_id integer,
    claimvalue varchar(255),
    mnuitm_grp integer not null ,
    mnuitm_order integer not null ,
    mnuitm_caption varchar(254),
    mnuitm_check char(1) not null ,
    mnuitm_default char(1) not null ,
    mnuitm_dll varchar(254),
    mnuitm_cmd varchar(254),
    mnuitm_tooltip varchar(254),
    parent_itm_id integer,
    modal_flg char(1) 
        default 'Y' not null ,
    visible char(1) 
        default 'Y' not null ,
    image_url varchar(254),
    color varchar(20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (modal_flg IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (visible IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (mnuitm_check IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (mnuitm_default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

