CLASS zcl_s4d400_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_S4D400_EML IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA update_tab TYPE TABLE FOR UPDATE /DMO/R_AgencyTP.

    " Sunshine Travel
    update_tab = VALUE #( ( agencyID = '070001' Name = 'MODIFIED Agency' ) ).

    MODIFY ENTITIES OF /DMO/R_AgencyTP
      ENTITY /DMO/Agency
      UPDATE FIELDS ( name )
      WITH update_tab.

    COMMIT ENTITIES.

  ENDMETHOD.
ENDCLASS.
