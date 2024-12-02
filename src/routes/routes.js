import {create,get,getId,update} from "../controllers/clienteController.js";
import express from "express";

const routes = express.Router();
routes.post("/clientes", create);
routes.get("/clientes", get);
routes.get("/clientes/:id", getId);
routes.put("/clientes/:id", update);

export default routes;
