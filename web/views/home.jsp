<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<div class="parallax" id="index1">
    <div class="container container-expand-lg">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100 rounded" src="img/labrador-com-cara-de-bobo.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Amplo Espaço</h5>
                    </div>
                </div>
                <div class="carousel-item" style="width: 100%; height: 100%;">
                    <img class="d-block w-100 rounded" src="img/pet-shop.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Maior Variedade</h5>
                    </div>
                </div>
                <div class="carousel-item" style="width: 100%; height: 100%;">
                    <img class="d-block w-100 rounded" src="img/pet-shop2.jpg" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Traga seu Pet</h5>
                    </div>
                </div>
            </div>
        </div>

        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div class="parallax" id="index2">
    <div class="jumbotron">
        <h1 class="display-3 text-center">UNIPET</h1>
        <h3 class="display-4 text-center">O Principal Portal de Compras da Uninove para seu Pet</h3>
        <div class="d-flex justify-content-center">
            <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#modalCadastro">Cadastre
                Seu Pet</button>
        </div>
    </div>
    <div id="index2b" class="row" style="margin-left: 10px">
        <div class="d-flex justify-content-center">
            <div class="col-sm-6" style="background-color: rgba(0, 0, 0, 0.5)">
                <h2 class="text-white text-center">
                    UNIPET
                </h2>
                <h5 class="text-white text-right">Sobre a UNIPET</h5>
                <p class="text-white text-right">A UNIPET foi fundada em 2018 na cidade de São Paulo pelo Senhor Pedro
                    Coutinho
                    Melo e sua principal missão é ser a maior rede de PETSHOPs do Planeta. Atualmente contamos com
                    1 funcionário que está fazendo este site e nossos principais clientes são ninguém ainda porque
                    a empresa não existe.</p>
                <div class="d-flex justify-content-right">
                    <button onclick="alert('Beleza Valeu!')" class="btn btn-primary">Clique aqui</button>
                </div>
            </div>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="img/labrador-com-cara-de-bobo.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Seu Pet Feliz</h5>
                    <p class="card-text">Maior variedade, com ambiente agradável.</p>
                    <div class="d-flex justify-content-center">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCadastro">Cadastre
                            Seu Pet</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="index2c" class="row" style="padding: 10%">
        <div class="d-flex justify-content-center">
            <core:forEach var="pet" items="${pets}">
                <div class="card" style="width: 18rem; margin: 2%">
                    <img class="card-img-top" src="img/labrador-com-cara-de-bobo.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title text-center">${pet.getPetName()}</h5>
                        <p class="card-text text-center">Tipo: ${pet.getPetCategoria()}</p>
                        <p class="card-text text-center">Nome do Dono: ${pet.getNomeDono()}</p>
                        <p class="card-text text-center">Criado em: ${pet.getCreatedAt()}</p>
                        <p class="card-text text-center">Gênero: ${pet.getSexo()}</p>
                        <p class="card-text text-center">Data Nascimento: ${pet.getPetDtNasc()}</p>
                        <p class="card-text text-center">Cor: ${pet.getPetCor()}</p>
                        <p class="card-text text-center">setRaca: ${pet.getRaca()}</p>
                        <div class="d-flex justify-content-center">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCadastro">Adote
                                este Pet</button>
                        </div>
                    </div>
                </div>
            </core:forEach>
        </div>
    </div>
    <%@include file="modalCadastro.jsp" %>
</div>