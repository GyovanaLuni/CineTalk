if(!isNewFilme()){
    const uid = getFilmeUid();
    findFilmeByUid(uid);
}


function getFilmeUid(){
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get('uid');
}

function isNewFilme(){
    return getFilmeUid() ? false : true;
}

function findFilmeByUid(uid){
    
    firebase.firestore()
        .collection('filmes_teste')
        .doc(uid)
        .get()
        .then(doc => {
            if(doc.exists){
                fillFilmeScreen(doc.data());
                
            } else {
                alert("Documento nao encontrado!");
                window.location.href = 'filmes.html';
            }
        })
        .catch(() => {
            alert("Erro ao recuperar documento");
            window.location.href = 'filmes.html';
        })
}

//essa função pega os valores dos filmes e coloca na tabela para atualizar
function fillFilmeScreen(filme){
    form.date().value = filme.date;
    form.titulo().value = filme.titulo;
    form.sinopse().value = filme.sinopse;
    form.duracao().value = filme.duracao;
    form.url().value = filme.url;
}



function saveFilme() {
    const filme = createFilme();

    if(isNewFilme()){
        save(filme);
    }else{
        update(filme);
    }
}

function save(filme){
    firebase.firestore()
        .collection('filmes_teste')
        .add(filme)
        .then(() => {
            window.location.href = "filmes.html";
        })
        .catch(() => {
            alert("Error ao salvar o filme")
        })
}

function update(filme){
    firebase.firestore()
        .collection('filmes_teste')
        .doc(getFilmeUid())
        .update(filme)
        .then(() => {
            window.location.href = "filmes.html";
        })
        .catch(() => {
            alert("Error ao atualizar o filme")
        })
}



function createFilme(){
    return{
        date: form.date().value,
        titulo: form.titulo().value,
        sinopse: form.sinopse().value,
        duracao: form.duracao().value,
        url: form.url().value 
    }
}




const form = {
    date: () => document.getElementById('date'),
    titulo: () => document.getElementById('titulo'),
    sinopse: () => document.getElementById('sinopse'),
    duracao: () => document.getElementById('duracao'),
    url: () => document.getElementById('url')
}