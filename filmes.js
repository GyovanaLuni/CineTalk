
function newFilme(){
    window.location.href = 'addFilme.html';
}



findFilmes();

function findFilmes(){
    firebase.firestore()
        .collection('filmes_teste')
        .orderBy('date', 'desc')
        .get()
        .then(snapshot => {
            const filmes = snapshot.docs.map(doc => doc.data());
            addFilme(filmes);
        })

}

function addFilme(filmes){
    const orderedList = document.getElementById('filmes')

    filmes.forEach(filme => {
        const li = document.createElement('li');
        
        //add data
        const date = document.createElement('p');
        date.innerHTML = (filme.date);
        li.appendChild(date);

        //add titulo
        const titulo = document.createElement('p');
        titulo.innerHTML = filme.titulo;
        li.appendChild(titulo);

        //add sinopse
        const sinopse = document.createElement('p');
        sinopse.innerHTML = filme.sinopse;
        li.appendChild(sinopse);

        //add duracao
        const duracao = document.createElement('p');
        duracao.innerHTML = filme.duracao;
        li.appendChild(duracao);

        orderedList.appendChild(li);
    });
}

function formatDate(date) {
    return new Date(date).toLocaleDateString('pt-br');
}