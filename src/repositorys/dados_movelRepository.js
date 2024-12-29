import { prisma } from "../database/prisma-cliente.js";

export const createDados_movel = async (data) => {
  const dados_movel = await prisma.dados_movel.create({
    data,
    select: {
      id_dados_movel: true,
      fase_imovel: true,
      nome_empreendimento: true,
      lote_terreno: true,
      area_terreno: true,
      matricula: true,
      logradouro: true,
      numero: true,
      complemento: true,
      bairro: true,
      cep: true,
      cidade: true,
      estado: true,
      num_casa: true,
    },
  });
  return dados_movel;
};

export const getAll = async () => {
  const clientes = await prisma.dados_movel.findMany({
    select: {
      id_dados_movel: true,
      fase_imovel: true,
      nome_empreendimento: true,
      lote_terreno: true,
      area_terreno: true,
      matricula: true,
      logradouro: true,
      numero: true,
      complemento: true,
      bairro: true,
      cep: true,
      cidade: true,
      estado: true,
      num_casa: true,
    },
  });
  return clientes;
};
