-- Scripts ddl para a área de staging

USE dw_lowlatency

DROP TABLE TB_AUX_PRODUTO
DROP TABLE TB_AUX_LOJA
DROP TABLE TB_AUX_VENDA
DROP TABLE TB_AUX_TIPO_PAGAMENTO

CREATE TABLE TB_AUX_PRODUTO (
   DATA_CARGA DATETIME NOT NULL,
   COD_PRODUTO INT NULL,
   PRODUTO VARCHAR(100) NULL,
   COD_CATEGORIA INT  NULL,
   CATEGORIA VARCHAR(100) NULL
)

CREATE TABLE TB_AUX_LOJA (
	DATA_CARGA DATETIME NOT NULL,
	COD_LOJA INT NULL,
	LOJA VARCHAR(100) NULL,
	CIDADE VARCHAR(100) NULL,
	ESTADO VARCHAR(100) NULL,
	SIGLA_ESTADO VARCHAR(2) NULL
)

CREATE TABLE TB_AUX_VENDA (
	DATA_CARGA DATETIME NOT NULL,
	DATA_VENDA DATETIME NULL,
	COD_LOJA INT NULL,
	COD_PRODUTO INT NULL,
	COD_TIPO_PAGAMENTO INT NULL,
	COD_VENDA INT NULL,
	VOLUME NUMERIC(10,2) NULL,
	VALOR NUMERIC(10,2) NULL,
)

CREATE INDEX IX_AUX_VENDA_DATA_CARGA ON TB_AUX_VENDA(DATA_CARGA)

CREATE TABLE TB_AUX_TIPO_PAGAMENTO (
	DATA_CARGA DATETIME NOT NULL,
	COD_TIPO_PAGAMENTO INT NULL,
	TIPO_PAGAMENTO VARCHAR(100) NULL
)