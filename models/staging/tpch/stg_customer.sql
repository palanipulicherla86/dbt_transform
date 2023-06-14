{{
    config(
        materialized='view'
    )
}}

with source as (

    select * from {{ source('tpch', 'customer') }}

),

renamed as ( 

    select
    
    C_CUSTKEY as custkey ,
    C_NAME as name ,
    C_ADDRESS as address ,
    C_NATIONKEY as nationkey ,
    C_PHONE as phone ,
    C_ACCTBAL as acctbal ,
    C_MKTSEGMENT as mktsegment ,
    C_COMMENT as comment 

    from source

)

select * from renamed
