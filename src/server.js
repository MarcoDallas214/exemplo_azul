import dotenv from 'dotenv';
dotenv.config();
import express from "express";
import clienteRoutes from "./routes/clienteRoutes.js"
import dados_movelRoutes from "./routes/dados_movelRoutes.js"
const app = express();

app.use(express.json());
app.use('/',clienteRoutes);
app.use('/',dados_movelRoutes)

app.listen(3000, () => { 
  console.log(`o servidor está rodando `)
});
