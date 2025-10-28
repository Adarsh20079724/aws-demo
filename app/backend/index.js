const express = require('express');
const cors = require('cors');

const app = express();
const PORT = 3000;

// Middleware
app.use(cors());  // Allow frontend to talk to backend
app.use(express.json())

app.get('/api/hello', (req, res) => {
    res.json("This is code from backend")
})

app.listen(PORT, () => {
  console.log('========================================');
  console.log(`Example app listening on port ${PORT}`)
  console.log(`📍 URL: http://localhost:${PORT}`);
  console.log(`🔗 API: http://localhost:${PORT}/api/hello`);
  console.log('========================================');
});
