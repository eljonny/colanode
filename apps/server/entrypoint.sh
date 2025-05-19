cloudflared access tcp --hostname colanode-redis.hyrysoftwarefoundation.org --url localhost:6379 &
cloudflared access tcp --hostname colanode-pgsql.hyrysoftwarefoundation.org --url localhost:5432 &
cloudflared access tcp --hostname colanode-s3.hyrysoftwarefoundation.org --url localhost:9000 &
sleep 5
node apps/server/dist/index.js
