CREATE EXTERNAL TABLE order_transaction_cow (
  `_hoodie_commit_time` string,
  `_hoodie_commit_seqno` string,
  `_hoodie_record_key` string,
  `_hoodie_partition_path` string,
  `_hoodie_file_name` string,
  `order_id` string,
  `item_id` string,
  `customer_id` string,
  `product` string,
  `amount` decimal(3,1),
  `currency` string,
  `time_stamp` string
  )
  PARTITIONED BY ( 
  `transaction_date` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
  'org.apache.hudi.hadoop.HoodieParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://kinesis-hudi-processeds3bucket-yfc6843vmq1o/order_hudi_cow'
