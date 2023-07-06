
-- Drop Table if exist
DROP TABLE IF EXISTS public.BUILDING_BLOCK;

-- Create table
CREATE TABLE public.BUILDING_BLOCK (
   BUILDING_BLOCK_ID varchar(50),
   NAME varchar(50),
   BOND int,
   LGT_REFERENCE int,
   ZKB_REFERENCE varchar(50)
);