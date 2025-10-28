drop table if exists "informix".credcontstep ;
create table "informix".credcontstep 
  (
    plan_code char(5) not null ,
    ccstepseqn integer not null ,
    ccstepsnar varchar(32) not null ,
    ccstepnarr varchar(64) not null ,
    ccstepenabled char(1) 
        default 'Y' not null ,
    ccminoverdueamnt decimal(10,2) not null ,
    ccminoverduedays integer not null ,
    prevstepdelydays integer 
        default 0 not null ,
    ccactncode char(2) not null ,
    ccstepactiondata varchar(255),
    cont_status char(3),
    acct_event_type char(2),
    acct_event_code char(2),
    acct_sched_st_cd char(2),
    srvc_event_type char(2),
    srvc_event_code char(2),
    srvc_sched_st_cd char(2),
    susp_code char(4),
    new_plan_code char(5),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

