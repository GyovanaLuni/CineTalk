
function validateFields(){
    //verificando se o login é valido
    const emailValid = isEmailValis();
        document.getElementById("recover-password-button").disabled = !emailValid;

    //verificando se a senha é valida
    const passwordValid = isPasswordValid();
    form.loginButton().disabled =  !emailValid || !passwordValid;
}

function isEmailValis(){
    const email = form.email().value;
    if (!email) {
        return false;
    }
    return validateEmail(email);
}

function isPasswordValid(){
    const password = form.password().value;
    if (!password) {
        return false;
    }
    return true;
}

//função para ver se o email é valido
function validateEmail(email){
    return /\S+@\S+\.\S+/.test(email);
}

function acessar(){
    firebase.auth().signInWithEmailAndPassword(
        form.email().value, form.password().value
        ).then(response => {
            window.location.href = "home.html";
        }).catch(error =>{
            console.log('error',error)});
}


const form = {
    email: () => document.getElementById('email'),
    password: () => document.getElementById('password'),
    loginButton: () => document.getElementById('login-button')
}



