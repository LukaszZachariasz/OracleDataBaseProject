SPOOL &1\tmp.sql
PROMPT &2
SPOOL OFF
@&1\tmp.sql
$DEL &1\tmp.sql