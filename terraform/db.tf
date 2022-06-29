resource "random_password" "admin" {
  length  = 16
  special = true
}

resource "scaleway_rdb_instance" "main" {
  name          = "tereus-rdb"
  node_type     = "DB-DEV-S"
  engine        = "PostgreSQL-14"
  is_ha_cluster = true
  user_name     = "admin"
  password      = random_password.admin.result

  disable_backup            = true
  backup_schedule_frequency = 24 # every day
  backup_schedule_retention = 7  # keep it one week
}


variable "RDB_PASS" {
  type = string
}

resource "scaleway_rdb_user" "tereus" {
  instance_id = scaleway_rdb_instance.main.id
  name        = "tereus"
  password    = var.RDB_PASS
  is_admin    = true
}


output "rdb_ip" {
  value = scaleway_rdb_instance.main.endpoint_ip
}

output "rdb_port" {
  value = scaleway_rdb_instance.main.endpoint_port
}
