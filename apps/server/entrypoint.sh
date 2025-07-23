cloudflared access tcp --hostname colanode-redis.hyrysoftwarefoundation.org --url localhost:6379 \
    --service-token-id $CFD_ACCESS_TOKEN_ID --service-token-secret $CFD_ACCESS_TOKEN_SECRET &
cloudflared access tcp --hostname colanode-pgsql.hyrysoftwarefoundation.org --url localhost:5432 \
    --service-token-id $CFD_ACCESS_TOKEN_ID --service-token-secret $CFD_ACCESS_TOKEN_SECRET &
sleep 5
node apps/server/dist/index.js
