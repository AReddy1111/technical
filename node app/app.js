// app.js
const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, Dockerized Node.js Service!\n');
});

const port = process.env.PORT || 8080;
server.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
