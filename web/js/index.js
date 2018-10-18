function createRaca(tagOption) {
    const racaCeas = [
        'Alano Espanhol', 'Airedale Terrier', 'American Staffordshire Terrier', 'American Water Spaniel', 'Antigo Cão de Pastor Inglês', 'Basset Azul da Gasconha', 'Basset Fulvo da Bretanha', 'Basset Hound', 'Beagle ', 'Bearded Collie', 'Bichon Maltês', 'Bobtail', 'Border Collie', 'Boston Terrier', 'Boxer', 'Bull Terrier', 'Bullmastiff', 'Bulldog', 'Cão de Montanha dos Pirinéus', 'Caniche', 'Chihuahua', 'Cirneco do Etna', 'Chow Chow', 'Cocker Spaniel(Americano ou Inglês)', 'Dálmata', 'Dobermann', 'Dogue Alemão', 'Dogue Argentino', 'Dogue Canário', 'Fox Terrier', 'Foxhound', 'Galgo', 'Golden Retriever', 'Gos d`Atura', 'Husky Siberiano', 'Laika', 'Labrador Retriever', 'Malamute -do -Alasca', 'Mastin dos Pirenéus', 'Mastin do Tibete', 'Mastin Espanhol', 'Mastín Napolitano', 'Pastor Alemão', 'Pastor Belga', 'Pastor de Brie', 'Pastor dos Pirenéus de Cara Rosa', 'Pequinês', 'Perdigueiro', 'Pitbull', 'Podengo', 'Pointer', 'Pug', 'Rhodesian Ridgeback', 'Rottweiler', 'Rough Collie', 'Sabueso(Espanhol ou Italiano)', 'Saluki', 'Samoiedo', 'São Bernardo', 'Scottish Terrier', 'Setter Irlandés', 'Shar - Pei', 'Shiba Inu', 'Smooth Collie', 'Staffordshire Bull Terrier', 'Teckel', 'Terra - nova', 'Terrier Australiano', 'Terrier Escocês', 'Terrier Irlandês', 'Terrier Japonês', 'Terrier Negro Russo', 'Terrier Norfolk', 'Terrier Norwich', 'Terrier Tibetano', 'Welhs Terrier', 'West Highland T.', 'Wolfspitz', 'Yorkshire Terrie'
    ]
    const racaGatos = [
        'Abissínio', 'Angorá turco', 'American curl.', 'American Shorthair.', 'American wirehair', 'Azul ruso', 'Balinês', 'Bengal', 'Bobtail Japonês', 'Bombay', 'British Shorthair', 'Burmês', 'Burmês Europeu', 'California spangled', 'Chartreux', 'Cornish rex', 'Devon Rex', 'Exótico', 'Habana', 'Himalayan', 'Javanês', 'Korat', 'Maine coon', 'Manx', 'Mau Egípcio', 'Nibelungo', 'Noruega da floresta', 'Ocicat', 'Oriental de pêlo curto', 'Persa', 'Ragamuffin', 'Ragdoll', 'Sagrado da Birmânia', 'Scottish fold', 'Selkirk rex', 'Siamês', 'Singapur', 'Shorthair Americano', 'Shorthair Britânico', 'Shorthair Exótico', 'Snowshoe', 'Somali', 'Sphynx', 'Tiffanie', 'Tonquinês', 'Van turco.',
    ]
    racaPassaros = [
        'Canário', 'Canário doméstico', 'Criador lusitano', 'Diamante-de-gould', 'Gallus gallus domesticus', 'Hook Bill', 'Mandarim(pássaro)', 'Manon(pássaro)', 'Manon-de-peito-branco', 'Mariola(pombo)', 'Mariolinha', 'Periquito-australiano', 'Pombo-correio', 'Psittacidae'
    ]
    racaPeixes = [
        'Beta', 'Plati', 'Espada', 'Guppy', 'Disco', 'Tetra Preto', 'Molinésia Preta', 'Coridora Albina', 'Coridora Paleatus', 'Botia Palhaço', 'Botia Painted', 'ÁGUA DOCE FRIA', 'Dourado', 'Carpa',
        'Dânio', 'Tanictis', 'Paraíso', 'Perca Sol', 'Phoxinus', 'Notrópis', 'Bótia de Rio Chinesa'
    ]
    recaAvestruz = [
        'avestruz'
    ]
    const option = tagOption.value
    const tag = document.getElementById('inputRaca')
    let result = '<option selected="true" disabled="disabled">Escolha uma Raça</option>'
    if (option === 'cachorro') {
        result += racaCeas.map(raca => '<option name="raca" value="' + raca + '">' + raca + '</option>').join('\n')
    }
    if (option === 'gato') {
        result += racaGatos.map(raca => '<option name="raca" value="' + raca + '">' + raca + '</option>').join('\n')
    }
    if (option === 'passaro') {
        result += racaPassaros.map(raca => '<option name="raca" value="' + raca + '">' + raca + '</option>').join('\n')
    }
    if (option === 'peixe') {
        result += racaPeixes.map(raca => '<option name="raca" value="' + raca + '">' + raca + '</option>').join('\n')
    }
    if (option === 'avestruz') {
        result += recaAvestruz.map(raca => '<option name="raca" value="' + raca + '">' + raca + '</option>').join('\n')
    }
    console.log(result)
    tag.innerHTML = result
}

function sendDataToForm(index) {
    const indexPet = document.getElementById('petId' + index).getAttribute('value')
    const adocaoNome = document.getElementById('petName' + index).getAttribute('value')
    const adocaoTipo = document.getElementById('PetCategoria' + index).getAttribute('value')
    const adocaoDono = document.getElementById('NomeDono' + index).getAttribute('value')
    const petGenero = document.getElementById('Sexo' + index).getAttribute('value')
    document.getElementById('petId').textContent = indexPet
    document.getElementById('adocaoNome').textContent = 'Nome: ' + adocaoNome
    document.getElementById('adocaoTipo').textContent = 'Tipo: ' + adocaoTipo
    document.getElementById('adocaoDono').textContent = 'Dono: ' + adocaoDono
    document.getElementById('adocaoGenero').textContent = 'Sexo: ' + petGenero
}