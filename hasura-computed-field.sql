-- Please note that this example contains explainations so make sure to stripe this of those examples
CREATE OR REPLACE FUNCTION "schemaName"."tableName"(rowVariableName "tableRowSchemaName"."tableRrowTableName")
 RETURNS defineDatatype 
 -- can be numeric, boolean, jsonb, text, date, or any other
 LANGUAGE plpgsql
 STABLE
 -- Computed field functions needs to be explicitly stable and can not be volatile functions
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

-- Make sure to return of the type defined in the Returns at line 3
END
$function$;
-- Here ends the function

-- Copy the function boilerplate without explanation from here

CREATE OR REPLACE FUNCTION fn (v vt)
 RETURNS type 
 LANGUAGE plpgsql
 STABLE
AS $function$
DECLARE
BEGIN
END
$function$;
