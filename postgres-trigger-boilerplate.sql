-- Please note that this example contains explainations so make sure to stripe this of those examples
CREATE OR REPLACE FUNCTION "schemaName"."tableName"()
-- Please note that by default in any trigger function you receive 2 input variables named as NEW and Old
-- You can use NEW."columnName" to reference the new value and old."columnName" to reference previous value
-- Incase trigger is fired on Insert, OLD would be null, same if trigger is of delete then NEW would be null
 RETURNS TRIGGER 
-- should always be trigger
 LANGUAGE plpgsql
AS $function$
DECLARE
   -- Declare your variables here
   -- Defining variable type is mandatory
   -- example 1 -- variable defined without default value
   variableName variableType
   -- example 2 -- variable defined with default value
   variableName variableType := defaultValueExpression 
   -- defaultValueExpression could contain reference to function input parameters
BEGIN
-- Here begins your function code

-- Make sure to return
-- IF trigger fired is of nature BEFORE then traditionally NEW is returned which could contain manipulated values
-- IF trigger fired of is nature AFTER then traditionally null is returned afer executing the desired actions
END
$function$;
-- Here ends the function

-- Here starts the trigger statement
-- you can choose to fire function and trigger statement separately or together
-- please note that there's no create or replace in trigger so make sure to remove the trigger code if it is successfully created
    
CREATE TRIGGER "triggerName"
-- BEFORE | AFTER
--   INSERT
--     UPDATE [ OF column_name [, ... ] ]
--     DELETE
on "schemaName"."tableName"
for each row
execute procedure function_name ( arguments )


-- Copy the function boilerplate without explanation from here
CREATE OR REPLACE FUNCTION "schemaName"."tableName"()
RETURNS TRIGGER 
 LANGUAGE plpgsql
AS $function$
DECLARE
BEGIN
END
$function$;
CREATE TRIGGER "triggerName"
-- BEFORE | AFTER
--   INSERT
--     UPDATE [ OF column_name [, ... ] ]
--     DELETE
on "schemaName"."tableName"
for each row
execute procedure function_name ( arguments );



