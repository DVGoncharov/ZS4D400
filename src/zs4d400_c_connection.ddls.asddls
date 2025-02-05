@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZS4D400_R_CONNECTION'
define root view entity ZS4D400_C_CONNECTION
  provider contract transactional_query
  as projection on ZS4D400_R_CONNECTION
{
  key UUID,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZS4D400_I_CarrierVH', element: 'CarrierID' } }]
      CarrierID,
      ConnectionID,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZS4D400_I_AirportVH', element: 'AirportID' } }]
      AirportFromID,
      CityFrom,
      CountryFrom,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZS4D400_I_AirportVH', element: 'AirportID' } }]
      AirportToID,
      CityTo,
      CountryTo,
      LocalLastChangedAt

}
