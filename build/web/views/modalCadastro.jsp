<div id="modalCadastro" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content" style="padding-left:10%; padding-right:10%">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form>
                <div class="form-group">
                    <label for="inputName">Nome do dono: </label>
                    <input type="text" class="form-control" id="inputName" name="petName" aria-describedby="ajudaName"
                        placeholder="Pedro Henrique">
                    <small id="ajudaName" class="form-text text-muted">Digite o nome do seu Dono do Pet</small>
                </div>
                <div class="form-group">
                    <label for="inputPetName">Nome do Pet: </label>
                    <input type="text" class="form-control" id="inputPetName" name="petName" aria-describedby="ajudaPetName"
                        placeholder="Neguinho, Bob">
                    <small id="ajudaPetName" class="form-text text-muted">Digite o nome do seu Pet</small>
                </div>
                <div class="form-group">
                    <label for="inputCategoria">Tipo de Animal</label>
                    <select class="form-control" id="inputCategoria">
                        <option name="petCategoria" selected="true" disabled="disabled">Escolha uma Opção</option>
                        <option name="petCategoria" value="cachorro">cachorro</option>
                        <option name="petCategoria" value="gato">gato</option>
                        <option name="petCategoria" value="passaro">passaro</option>
                        <option name="petCategoria" value="peixe">peixe</option>
                        <option name="petCategoria" value="ave">ave</option>
                        <option name="petCategoria" value="avestruz">avestruz</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="inputRaca">Raça</label>
                    <select class="form-control" id="inputRaca">

                    </select>
                </div>
                <div class="form-group">
                    <label for="inputCor">Cor</label>
                    <select class="form-control" id="inputCor">
                        <option name="petCor" disabled>Escolha uma Opção</option>
                        <option name="petCor" value="branco">branco</option>
                        <option name="petCor" value="preto">preto</option>
                        <option name="petCor" value="marrom">marrom</option>
                        <option name="petCor" value="malhado">malhado</option>
                        <option name="petCor" value="amarelo">amarelo</option>
                        <option name="petCor" value="verde">verde</option>
                        <option name="petCor" value="rajado">rajado</option>
                        <option name="petCor" value="outro">outro</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="inputPeso">Nome do dono: </label>
                    <input type="number" class="form-control" id="inputPeso" name="petPeso" aria-describedby="ajudaName"
                        placeholder="Pedro Henrique">
                    <small id="ajudaPeso" class="form-text text-muted">Digite peso em Kg do seu Pet</small>
                </div>
                <div class="form-group">
                    <label for="inputDataNasc">Nome do dono: </label>
                    <input type="number" class="form-control" id="inputDataNasc" name="petDtNasc" aria-describedby="ajudaDtNasc"
                        placeholder="Pedro Henrique">
                    <small id="ajudaDtNasc" class="form-text text-muted">Digite a data de nascimento do seu Pet</small>
                </div>
                <div class="form-group form-check">
                    <label class="btn btn-secondary active">
                        <input type="radio" name="sexo" id="option1" autocomplete="off" checked> Macho
                    </label>
                    <label class="btn btn-secondary">
                        <input type="radio" name="sexo" id="option2" autocomplete="off"> Femea
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