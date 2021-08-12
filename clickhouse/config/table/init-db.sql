CREATE TABLE ttt (id Int32) ENGINE = ReplicatedMergeTree('/clickhouse/tables/{layer}-{shard}/ttt', '{replica}') PARTITION BY id ORDER BY id;

CREATE TABLE ttt_all as ttt ENGINE = Distributed(cluster_1, default, ttt, rand());

