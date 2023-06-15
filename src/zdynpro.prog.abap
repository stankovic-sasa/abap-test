*&---------------------------------------------------------------------*
*& Report ZDYNPRO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdynpro.

DATA: gv_test TYPE string VALUE 'ovo je test',
      gv_test_1 TYPE string VALUE 'mare care',
      ok_code TYPE sy-ucomm.

CALL SCREEN 9000.

MODULE status_9000 OUTPUT.
  SET PF-STATUS '9000'.
  SET TITLEBAR '9000'.
  CLEAR ok_code.
ENDMODULE.

MODULE user_command_9000 INPUT.
  CASE ok_code.
    WHEN 'EXIT' OR
         'BACK' OR
         'CANCEL'.
      LEAVE TO SCREEN 0.
  ENDCASE.
ENDMODULE.
