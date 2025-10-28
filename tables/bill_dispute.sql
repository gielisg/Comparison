drop table if exists "informix".bill_dispute ;
create table "informix".bill_dispute 
  (
    dispute_ref serial not null ,
    bill_ref integer not null ,
    status char(30) 
        default 'New' not null ,
    dispute_dt date 
        default today not null ,
    raised_by varchar(128,32),
    contact_details varchar(128,32),
    settlement_amnt money(16,2),
    settlement_tax money(16,2),
    approved_by char(10),
    approval_stat_dt date,
    details lvarchar,
    disputed_amount decimal(10,3),
    approval_notes lvarchar(500),
    status_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('New' ,'UnderAssessment' ,'PendingClientAgreement' ,'PendingApproval' ,'Approved' ,'Cancelled' ,'Declined' ,'OnHold' ,'ClosedPendingCredit' ,'ClosedCreditRaised' )) 
              constraint "informix".billdispute_statu7,
    
    check (disputed_amount > 0. ) constraint "informix".greater_than_043
  );

