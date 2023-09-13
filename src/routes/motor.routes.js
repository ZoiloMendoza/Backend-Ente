import { Router } from "express";
import { getMotores } from "../controllers/motor.controller";
const router = Router()

router.get('/motores', getMotores)

router.post('/motores', (req, res) => res.send('Crear motor'))

router.put('/motores', (req, res) => res.send('Actualizar motor'))

router.delete('/motores', (req, res) => res.send('Elmininar motor'))

export default router