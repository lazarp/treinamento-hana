entity Pessoa {
    key ID   : Integer;
        Nome : String(255);
}

@cds.persistence.exists
entity T_CLIENTES {
    key CLIENTE_ID : Integer;
        NOME       : String(255);
        EMAIL      : String(255);
        FONE       : String(50);
        DESDE      : Date;
}

@cds.persistence.exists
entity T_ENDERECOS {
    key CLIENTE_ID  : Integer;
        ENDERECO_ID : Integer;
        LOGRADOURO  : String(255);
        NUMERO      : Integer;
        COMPLEMENTO : String(255);
        CEP         : String(9);
}

@cds.persistence.exists
entity T_FRETES {
    key CEP                : String(9);
        FRETE_UNIDADE_PESO : Double;
}

@cds.persistence.exists
entity T_PRODUTOS {
    key PRODUTO_ID     : Integer;
        DESCRICAO      : String(255);
        PRECO_UNITARIO : Double;
        CUSTO_UNITARIO : Double;
        PESO_UNITARIO  : Double;
}

@cds.persistence.exists
entity T_ITENS_COMPRA {
    key PEDIDO_ID  : Integer;
    key ITEM_ID    : Integer;
        PRODUTO_ID : Integer;
        QUANTIDADE : Integer;
}

@cds.persistence.exists
entity T_PEDIDOS_COMPRA {
    key PEDIDO_ID   : Integer;
        CLIENTE_ID  : Integer;
        DATA_PEDIDO : Date;
        ENDERECO_ID : Integer;
}

@cds.persistence.exists
@cds.persistence.calcview
entity![CV_ITENS]{
    key![PEDIDO_ID]      : Integer    @title : 'PEDIDO_ID';
    key![ITEM_ID]        : Integer    @title : 'ITEM_ID';
       ![PRODUTO_ID]     : Integer    @title : 'PRODUTO_ID';
       ![DESCRICAO]      : String(255)@title : 'DESCRICAO';
       ![QUANTIDADE]     : Integer    @title : 'QUANTIDADE';
       ![PRECO_UNITARIO] : Double     @title : 'PRECO_UNITARIO';
       ![CUSTO_UNITARIO] : Double     @title : 'CUSTO_UNITARIO';
       ![PESO_UNITARIO]  : Double     @title : 'PESO_UNITARIO';
       ![PESO_ITEM]      : Double     @title : 'PESO_ITEM';
       ![PRECO_ITEM]     : Double     @title : 'PRECO_ITEM';
       ![CUSTO_ITEM]     : Double     @title : 'CUSTO_ITEM';
}

@cds.persistence.exists
@cds.persistence.calcview
entity![CV_PEDIDOS]{
    key![PEDIDO_ID]               : Integer    @title : 'PEDIDO_ID';
       ![CLIENTE_ID]              : Integer    @title : 'CLIENTE_ID';
       ![DATA_PEDIDO]             : Date       @title : 'DATA_PEDIDO';
       ![ENDERECO_ID]             : Integer    @title : 'ENDERECO_ID';
       ![LOGRADOURO]              : String(255)@title : 'LOGRADOURO';
       ![COMPLEMENTO]             : String(255)@title : 'COMPLEMENTO';
       ![NUMERO]                  : Integer    @title : 'NUMERO';
       ![CEP]                     : String(9)  @title : 'CEP';
       ![FRETE_UNIDADE_PESO]      : Double     @title : 'FRETE_UNIDADE_PESO';
       ![PESO_PEDIDO]             : Double     @title : 'PESO_PEDIDO';
       ![PRECO_PEDIDO]            : Double     @title : 'PRECO_PEDIDO';
       ![CUSTO_PEDIDO]            : Double     @title : 'CUSTO_PEDIDO';
       ![FRETE_PEDIDO]            : Double     @title : 'FRETE_PEDIDO';
       ![VALOR_FINAL_PEDIDO]      : Double     @title : 'VALOR_FINAL_PEDIDO';
       ![LUCRO_PEDIDO]            : Double     @title : 'LUCRO_PEDIDO';
       ![LUCRO_PERCENTUAL_PEDIDO] : Double     @title : 'LUCRO_PERCENTUAL_PEDIDO';
}
