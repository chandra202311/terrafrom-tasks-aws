resource "aws_elasticache_cluster" "my_redis_cluster" {
  cluster_id           = "my-redis-cluster"  # Replace with your desired cluster ID
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"

  cluster_mode {
    replicas_per_node_group = 1
    num_node_groups         = 1
  }
}
