@EndUserText.label: 'INTERFACE ROOT TRAVEL - 4034'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_TRAVEL_4034 
provider contract transactional_interface
as projection on zr_travel_4034
{
key   TravelID, 
    AgencyID, 
    CustomerID, 
    BeginDate, 
    EndDate, 
    BookingFee, 
    TotalPrice, 
    CurrencyCode, 
    Description, 
    OverallStatus, 
    Attachment, 
    MimeType, 
    FileName, 
    CreatedBy, 
    CreatedAt, 
@Semantics.user.lastChangedBy: true
    LocalLastChangedBy, 
//local ETag field
@Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt, 
//total ETag
@Semantics.systemDateTime.lastChangedAt: true
    LastChangedAt
 
}

