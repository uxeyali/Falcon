select * from clientproduct where GroupNumber = "5BL05910";
select * from clientproduct where BillingType = 0;
select * from clientproduct where concat(sourceID, ClientID, GroupNumber, ClientEffectiveDate, ProductType, BillingType, Percent, ProdEffectiveDate, ProdTerminateDate) like '%0%';
select * from clientproduct where GroupNumber like '%1019129%' group by GroupNumber;

/* Displays each group once Group */
select * from clientproduct where concat(SourceID, ClientID, GroupNumber) like '%1019129%' group by GroupNumber;
select * from clientproduct where GroupNumber like '%10191290%' OR ClientID like '%10191290%' OR sourceID like '%10191290%' group by GroupNumber;
select * from client where GroupNumber like '%10191290%' OR ClientID like '%10191290%' OR sourceID like '%10191290%';
/* Displays all group products*/
select * from clientproduct where concat(SourceID, ClientID, GroupNumber) like '%10191290%';

select SourceID, ClientID, CustomerName, ConsortiumNumber, ConsortiumName, GroupNumber, GroupNumberSix,
GroupType, ClientCategory, ClientSubCategory, Comments, BillingType, EffectiveDate, TerminationDate 
from client where GroupNumber like '%Spar%' OR ClientID like '%Spar%' OR sourceID like '%Spar%'
OR CustomerName LIKE '%Spar%';


select * from clientproduct where GroupNumber = '10191200';
select * from clientproduct;
select * from client;
select * from client where Customername like '%Spar%';
select * from clientproduct join client on clientproduct.GroupNumber = client.GroupNumber group by clientproduct.GroupNumber;

select clientproduct.SourceID, clientproduct.ClientID, client.CustomerName, clientproduct.GroupNumber, 
clientproduct.ProductType, clientproduct.BillingType, clientproduct.Percent, clientproduct.ProdEffectiveDate, clientproduct.ProdTerminateDate
from clientproduct JOIN client ON clientproduct.GroupNumber = client.GroupNumber
where clientproduct.GroupNumber like '%Spar%' OR clientproduct.ClientID like '%Spar%' 
OR clientproduct.sourceID like '%Spar%' OR client.CustomerName LIKE '%Spar%'
group by clientproduct.GroupNumber;


select * from client natural join clientproduct;