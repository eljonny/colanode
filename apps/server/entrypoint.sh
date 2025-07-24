cloudflared access tcp --hostname $CFD_REDIS_HOST --url localhost:$CFD_REDIS_PORT \
    --service-token-id $CFD_REDIS_ACCESS_TOKEN_ID --service-token-secret $CFD_REDIS_ACCESS_TOKEN_SECRET &
cloudflared access tcp --hostname $CFD_PGSQL_HOST --url localhost:$CFD_PGSQL_PORT \
    --service-token-id $CFD_PGSQL_ACCESS_TOKEN_ID --service-token-secret $CFD_PGSQL_ACCESS_TOKEN_SECRET &
sleep 5
node apps/server/dist/index.js
