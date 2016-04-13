CREATE TABLE tb_arrecadacao
(
  ch_tempo date,
  ch_contribuinte integer,
  ch_cnae_contrib integer,
  ch_cnae_receita integer,
  ch_municipio integer,
  ch_municipio_contrib integer,
  ch_orgao_origem integer,
  ch_orgao_contrib integer,
  ch_agencia_banco integer,
  ch_receita integer,
  ch_tp_pagto integer,
  nu_doc_controle character varying(20),
  nu_doc_origem character varying(30),
  nu_parcela integer,
  nu_renavam character varying(15),
  dt_per_fiscal date,
  dt_vencimento date,
  dt_movimento date,
  dt_credito date,
  nu_dias_atraso integer,
  vl_receita numeric(16,2)
);

CREATE TABLE tb_cnae
(
  ch_cnae integer NOT NULL,
  cd_cnae character varying(10),
  ds_cnae character varying(200),
  ds_ativo character varying(1),
  PRIMARY KEY (ch_cnae )
);

CREATE TABLE tb_grupo_cnae
(
  ch_cnae integer NOT NULL,
  ch_grupo_cnae integer NOT NULL,
  ds_grupo_cnae character varying(100),
  ds_tp_conjunto_cnae character varying(100),
  PRIMARY KEY (ch_cnae , ch_grupo_cnae )
);

CREATE TABLE tb_grupo_receita
(
  ch_receita integer NOT NULL,
  ch_grupo_receita integer NOT NULL,
  ds_grupo_receita character varying(60),
  ds_grupo_receita_det character varying(255),
  PRIMARY KEY (ch_receita , ch_grupo_receita )
);

CREATE TABLE tb_receita
(
  ch_receita integer NOT NULL,
  cd_receita integer,
  ds_receita character varying(200),
  ch_cnae integer,
  PRIMARY KEY (ch_receita )
);