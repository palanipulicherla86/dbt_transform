with lineitem as(
    select
    L_ORDERKEY AS ORDERKEY,
    L_PARTKEY AS PARTKEY,
    L_SUPPKEY AS L_SUPPKEY

    FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.LINEITEM
)

SELECT * FROM lineitem