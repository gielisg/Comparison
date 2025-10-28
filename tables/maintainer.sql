drop table if exists "informix".maintainer ;
create table "informix".maintainer 
  (
    maint_id char(10) not null ,
    main_narr varchar(254,32) not null 
  );

