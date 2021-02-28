# Build a data lake using Amazon Kinesis Data Streams for Amazon DynamoDB and Apache Hudi

Amazon Kinesis Data Streams for DynamoDB helps you to publish item-level changes in any DynamoDB table to a Kinesis data stream of your choice. Additionally, you can take advantage of this feature for use cases that require longer data retention on the stream and fan out to multiple concurrent stream readers. You also can integrate with Amazon Kinesis Data Analytics or Amazon Kinesis Data Firehose to publish data to downstream destinations such as Amazon Elasticsearch Service (Amazon ES), Amazon Redshift, or Amazon S3.

In this post, you use Kinesis Data Streams for DynamoDB and take advantage of managed streaming delivery of DynamoDB data to other Kinesis Data Stream without using AWS Lambda or writing complex code. To process DynamoDB events from Kinesis, you have multiple options: Amazon Kinesis Client Library (KCL) applications, Lambda, Kinesis Data Analytics for Apache Flink, and Kinesis Data Firehose. In this post, you use Kinesis Data Firehose to save the raw data in the S3 data lake and Apache Hudi to batch process the data.



## Architecture

![Architecture Diagram](./image/architecture.png)


**a. DDB.yaml**

AWS CloudFormation File

**b. data_insertion_cow_script**

Script to batch process the data from S3 data lake to Apache Hudi (  Initial Load )  

**c. data_insertion_cow_delta_script**

Script to batch process the data from S3 data lake to Apache Hudi ( Change record)

**d. order_transaction_cow.sql**

Amazon Athena Hudi table definition file

**e. order_data_09_02_2020.csv**

Order data file ( Initial Load  )

**f. order_data_10_02_2020.csv **

Data file have updated record ( Change record)

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

