import { Router } from "express";
import { getMotores, createMotores, updateMotores, deleteMotores } from "../controllers/motor.controller.js";
const router = Router()

router.get('/motores', getMotores)

router.post('/motores', createMotores)

router.put('/motores', updateMotores)

router.delete('/motores', deleteMotores)

export default router