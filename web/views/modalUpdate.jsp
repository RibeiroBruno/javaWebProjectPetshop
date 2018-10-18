<%@ page language="java" pageEncoding="UTF-8"%>
<div id="modalAdocao" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content" style="padding-left:10%; padding-right:10%">
            <div class="modal-header">
                <h5 class="modal-title">Formulario Adocao</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="adocao" method="POST">
                <div class="form-group">
                    <label for="inputName">Nome: </label>
                    <input type="text" class="form-control" id="inputName" name="nome" aria-describedby="ajudaName"
                        placeholder="Pedro Henrique" required>
                    <small id="ajudaName" class="form-text text-muted">Digite seu nome</small>
                </div>
                <div class="form-group">
                    <label for="inputDtNasc">Data de Nascimento: </label>
                    <input type="date" class="form-control" id="inputDtNasc" name="dtNasc" aria-describedby="ajudaDtNasc"
                        placeholder="10/10/2010" required>
                    <small id="ajudaDtNasc" class="form-text text-muted">Insira sua data de nascimento</small>
                </div>
                <div class="form-group">
                    <label for="inputCPF">CPF: </label>
                    <input type="text" class="form-control" id="inputCPF" name="cpf" aria-describedby="ajudaCPF"
                        placeholder="123.235.325-32" required>
                    <small id="ajudaCPF" class="form-text text-muted">Insira seu CPF: </small>
                </div>
                <div class="form-group">
                    <label for="inputRG">RG: </label>
                    <input type="text" class="form-control" id="inputRG" name="rg" aria-describedby="ajudaRG"
                        placeholder="12.235.325-3" required>
                    <small id="ajudaCPF" class="form-text text-muted">Insira sua data de nascimento</small>
                </div>
                <div class="form-group">
                    <h3>PET: </h3>
                    <input type="text" class="form-control" id="petId" hidden>
                    <h4 class="card-title text-center" id="adocaoNome"></h4>
                    <p class="card-text text-center" id="adocaoTipo"></p>
                    <p class="card-text text-center" id="adocaoDono"></p>
                    <p class="card-text text-center" id="adocaoGenero"></p>
                </div>
                <div class="btn-group-toggle" data-toggle="buttons" style="margin-bottom: 10%">
                    <label class="btn btn-outline-success active">
                        <input type="radio" value="sim" name="adocao"> Confirma solicitação de adoção?
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>