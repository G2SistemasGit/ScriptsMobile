CREATE procedure [dbo].[sp_AddPreVenda_To_AutoAtendimento] @LojaId int, @VendedorId int, @RESULT_VALUE int OUTPUT
as
	declare @ID int;
	declare @AlmoxId int;
	declare @ClienteBalcao int;
	declare @DataAtual datetime;

set nocount on

Select @ID = MAX(PREVENDAID)+1
from PREVENDA where ENTIDADEID_LOJA = @LojaId;

select @AlmoxId = AlmoxId from almoxLoja where EntidadeId_Loja = @LojaId and Venda = 'S'

select @DataAtual = CONVERT(VARCHAR(20), GETDATE(), 10);

select @ClienteBalcao = VALOR from CONFIGURACAO where PARAMETRO = 31064

if (IsNull(@ClienteBalcao,0) = 0)
	raiserror ('CLIENTE BALCAO NAO CONFIGURADO.',16,-1);
	
insert into PREVENDA (ALMOXID, ENTIDADEID_LOJA, PREVENDAID, DATA, ENTIDADEID_FUNC, ENTIDADEID_CLIENTE, STATUS, isAutoAtendimento)
values (@AlmoxId, @LojaId, @ID, @DataAtual, @VendedorId, @ClienteBalcao, '1', 'S');

set @RESULT_VALUE = @ID;
return