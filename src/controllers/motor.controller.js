import { pool } from '../db.js';

export const getMotores = (req, res) => res.sent('obteniendo motores');

export const createMotores = (req, res) => {
  const { name, otroDato} = req.body;
  pool.query('INSERT INTO tabla (name, salary) VALUES (?, ?)', [name, salary]);
  res.send('Post success');
};

export const updateMotores = (req, res) => res.send('actualizando motor');

export const deleteMotores = (req, res) => res.send('Eliminando motor');


