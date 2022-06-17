function saveFilme() {
    const filme = createFilme();

    firebase.firestore()
        .collection('filmes_teste')
        .add(filme)
        .then(() => {
            window.location.href = "painelDeControle.html";
        })
        .catch(() => {
            alert("Error ao salvar o filme")
        })

}

function createFilme(){
    return{
        date: form.date().value,
        titulo: form.titulo().value,
        sinopse: form.sinopse().value,
        duracao: form.duracao().value  
    }
}




const form = {
    date: () => document.getElementById('date'),
    titulo: () => document.getElementById('titulo'),
    sinopse: () => document.getElementById('sinopse'),
    duracao: () => document.getElementById('duracao')
}