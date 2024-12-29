import { create, get } from "../controllers/dados_movelController.js";
import express from "express";
const routes = express.Router();

routes.post('/imovel',create);
routes.get('/imobel',get)



export default routes ;