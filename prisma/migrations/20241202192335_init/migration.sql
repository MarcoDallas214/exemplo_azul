-- CreateTable
CREATE TABLE `cliente` (
    `id_cliente` INTEGER NOT NULL AUTO_INCREMENT,
    `data_inclusao` VARCHAR(10) NOT NULL,
    `data_nasc` VARCHAR(10) NOT NULL,
    `nome_cliente` VARCHAR(100) NOT NULL,
    `estado_civil` VARCHAR(10) NOT NULL,
    `naturalidade` VARCHAR(30) NOT NULL,
    `nacionalidade` VARCHAR(30) NOT NULL,
    `escolaridade` VARCHAR(16) NOT NULL,
    `profissao` VARCHAR(30) NOT NULL,
    `situacao` VARCHAR(8) NOT NULL,
    `cpf_cliente` VARCHAR(14) NOT NULL,
    `rg_cliente` VARCHAR(15) NOT NULL,
    `renda_mensal` DECIMAL(10, 2) NOT NULL,
    `comprovante_renda` VARCHAR(500) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `cliente_cpf_cliente_key`(`cpf_cliente`),
    UNIQUE INDEX `cliente_rg_cliente_key`(`rg_cliente`),
    PRIMARY KEY (`id_cliente`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `dados_movel` (
    `id_dados_movel` INTEGER NOT NULL AUTO_INCREMENT,
    `fase_imovel` VARCHAR(20) NOT NULL,
    `nome_empreendimento` VARCHAR(50) NOT NULL,
    `lote_terreno` VARCHAR(10) NOT NULL,
    `area_terreno` VARCHAR(10) NOT NULL,
    `matricula` INTEGER NOT NULL,
    `logradouro` VARCHAR(50) NOT NULL,
    `numero` INTEGER NOT NULL,
    `complemento` VARCHAR(50) NULL,
    `bairro` VARCHAR(50) NOT NULL,
    `cep` VARCHAR(9) NOT NULL,
    `cidade` VARCHAR(30) NOT NULL,
    `estado` VARCHAR(2) NOT NULL,
    `num_casa` INTEGER NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id_dados_movel`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `docs_modelo` (
    `id_docs_modelo` INTEGER NOT NULL AUTO_INCREMENT,
    `boleto_pagto_escritura` VARCHAR(50) NOT NULL,
    `boleto_pagto_escritura_itbi` VARCHAR(50) NOT NULL,
    `boleto_pagto_escritura_registro` VARCHAR(50) NOT NULL,
    `promessa_compra_venda_assinado` VARCHAR(50) NOT NULL,
    `promessa_compra_venda_modelo` VARCHAR(50) NOT NULL,
    `promessa_compra_venda_preenchido` VARCHAR(50) NOT NULL,
    `quadro_resumo_modelo` VARCHAR(50) NOT NULL,
    `requerimento_cartorio_modelo` VARCHAR(50) NOT NULL,
    `requerimento_cartorio_preenchido` VARCHAR(50) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id_docs_modelo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `formas_pagto` (
    `id_formas_pagto` INTEGER NOT NULL AUTO_INCREMENT,
    `valor_sinal_entrada` DECIMAL(10, 2) NOT NULL,
    `qtd_parc_sinal_entrada` INTEGER NOT NULL,
    `data_venc_sinal_entada` VARCHAR(10) NOT NULL,
    `saldo_restante` DECIMAL(10, 2) NOT NULL,
    `qtd_parc_saldo_restante` INTEGER NOT NULL,
    `valor_parc_saldo_rest` DECIMAL(10, 2) NOT NULL,
    `data_vencto_parc_saldo_restante` VARCHAR(10) NOT NULL,
    `forma_pagto_sinal_entrada` VARCHAR(10) NOT NULL,
    `forma_pagto_saldo_restante` VARCHAR(10) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id_formas_pagto`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `documentos` (
    `id_documentos` INTEGER NOT NULL AUTO_INCREMENT,
    `certidao_casamento` VARCHAR(50) NULL,
    `certidao_nascimento` VARCHAR(50) NULL,
    `comprovante_renda` VARCHAR(50) NOT NULL,
    `conjunto_plt_imovel` VARCHAR(50) NOT NULL,
    `escritura_assinada` VARCHAR(50) NOT NULL,
    `laudo_itbi` VARCHAR(50) NOT NULL,
    `manual_usuario` VARCHAR(50) NULL,
    `quadro_resumo` VARCHAR(50) NULL,
    `registro_imoveis_assinado` VARCHAR(50) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id_documentos`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
