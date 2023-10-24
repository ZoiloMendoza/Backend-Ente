import { Router } from 'express';
import { pool } from '../db.js';

const router = Router();

router.get('/',() => {
  const peticion = 'aqui va una consulta a la base de datos';
  res.json(peticion);
});

export default router;
