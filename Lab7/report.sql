SET PAGESIZE 100
SET LINESIZE 79
PROMPT ****************************************************************

PROMPT Generating the Report

SET TERMOUT OFF

COLUMN curdate NEW_VALUE report_date
SELECT TO_CHAR(SYSDATE,'dd-Mon-yyyy') curdate
 FROM DUAL;
SET TERMOUT ON

PROMPT &report_date

TTITLE skip 2 CENTER '' skip 2


COLUMN ITEM HEADING 'item name' FORMAT A18

COLUMN LOCATION HEADING 'city' FORMAT A10

select ITEM, LOCATION  from DeliveryService where location = 'SJ';
