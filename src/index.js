import express from 'express';
import { pool } from './db.js';
import motorRoutes from './routes/motor.routes.js'
const app = express();


app.use(motorRoutes)

app.listen(3000);
console.log('Server running on port 3000');
