CREATE DATABASE IF NOT EXISTS slam;

CREATE TABLE IF NOT EXISTS slam.metrics_option_one
(
    `appName` String,
    `clusterType` FixedString(3),
    `metricSource` String,
    `metricTime` DateTime,
    `metricType` String,
    `costingFamily` String,
    `metricValue` Decimal64(4),
    `metricSeriesName` String,
    `metricEndpoint` String
)

ENGINE = MergeTree()
ORDER BY metricTime