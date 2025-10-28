drop table if exists "informix".billdispute_hist ;
create table "informix".billdispute_hist 
  (
    billdisp_histref serial not null ,
    dispute_ref integer not null ,
    bill_ref integer not null ,
    status char(30) 
        default 'New',
    dispute_dt date not null ,
    raised_by varchar(128,32),
    contact_details varchar(128,32),
    settlement_amnt money(16,2),
    settlement_tax money(16,2),
    approved_by char(10),
    approval_stat_dt date,
    details lvarchar,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('New' ,'UnderAssessment' ,'PendingClientAgreement' ,'PendingApproval' ,'Approved' ,'Cancelled' ,'Declined' ,'OnHold' ,'ClosedPendingCredit' ,'ClosedCreditRaised' )) 
              constraint "informix".billdispute_statu8
  );

