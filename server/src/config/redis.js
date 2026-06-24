import { createClient } from 'redis';
import { env } from './env.js';

let redis = null;

if (env.REDIS_URL) {
  redis = createClient({ url: env.REDIS_URL });
  redis.on('error', (err) => console.error('Redis error:', err));
  await redis.connect();
}

export default redis;
