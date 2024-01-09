@EndUserText.label: 'CONSUMPTION - ROOT 4034'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'TravelID' ]

define root view entity zc_travel_4034
  provider contract transactional_query
  as projection on zr_travel_4034
{
  key    TravelID,

         @Search.defaultSearchElement: true
         @ObjectModel.text.element: ['AgencyName']
         @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency', element: 'AgencyID' } }]
         AgencyID,
         _Agency.Name       as AgencyName,

         @Search.defaultSearchElement: true
         @ObjectModel.text.element: ['CustomerName']
         @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Customer', element: 'CustomerID'  } }]
         CustomerID,
         _Customer.LastName as CustomerName,

         BeginDate,
         EndDate,
         BookingFee,
         TotalPrice,
         
         @Consumption.valueHelpDefinition: [{ entity: {name: 'I_Currency', element: 'Currency' } }]         
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
