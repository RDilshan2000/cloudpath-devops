const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Structured stdout logging middleware
app.use((req, res, next) => {
  const logEntry = {
    timestamp: new Date().toISOString(),
    method: req.method,
    path: req.url,
    ip: req.ip
  };
  console.log(JSON.stringify(logEntry));
  next();
});

app.get('/health', (req, res) => {
  res.status(200).json({
    status: 'UP',
    timestamp: new Date().toISOString(),
    version: '1.0.0'
  });
});

app.listen(PORT, () => {
  console.log(JSON.stringify({
    timestamp: new Date().toISOString(),
    message: `Server running on port ${PORT}`
  }));
});