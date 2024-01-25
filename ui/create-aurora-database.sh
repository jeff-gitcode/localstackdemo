export RDS_PASSWORD=$(awslocal secretsmanager get-random-password --exclude-punctuation | jq -r ".RandomPassword")
export RDS_USERNAME=postgresql

export RDS_CLUSTER=$(awslocal rds create-db-cluster \
    --db-cluster-identifier test-serverless-cluster \
    --engine aurora-postgresql \
    --master-username $RDS_USERNAME \
    --master-user-password $(echo $RDS_PASSWORD) \
    --engine-mode serverless \
    --database-name datatask_cloud)

export RDS_IDENTIFIER=$(echo $RDS_CLUSTER | jq -r ".DBCluster.DBClusterIdentifier")
export RDS_DBNAME=$(echo $RDS_CLUSTER | jq -r ".DBCluster.DatabaseName")
export RDS_ENGINE=$(echo $RDS_CLUSTER | jq -r ".DBCluster.Engine")
export RDS_PORT=$(echo $RDS_CLUSTER | jq -r ".DBCluster.Port")
export RDS_HOST=$(echo $RDS_CLUSTER | jq -r ".DBCluster.Endpoint")
export RDS_ENDPOINT=$(echo $RDS_HOST | awk -v FS=':' '{print $1}')

awslocal secretsmanager create-secret \
    --name DBCredsServerless \
    --secret-string "{
            \"username\": \"$RDS_USERNAME\",
            \"password\": \"$RDS_PASSWORD\",
            \"dbClusterIdentifier\": \"$RDS_IDENTIFIER\",
            \"dbname\": \"$RDS_DBNAME\",
            \"engine\": \"$RDS_ENGINE\",
            \"port\": \"$RDS_PORT\",
            \"host\": \"$RDS_ENDPOINT\"
        }"