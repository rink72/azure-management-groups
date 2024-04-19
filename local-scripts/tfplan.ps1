. ../.env.local.ps1

terraform init `
    -backend-config="subscription_id=$($Env:TF_STATE_SUBSCRIPTION_ID)" `
    -backend-config="resource_group_name=$($Env:TF_STATE_RESOURCE_GROUP_NAME)" `
    -backend-config="storage_account_name=$($Env:TF_STATE_STORAGE_ACCOUNT_NAME)" `
    -backend-config="container_name=$($Env:TF_STATE_CONTAINER_NAME)" `
    -backend-config="key=$($Env:TF_STATE_KEY)"

terraform plan