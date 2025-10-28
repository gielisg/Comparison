drop table if exists "informix".med_data_except ;
create table "informix".med_data_except 
  (
    exception_ref serial not null ,
    nt_file_num integer not null ,
    med_id integer not null ,
    file_field_no smallint,
    med_stat_ref integer,
    except_type char(1),
    except_no integer not null ,
    except_msg lvarchar(1000) not null ,
    resolved char(1) 
        default 'N',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

