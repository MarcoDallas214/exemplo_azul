import "dotenv/config";
import express from "express";
import router from "./routers/router";
const app = express();
const port = process.env.PORT;
app.use(express.json());
app.use(router)
app.get("/", (req, res) => {
  res.json({ mensage: "começando a codar" });
});

app.listen(3000, () => {
  console.log(`o servidor está rodando http://localhost:${port}`);
});
