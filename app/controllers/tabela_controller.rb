class TabelaController < ApplicationController
  skip_before_action :authorized
  def index
    #@tabelas = Tabela.all
    @zespols = Zespol.find_by_sql("SELECT * FROM zespols ORDER BY punkty DESC")
    #@id_zespolu_do_tabeli = Zespol.find_by_sql("SELECT * FROM tabelas INNER JOIN zespols ON tabelas.id_zespolu = zespols.id ORDER BY punkty DESC")
    #@tabelakox = Tabela.find_by_sql("SELECT z.nazwa, t.zwyciestwa, t.remisy, t.porazki, t.gole_strzelone, t.gole_stracone FROM zespols z, tabelas t INNER JOIN zespols ON z.id = t.id_zespolu")
    #@druzyna = @id_zespolu_do_tabeli.find(params[:id])
  end
end
  
