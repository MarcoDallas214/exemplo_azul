import { prisma } from "../database/prisma-cliente.js";

export const createCliente = async (data) => {
  const cliente = await prisma.cliente.create({
    data,
    select: {
      id_cliente: true,
      data_inclusao: true,
      data_nasc: true,
      nome_cliente: true,
      estado_civil: true,
      naturalidade: true,
      nacionalidade: true,
      escolaridade: true,
      profissao: true,
      situacao: true,
      cpf_cliente: true,
      rg_cliente: true,
      renda_mensal: true,
      comprovante_renda: true,
    },
  });
  return cliente;
};

export const getAll = async () => {
  const clientes = await prisma.cliente.findMany({
    select: {
      id_cliente: true,
      data_inclusao: true,
      data_nasc: true,
      nome_cliente: true,
      estado_civil: true,
      naturalidade: true,
      nacionalidade: true,
      escolaridade: true,
      profissao: true,
      situacao: true,
      cpf_cliente: true,
      rg_cliente: true,
      renda_mensal: true,
      comprovante_renda: true,
    },
  });
  return clientes;
};

export const getById = async (id_cliente) => {
  const cliente = await prisma.cliente.findUnique({
    where: {
      id_cliente,
    },
    select: {
      id_cliente: true,
      data_inclusao: true,
      data_nasc: true,
      nome_cliente: true,
      estado_civil: true,
      naturalidade: true,
      nacionalidade: true,
      escolaridade: true,
      profissao: true,
      situacao: true,
      cpf_cliente: true,
      rg_cliente: true,
      renda_mensal: true,
      comprovante_renda: true,
    },
  });
  return cliente;
};

export const updateCliente = async (id_cliente, data) => {
  const cliente = await prisma.cliente.update({
    where: {
      id_cliente,
    },
    data,
    select: {
      id_cliente: true,
      data_inclusao: true,
      data_nasc: true,
      nome_cliente: true,
      estado_civil: true,
      naturalidade: true,
      nacionalidade: true,
      escolaridade: true,
      profissao: true,
      situacao: true,
      cpf_cliente: true,
      rg_cliente: true,
      renda_mensal: true,
      comprovante_renda: true,
    },
  });
  return cliente
};
