@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airports'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZS4D400_I_AirportVH
  as select from /dmo/airport
{

      @UI.lineItem: [{position: 10 }]
  key airport_id as AirportID,
      @UI.lineItem: [{position: 20 }]
      name       as Name,
      @UI.lineItem: [{position: 30 }]
      city       as City,
      @UI.lineItem: [{position: 40 }]
      country    as Country

}
