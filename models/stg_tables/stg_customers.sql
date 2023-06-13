
with source as (

    select * from {{ source('source_tables', 'customers') }}

),

renamed as (

    select
	C_CUSTKEY  as customer NUMBER(38,0),
	C_NAME as name VARCHAR(25),
	C_ADDRESS as addressVARCHAR(40),
	C_NATIONKEY as nationkey NUMBER(38,0),
	C_PHONE as phone VARCHAR(15),
	
from source
)

select * from renamed
