import { createCliente , getAll, getById, updateCliente } from "../repositorys/clienteRepository.js";
import express from 'express'

 export const create = async (req, res) => {
  try {
    const clientes = await createCliente(req.body);
    res.status(200).send(clientes);
  } catch (error) {
    res.status(400).send(console.log(error))
  }
  
};

export const get = async (req, res) => {
  try {
    const clientes = await getAll(req.body);
    res.status(200).send(clientes);
  } catch (error) {
    res.status(400).send(console.log(error))
  } 

};

export const getId = async (req,res) => {
  try {
    const cliente = await getById(Number(req.params.id));
    res.status(200).send(cliente);
  } catch (error) {
    res.status(400).send(console.log(error))
  } 
};

export const update = async (req,res)=> {
  try {
    const cliente = await getById(Number(req.params.id),req.body);
    res.status(200).send(cliente);
  } catch (error) {
    res.status(400).send(console.log(error))
  } 
}
