import {create,get,getId,update,deletar} from "../controllers/clienteController.js";
import express from "express";

const routes = express.Router();
routes.post("/clientes", create);
routes.get("/clientes", get);
routes.get("/clientes/:id", getId);
routes.put("/clientes/:id", update);
routes.delete("/clientes/:id",deletar);

export default routes;
