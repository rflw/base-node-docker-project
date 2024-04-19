// server.mjs
import { createServer } from 'node:http';

const HOST = process.env.CONTAINER_HOST ?? '0.0.0.0';
const PORT = process.env.CONTAINER_PORT ?? '3000';

const server = createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello World!\n');
});

server.listen(PORT, HOST, () => {
  console.log(`Listening on ${HOST}:${PORT}`);
});
