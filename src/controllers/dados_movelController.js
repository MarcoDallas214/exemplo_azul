import { createDados_movel,getAll } from "../repositorys/dados_movelRepository.js";

export const create = async (req, res) => {
    try {
      const dados_movel = await createDados_movel(req.body);
      res.status(200).send(dados_movel);
    } catch (error) {
      res.status(400).send(error)
    }
    
  };

  export const get = async (req, res) => {
    try {
      const dados_movel = await getAll(req.body);
      res.status(200).send(dados_movel);
    } catch (error) {
      res.status(400).send(error)
    } 
  
  };