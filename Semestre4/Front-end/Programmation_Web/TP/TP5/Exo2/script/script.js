alert("helloo");
const form = document.querySelector("form");
const Nom = document.getElementById("Nom");
const adresse = document.getElementById("adresse");
const email = document.getElementById("E-mail");
const password = document.getElementById("mdp");
const password2 = document.getElementById("mdpc");
const telephone = document.getElementById("Téléphone");
const sujet = document.querySelector("select");
const commentaire = document.getElementById("commentaire");

form.addEventListener("submit", function(e) {
  e.preventDefault();

  checkRequired([Nom, adresse, email, password, password2, telephone, sujet, commentaire]);
  checkLength(Nom, 3, 15);
  checkLength(password, 6, 25);
  checkEmail(email);
  checkPasswordsMatch(password, password2);
});

function checkRequired(inputArr) {
  inputArr.forEach(function(input) {
    if (input.value.trim() === "") {
      showError(input, `${getFieldName(input)} est requis`);
    } else {
      showSuccess(input);
    }
  });
}

function checkLength(input, min, max) {
  if (input.value.length < min) {
    showError(
      input,
      `${getFieldName(input)} doit contenir au moins ${min} caractères`
    );
  } else if (input.value.length > max) {
    showError(
      input,
      `${getFieldName(input)} ne doit pas dépasser ${max} caractères`
    );
  } else {
    showSuccess(input);
  }
}

function checkEmail(input) {
  const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  if (re.test(input.value.trim())) {
    showSuccess(input);
  } else {
    showError(input, "Email non valide");
  }
}

function checkPasswordsMatch(input1, input2) {
  if (input1.value !== input2.value) {
    showError(input2, "Les mots de passe ne correspondent pas");
  }
}

function showError(input, message) {
  const formControl = input.parentElement;
  formControl.className = "form-control error";
  const small = formControl.querySelector("small");
  small.innerText = message;
}

// function showSuccess(input) {
//   const formControl = input

// -------------------------------------------------------------------------------------

  function showSuccess(input) {
  const formControl = input.parentElement;
  formControl.className = "form-control success";
}

function showError(input, message) {
  const formControl = input.parentElement;
  formControl.className = "form-control error";
  const small = formControl.querySelector("small");
  small.innerText = message;
}

function getFieldName(input) {
  return input.id.charAt(0).toUpperCase() + input.id.slice(1);
}

function checkRequiredFields(inputArr) {
  inputArr.forEach(function(input) {
    if (input.value.trim() === "") {
      showError(input, `${getFieldName(input)} est requis`);
    } else {
      showSuccess(input);
    }
  });
}

function checkStringLength(input, min, max) {
  if (input.value.length < min) {
    showError(input, `${getFieldName(input)} doit contenir au moins ${min} caractères`);
  } else if (input.value.length > max) {
    showError(input, `${getFieldName(input)} ne doit pas dépasser ${max} caractères`);
  } else {
    showSuccess(input);
  }
}

function checkEmailFormat(input) {
  const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  if (re.test(input.value.trim())) {
    showSuccess(input);
  } else {
    showError(input, "Email non valide");
  }
}

function checkPasswordsMatch(input1, input2) {
  if (input1.value !== input2.value) {
    showError(input2, "Les mots de passe ne correspondent pas");
  }
}

const form = document.querySelector("form");
form.addEventListener("submit", function(e) {
  e.preventDefault();

  checkRequiredFields([Nom, adresse, email, password, password2, telephone, sujet, commentaire]);
  checkStringLength(Nom, 3, 15);
  checkStringLength(password, 6, 25);
  checkEmailFormat(email);
  checkPasswordsMatch(password, password2);
});


// Il est important de noter que ce code est un exemple générique qui peut être adapté
// en fonction des besoins spécifiques de votre projet. Il n'inclut pas de gestion des
//  erreurs et il est possible qu'il nécessite des modifications