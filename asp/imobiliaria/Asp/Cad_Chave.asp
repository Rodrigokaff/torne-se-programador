<!--#INCLUDE FILE ="chamar_banco.asp"-->
<!--#INCLUDE FILE ="funcao_senha.asp"-->
<!--#INCLUDE FILE ="CPF_CNPJ.asp"-->
<%
pagina=request("pagina")
imovel=request("imovel")
if request("flag") = 1 then
   localizacao=replace(trim(ucase(request("localizacao"))),"'","")
   situacao=replace(trim(ucase(request("situacao"))),"'","")
   if descricao<>"" then
      set verifica_descricao=conn.execute("select * from Localizacao where descricao='"&descricao&"'")
      if not verifica_descricao.eof then
         msg=msg&" Localiza��o j� existe.<br>"
      end if
   else
      msg=msg&" Localiza��o.<br>"
   end if
   if msg="" then
      conn.execute("insert into Localizacao (descricao,data_inclusao) values ('"&descricao&"',convert(datetime,'"&date()&"',103))")%>
      <script>
         alert('Cadastro efetuado com sucesso!');
         location.href="<%=pagina%>.asp";
      </script>
   <%end if
end if%>
<html>
<head>
<title>:::::Imobi....:::</title>
<script language="javascript" src="formatacao.js"></script>
<meta name="description" content="BIG SOLUTIONS TECNOLOGIA DA INFORMA��O LTDA">
<link rel="stylesheet" href="estilo.css" type="text/css">
</head>
<script language="javascript">
  function abilita(tipo)
    {
     if (tipo=='quadro')
        {
          document.form1.localizacao.disabled=true;
        }
     else
        {
          document.form1.localizacao.disabled=false;
        }
    }
</script>
<body marginheight="0" marginwidth="0" leftmargin=0 topmargin=0 bgcolor="#FFFFFF" text="#333333" link="#333333" vlink="#333333" alink="#333333">
<form method=post action="<%=request.servervariables("SCRIPT_NAME")%>?flag=1&pagina=<%=pagina%>&imovel=<%=imovel%>" name="form1">
<input type="hidden" name="reload">
<table border="0" width="777" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table width="778" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td bgcolor="#6C7692"><img src="../denilson/dot_transparent.gif" width="1" height="2"></td>
        </tr>
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td bgcolor="#999999"><img src="../denilson/dot_transparent.gif" width="1" height="1"></td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC"><img src="../denilson/dot_transparent.gif" width="1" height="2"></td>
        </tr>
      </table>
      <br>
      <table border="0" align=left width=380 cellspacing="0" cellpadding="0">
        <tr>
          <td>
            <br>
            <span span class="estilo">&nbsp;&nbsp;<b>Para cadastrar um nova chave do im�vel siga os passos descrito abaixo.<br><br></b>
            &nbsp;&nbsp;<img src="../img/b_bullet.gif">&nbspPreencha o campo corretamente.<br>
            &nbsp;&nbsp;<img src="../img/b_bullet.gif">&nbspAten��o no preenchimento do campo obrigat�rio.&nbsp;<img src="../img/obrigacao.gif">&nbsp;<br>
            &nbsp;&nbsp;<img src="../img/helpicon.gif" border=0>&nbsp;&nbsp;Campo com ajuda &nbsp;&nbsp;<br>
          </td>
        </tr>
        <tr>
          <td>
            <%if msg<>"" then%>
               <table cellpadding="0" cellspacing="0" border="0" height=100 width="170">
                 <tr>
                   <td height=1><img src="../img/img_S_E.gif" border="0"></td>
                   <td height=1 width="100%" background="../img/img_S.gif">&nbsp;&nbsp;<font color="#FFFFFF"><b>Erros Encontrados</b></font></td>
                   <td height=1><img src="../img/img_S_D.gif" border="0"></td>
                 </tr>
                 <tr>
                   <td height=1 background="../img/img_E.gif">&nbsp;</td>
                   <td valign="top" height=100% width="100%">
                     <font color="#CC0000"><%=msg%></font>
                   </td>
                   <td height=1 background="../img/img_D.gif">&nbsp;</td>
                 </tr>
                 <tr>
                   <td height=1>
                     <img src="../img/img_I_E.gif" border="0">
                   </td>
                   <td height=1 width="100%" background="../img/img_I.gif">&nbsp;</td>
                   <td height=1>
                     <img src="../img/img_I_D.gif" border="0">
                   </td>
                 </tr>
               </table>
            <%end if%>
          </td>
        </tr>
        <tr>
          <td><br></td>
        </tr>
        <tr>
          <td>
            &nbsp;&nbsp;<a href="<%=pagina%>.asp"><img src="../img/bot_voltar.gif" title="Voltar" border=0></a>
          </td>
        </tr>
      </table>   
      <table border="0" width=376 align=right>
        <tr>
          <td span class="estilo" width=100%>
            <img src="../img/r_14.gif">&nbsp;CADASTRAR NOVA CHAVE DO IM�VEL<br><br>
          </td>
          <td bgcolor="#FFFFFF">&nbsp;&nbsp;</td>
        </tr>
        <tr>
          <td>
            <span class="estilo">Im�vel:
          </td>
        </tr>
        <tr>
          <td>
            <%set imoveis = conn.execute("select * from imoveis where status=0 and codigo="&imovel)%>
            <%=imoveis("descricao")%>
          </td>
        </tr>
        <tr>
          <td>
            <span class="estilo"><input type="checkbox" name="quadro" onclick="abilita('quadro')">&nbsp;Chaves no quadro?
          </td>
        </tr>
        <tr>
          <td>
            <span class="estilo">Localiza��o:
          </td>
        </tr>
        <tr>
           <td colspan=2>
             <select name="localizacao" style="background=#E8E8E8;" disabled>
               <option value = ""></option>
                 <%set localizar=conn.execute("select * from localizacao ORDER BY descricao")%>
                 <%do while not localizar.eof %>
                 <%if cstr(localizar("codigo"))= cstr(localizacao) then%>
                 <option value="<%=localizar("codigo")%>" selected><%=localizar("descricao")%>
                 <%else%>
                 <option value="<%=localizar("codigo")%>"><%=localizar("descricao")%>
                 <%end if%>
                 <%localizar.movenext%>
                 <%loop%>
              </select>&nbsp;&nbsp;&nbsp;
           </td>
         </tr>
         <tr>
          <td>
            <span class="estilo">Coment�rios:
          </td>
        </tr>
        <tr>
          <td>
            <textarea name="descricao" label="descricao"><%=descricao%></textarea>
          </td>
        </tr>
         <tr>
          <td align=center>
            <input type="image" src="../img/ok.gif" value="submit" border=0>
          </td>
        </tr>   
      </table>
    </td>
  </tr>
</table><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<table width=100% background="../img/rod_2.gif"><tr><td><br><br></td></tr></table>
</body>
</html>

