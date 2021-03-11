using System;
using System.Linq;
using System.Web.UI;

namespace PetShopDoBairro.adm
{
    public partial class empresaForm : System.Web.UI.Page
    {
        private int _idEmpresa = -1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["idEmpresa"] != null)
            {
                int.TryParse(Request["idEmpresa"].ToString(), out _idEmpresa);

                if (!Page.IsPostBack)
                {
                    BancoDeDadosPadraoDataContext contexto = new BancoDeDadosPadraoDataContext();
                    var empresa = (from emp in contexto.EMPRESAs
                                   where emp.ID == _idEmpresa
                                   select emp)
                                   .FirstOrDefault();
                    if (empresa != null)
                    {
                        txtNomeFantasia.Text = empresa.NOMEFANTASIA;
                        txtRazaoSocial.Text = empresa.RAZAOSOCIAL;
                        txtCNPJ.Text = empresa.CNPJ;
                        txtEndereco.Text = empresa.ENDERECO;
                        txtBairro.Text = empresa.BAIRRO;
                        txtCidade.Text = empresa.CIDADE;
                        txtEstado.Text = empresa.ESTADO;
                        txtCEP.Text = empresa.CEP;
                        txtTelefone.Text = empresa.TELEFONE;
                        txtTelefone2.Text = empresa.TELEFONE2;
                        txtEmail.Text = empresa.EMAIL;

                        var filiais = (from f in contexto.FILIALs
                                      where f.IDEMPRESA == _idEmpresa
                                      select f)
                                      .ToList();

                        rptFilial.DataSource = filiais;
                        rptFilial.DataBind();

                    }
                }
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            BancoDeDadosPadraoDataContext contexto = new BancoDeDadosPadraoDataContext();
            EMPRESA empresa = null;
            if (_idEmpresa == -1)
            {
                empresa = new EMPRESA();
                contexto.EMPRESAs.InsertOnSubmit(empresa);
            }
            else
            {
                empresa = (from emp in contexto.EMPRESAs
                           where emp.ID == _idEmpresa
                           select emp)
                              .FirstOrDefault();
            }

            empresa.NOMEFANTASIA = txtNomeFantasia.Text;
            empresa.RAZAOSOCIAL = txtRazaoSocial.Text;
            empresa.CNPJ = txtCNPJ.Text;
            empresa.ENDERECO = txtEndereco.Text;
            empresa.BAIRRO = txtBairro.Text;
            empresa.CIDADE = txtCidade.Text;
            empresa.ESTADO = txtEstado.Text;
            empresa.CEP = txtCEP.Text;
            empresa.TELEFONE = txtTelefone.Text;
            empresa.TELEFONE2 = txtTelefone2.Text;
            empresa.EMAIL = txtEmail.Text;

            contexto.SubmitChanges();
        }
    }
}