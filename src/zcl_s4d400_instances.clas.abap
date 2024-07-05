CLASS zcl_s4d400_instances DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

    DATA carrier_id TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.
    CLASS-DATA conn_counter TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_S4D400_INSTANCES IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA connection TYPE REF TO lcl_connection.
    connection = NEW #( ).
    connection->carrier_id = 'LH'.
    connection->connection_id = '0400'.

    DATA connections TYPE TABLE OF REF TO lcl_connection.
    connection->carrier_id = 'AA'.
    connection->connection_id = '0017'.
    APPEND connection TO connections.
    connection = NEW #( ).
    connection->carrier_id = 'SQ'.
    connection->connection_id = '0001'.
    APPEND connection TO connections.

  ENDMETHOD.
ENDCLASS.
