drop table if exists "informix".set_dtl_instance ;
create table "informix".set_dtl_instance 
  (
    set_event_ref integer not null ,
    set_dtl_ref integer not null ,
    event_ref integer not null ,
    except_set_ref integer
  );

