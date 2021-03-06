set ConexaoCep = server.CreateObject("ADODB.Connection")
ConexaoCep = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\home\bigsolutions-sbs\dados\te_cep.mdb"


Class Acompanhamento
	Private prCodigo	
	Private prCod_visita
	Private prCod_corretor
	Private prCod_imovel
	Private prCod_acompanhamento
	Private prData
	Private prDescricao
	Private prAcompanhamento
	Private prStatus
	
	Private Sub Class_Initialize()		
	End Sub
	
	Private Sub Class_Terminate()
	End Sub
	
	
	Public Property Let Codigo(strCodigo)
    	prCodigo = strCodigo
	End Property

	Public Property Let Cod_visita(strCod_visita)
    	prCod_visita = strCod_visita
	End Property
	
	Public Property Let Cod_corretor(strCod_corretor)
    	prCod_corretor = strCod_corretor
	End Property
	
	Public Property Let Cod_imovel(strCod_imovel)
    	prCod_imovel = strCod_imovel
	End Property
	
	Public Property Let Cod_acompanhamento(strCod_acompanhamento)
    	prCod_acompanhamento = strCod_acompanhamento
	End Property
	
	Public Property Let Data(strData)
    	prData = strData
	End Property
	
	Public Property Let Descricao(strDescricao)
    	prDescricao = strDescricao
	End Property
	
	Public Property Let Acompanhamento(strAcompanhamento)
    	prAcompanhamento = strAcompanhamento
	End Property
	
	Public Property Let Status(strStatus)
    	prStatus= strStatus
	End Property
	


	Public Property Get getCodigo()
    	getCodigo = prCodigo
	End Property	
	
	Public Property Get getCod_visita()
    	getCod_visita = prCod_visita
	End Property
	
	Public Property Get getCod_corretor()
    	getCod_corretor = prCod_corretor
	End Property
	
	Public Property Get getCod_imovel()
    	getCod_imovel = prCod_imovel
	End Property
	
	Public Property Get getCod_acompanhamento()
    	getCod_acompanhamento = getCod_acompanhamento
	End Property
	
	Public Property Get getData()
    	getData = prData
	End Property
	
	Public Property Get getDescricao()
    	getDescricao = prDescricao
	End Property
	
	Public Property Get getAcompanhamento()
    	getAcompanhamento = prAcompanhamento
	End Property
	
	Public Property Get getStatus()
    	getStatus = prStatus
	End Property


	Public Function Incluir()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar evento retCep n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function
    
    Public Function Alterar()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar evento retCep n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function
    
    Public Function Excluir()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar evento retCep n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function
    
    Public Function Buscar()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar objeto:Acompanhamento n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function


End Class
	
	

Class Administradores
	Private prCodigo
	Private prNome
	Private prEmail
	Private prLogin
	Private prSenha
	Private prPermissao
	Private prAcessos
	Private prData_acesso
	Private prData_ultimo_acesso
	Private prHora_acesso
	Private prHora_ultimo_acesso
	Private prData_inclusao
	Private prStatus
	
	
	Private Sub Class_Initialize()		
	End Sub
	
	Private Sub Class_Terminate()
	End Sub
	
	
	Public Property Let Codigo(strCodigo)
    	prCodigo = strCodigo
	End Property

	Public Property Let Nome(strNome)
    	prNome = strNome
	End Property

	Public Property Let Email(strEmail)
    	prEmail = strEmail
	End Property

	Public Property Let Login(strLogin)
    	prLogin = strLogin
	End Property

	Public Property Let Senha(strSenha)
    	prSenha = strSenha
	End Property

	Public Property Let Permissao(strPermissao)
    	prPermissao = strPermissao
	End Property

	Public Property Let Acessos(strAcessos)
    	prAcessos = strAcessos
	End Property

	Public Property Let Data_acesso(strData_acesso)
    	prData_acesso = strData_acesso
	End Property

	Public Property Let Data_ultimo_acesso(strData_ultimo_acesso)
    	prData_ultimo_acesso = strData_ultimo_acesso
	End Property

	Public Property Let Hora_acesso(strHora_acesso)
    	prHora_acesso = strHora_acesso
	End Property

	Public Property Let Hora_ultimo_acesso(strHora_ultimo_acesso)
    	prHora_ultimo_acesso = strHora_ultimo_acesso
	End Property

	Public Property Let Data_inclusao(strData_inclusao)
    	prData_inclusao = strData_inclusao
	End Property

	Public Property Let Status(strStatus)
    	prStatus = strStatus
	End Property

	
	
	Public Property Get getCodigo
	Public Property Get getNome
	Public Property Get getEmail
	Public Property Get getLogin
	Public Property Get getSenha
	Public Property Get getPermissao
	Public Property Get getAcessos
	Public Property Get getData_acesso
	Public Property Get getData_ultimo_acesso
	Public Property Get getHora_acesso
	Public Property Get getHora_ultimo_acesso
	Public Property Get getData_inclusao
	Public Property Get getStatus





	Public Property Get getCodigo()
    	getCodigo = prCodigo
	End Property	
	
	Public Property Get getCod_visita()
    	getCod_visita = prCod_visita
	End Property
	
	Public Property Get getCod_corretor()
    	getCod_corretor = prCod_corretor
	End Property
	
	Public Property Get getCod_imovel()
    	getCod_imovel = prCod_imovel
	End Property
	
	Public Property Get getCod_acompanhamento()
    	getCod_acompanhamento = getCod_acompanhamento
	End Property
	
	Public Property Get getData()
    	getData = prData
	End Property
	
	Public Property Get getDescricao()
    	getDescricao = prDescricao
	End Property
	
	Public Property Get getAcompanhamento()
    	getAcompanhamento = prAcompanhamento
	End Property
	
	Public Property Get getStatus()
    	getStatus = prStatus
	End Property


	Public Function Incluir()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar evento retCep n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function
    
    Public Function Alterar()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar evento retCep n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function
    
    Public Function Excluir()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar evento retCep n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function
    
    Public Function Buscar()
       On Error Resume Next       		 
		   		 
	   If Err.Number Then
		  retCep = "<script language='javascript'>alert('Erro ao executar objeto:Acompanhamento n° " & Err.Number & " descricao : " & replace( Err.Description,"'","" )	 & "')< /script>"
	   End If	
    End Function


End Class


Ativacao_plano
	codi
	cod_plano
	cod_imovel
	data_inclusao
	data_efetivacao
	data_inativacao
	status
	imagem



Bairro
	codi
	cod_cidade
	descricao
	status



Bancos
	Codi
	Descricao
	Data_Inclusao
	Status



Bens
	codi
	descricao
	valor
	cod_tipo_bens
	cod_cliente
	status



Cidade
	codi
	cod_estado
	descricao
	status



Classificacao_imovel
	codi
	descricao
	status



Classificacao_interessado
	codi
	descricao
	status



Cliente_imovel_net
	codi
	cod_imovel
	cod_cliente_imovel



Clientes
	codi
	cod_cliente
	tipo
	sexo
	estado_civil
	nome
	endereco
	numero
	complemento
	bairro
	cidade
	estado
	cep
	ddd_fone
	fone
	ddd_cel
	celular
	cpf
	identidade
	data_emissao
	orgao_emissor
	email
	login
	senha
	cod_banco
	agencia
	conta
	cod_escolaridade
	tipo_imovel
	profissao
	empresa
	data_admissao
	car
	renda
	renda_extra
	data_nascimento
	data_inclusao
	cartorio
	status
	responsavel
	creci



Conjuge
	codi
	cod_cliente
	nome
	endereco
	numero
	complemento
	bairro
	cidade
	estado
	cep
	identidade
	data_emissao
	orgao_emissor
	cpf
	ddd_fone
	fone
	ddd_cel
	celular
	profissao
	car
	renda
	email
	data_nascimento
	data_inclusao
	status



Contas
	codi
	tipo
	cod_contrato
	cod_funcionario
	cod_tipo_conta
	cod_setor
	data
	numero
	descricao
	Valor
	origem
	data_inclusao
	status



Contato
	codi
	interessado
	ddd
	fone
	email
	cod_imovel
	cod_opcao
	descricao
	data_contato
	status



Contrato
	codi
	numero
	cod_corretor
	cod_cliente
	cod_imovel
	cod_fiador1
	cod_fiador2
	cod_chave_imovel
	tipo_servico
	valor
	data_vencimento
	data_inicio
	data_inclusao
	multa
	taxa
	cod_indice
	reajuste
	comissao
	status



Corretor
	codi
	cod_equipe
	lomarca
	nome
	email
	endereco
	numero
	complemento
	bairro
	cidade
	estado
	cep
	ddd_fone
	fone
	ddd_cel
	celular
	cod_unidade
	creci
	login
	senha
	cpf
	identidade
	data_emissao
	orgao_emissor
	data_inclusao
	pagamento
	status



Despesa
	codi
	descricao
	status



Equipe
	codi
	Descricao
	cod_supervisor
	Status



Estado
	codi
	descricao
	status



Estagios_obra
	codi
	descricao
	status



Fiador
	codi
	tipo
	nome
	sexo
	estado_civil
	endereco
	numero
	complemento
	bairro
	cidade
	estado
	cep
	ddd_fone
	fone
	ddd_cel
	celular
	cod_escolaridade
	cpf
	identidade
	data_emissao
	orgao_emissor
	tipo_imovel
	cod_banco
	agencia
	conta
	renda
	renda_extra
	profissao
	empresa
	data_admissao
	cartorio
	email
	data_nascimento
	data_inclusao
	status



Forma_pagamento
	codi
	descricao
	status



Funcao
	codi
	descricao
	status



Funcionario
	codi
	nome
	sexo
	estado_civil
	email
	endereco
	numero
	complemento
	bairro
	cidade
	estado
	cep
	ddd_fone
	fone
	ddd_cel
	celular
	cod_unidade
	cod_escolaridade
	cpf
	identidade
	data_emissao
	orgao_emissor
	cod_funcao
	cod_setor
	data_nascimento
	data_inclusao
	status



Gasto_extra
	codi
	cod_imovel
	cod_despesa
	valor
	data_inclusao
	status



Imoveis
	codi
	descricao
	cod_unidade
	endereco
	numero
	complemento
	tipo_imovel
	subtipo_imovel
	cod_cliente
	cod_bairro
	cod_cidade
	cod_estado
	cod_estagios_obra
	cod_metragem
	disponivel
	publicar
	cod_classificacao_imovel
	cod_registro_chave
	cod_cateria
	cod_idade_imovel
	observacao
	dormitorio
	suites
	garagem
	valor_imovel
	divida
	data_inclusao
	status
	flg_lancamento



Indice
	codi
	descricao
	valor
	data_atualizada
	status



Indice_moeda
	Codi
	Cod_moeda
	Valor
	Data_inclusao
	status



Lazer
	codi
	descricao
	status



Localizacao
	codi
	descricao
	data_inclusao
	status



Metragem
	codi
	Descricao
	status



Opcao
	codi
	descricao
	status



Perfil_Empreendimento
	Codi
	Cod_Imovel
	Cod_Empreendimento
	Quantidade
	Status



Perfil_contrato
	codi
	cod_contrato
	cod_tipo_conta
	quantidade
	data_inicio
	meses
	valor
	status



Perfil_imoveis
	codi
	cod_imovel
	estagios_obra_imovel
	tipo_empreendimento_imovel
	Lazer_imovel
	seguranca_imovel
	metragem_imovel
	estagios_obra_condominio
	tipo_empreendimento_condominio
	Lazer_condominio
	seguranca_condominio
	metragem_condominio
	observacao
	data_inclusao
	status



Perfil_imovel
	codi
	cod_imovel
	cod_comodo
	quantidade
	status



Perfil_lazer
	codi
	cod_lazer
	cod_imovel
	status



Perfil_plano
	codi
	cod_imovel
	cod_tipo_conta
	quantidade
	Cod_Moeda
	valor
	status



Perfil_procura
	codi
	cod_procura
	cod_comodo
	quantidade



Perfil_seguranca
	codi
	cod_seguranca
	cod_imovel
	status



Perfil_servico
	codi
	cod_moeda
	cod_imovel
	cod_servico
	valor
	status



Planos
	Codi
	Titulo
	Data_Inclusao
	Descricao
	Validade
	Valor
	Status
	imagem



Procura_imovel
	codi
	nome
	ddd
	fone
	email



Proposta_visita
	codi
	descricao
	texto
	cod_Visita
	data_inclusao
	status



Propostas
	codi
	descricao
	Texto
	status
	Data_inclusao



Quadro
	codi
	data_inclusao
	status



Recisao
	codi
	cod_contrato
	cod_motivo
	descricao
	status



Registro_Internet
	Codi
	Cod_Cliente
	Cod_Imovel
	Data_Inclusao
	Status



Registro_chave
	codi
	descricao
	cod_imovel
	cod_quadro
	cod_situacao
	cod_localizacao
	data_inclusao
	status



Registro_chave_imovel
	codi
	cod_corretor
	cod_imovel
	cod_quadro
	data_saida
	hora_saida
	data_chegada
	hora_chegada
	descricao
	data_inclusao
	status



Registro_concorrente
	codi
	cod_imovel
	cod_concorrente



Registro_foto
	codi
	cod_comodo
	cod_imovel
	descricao
	arquivo
	destaque
	data_inclusao
	status



Registro_midia
	codi
	quantidade
	cod_imovel
	cod_veiculo_comunicacao
	cod_unidade_metrica
	data_inclusao
	status



Reserva
	codi
	cod_imovel
	cod_corretor
	nome
	ddd
	fone
	data
	validade
	status



Seguranca
	codi
	descricao
	status



Servico
	codi
	descricao
	status



Setor
	codi
	descricao
	status



Situacao
	codi
	descricao
	data_inclusao
	status



Tipo_acompanhamento
	codi
	descricao
	tempo
	status



Tipo_bens
	codi
	descricao
	status



Tipo_cateria
	codi
	descricao
	status
	tipo_imovel



Tipo_comodo
	codi
	descricao
	status



Tipo_concorrente
	codi
	descricao
	status



Tipo_conta
	codi
	descricao
	meses
	tipo
	status



Tipo_empreendimento
	Codi
	Descricao
	Status



Tipo_escolaridade
	codi
	descricao
	status



Tipo_estado_civil
	codi
	descricao
	status



Tipo_idade_imovel
	codi
	descricao
	status



Tipo_imovel
	codi
	descricao
	status



Tipo_imovel_cliente
	codi
	descricao
	status



Tipo_moeda
	codi
	sigla
	descricao
	data_inclusao
	status



Tipo_motivo
	codi
	descricao
	status



UF
	codi
	Descricao
	UF



Unidade
	codi
	descricao
	endereco
	numero
	complemento
	bairro
	cidade
	estado
	cep
	ddd_fone
	fone
	data_inclusao
	status



Unidade_metrica
	codi
	descricao
	status



Veiculo_comunicacao
	codi
	descricao
	cod_unidade_metrica
	data_inclusao
	status



Visita
	codi
	nome
	endereco
	numero
	complemento
	bairro
	cidade
	estado
	cep
	ddd
	fone
	email
	cod_servico
	cod_corretor
	cod_imovel
	hora_visita
	data_visita
	visita
	status
	cod_classificacao_interessado



contrato_site
	codi
	descricao



registro_cliente_imovel
	codi
	nome
	ddd
	fone
	email
	identidade
	cpf
	estado
	cidade
	cep_imovel
	transacao
	tipo
	area
	contato
	data_inclusao
	status
	subtipo



tipo_fotos
	codi
	descricao



tipo_subtipo_imovel
	codi
	descricao
	status
	tipo_imovel



