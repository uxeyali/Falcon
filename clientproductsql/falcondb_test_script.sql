select * from clientproduct where GroupNumber = "5BL05910";
select * from clientproduct where BillingType = 0;
select * from clientproduct where concat(sourceID, ClientID, GroupNumber, ClientEffectiveDate, ProductType, BillingType, Percent, ProdEffectiveDate, ProdTerminateDate) like '%0%';
select * from clientproduct where GroupNumber like '%1019129%' group by GroupNumber;

/* Displays only one Group */
select * from clientproduct where concat(SourceID, ClientID, GroupNumber) like '%10191290%' group by GroupNumber;
/* Displays all group products*/
select * from clientproduct where concat(SourceID, ClientID, GroupNumber) like '%10191290%';
select * from clientproduct;