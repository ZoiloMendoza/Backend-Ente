import express from 'express';
import motorRoutes from './routes/motor.routes.js';
import indexRoutes from './routes/index.routes.js';

const app = express();

app.use(indexRoutes);
app.use(motorRoutes);

app.listen(3000);
console.log('Server running on port 3000');
