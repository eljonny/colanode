cloudflared access tcp --hostname colanode-redis.hyrysoftwarefoundation.org --url localhost:6379 &
cloudflared access tcp --hostname colanode-pgsql.hyrysoftwarefoundation.org --url localhost:5432 &
sleep 5
node apps/server/dist/index.js
