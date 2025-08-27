environment         = "dev"
project             = "data-lake"
instance_type       = "c7i-flex.large"
bucket_name         = "gavaa"
aws_region          = "ap-southeast-2"
airflow_admin_user  = "gavaa"
airflow_admin_pass  = "6210"
dbt_container_image = "croixbleueqc/dbt:latest"

csv_objects = {
  "customers/customers.csv"       = "../datasets/customers.csv",
  "accounts/accounts.csv"         = "../datasets/accounts.csv",
  "transactions/transactions.csv" = "../datasets/transactions.csv",
  "time/time.csv"                 = "../datasets/time.csv"
}

python_objects = {
  "dags/extract.py"     = "../scripts/extract.py",
  "dags/extract_dag.py" = "../scripts/extract_dag.py"
}

databases = [
  { name = "airflow_db", user = "airflow", password = "airflow" },
  { name = "bootcamp_db", user = "bootcamp_user", password = "bootcamp_password" },
  { name = "metabase_db", user = "metabase_user", password = "metabase_password" }
]
ip_addresses = [
  "10.20.1.50",
  "10.20.1.51"
]
