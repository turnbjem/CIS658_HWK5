let form = document.getElementById('postForm');
 let errorMessage = document.getElementById('errorMessage');
 form.addEventListener('input', (event) => {
     errorMessage.textContent = '';
     let email = document.getElementById('email').value.indexOf("@");
     let lname = document.getElementById('lname').value;
     let fname = document.getElementById('fname').value;
     let thumbnail = document.getElementById('thumbnail').value;
     submitOK = "true"
     if(email == -1){
         errorMessage.innerHTML = "The email is not valid";
         submitOK = "false";
     }
     if(fname.length > 10){
         errorMessage.innerHTML = "The first name is too long!";
         submitOK = "false";
     }
     if(lname.length > 10){
         errorMessage.innerHTML = "The last name is too long!";
         submitOK = "false";
     }

 });
form.addEventListener('submit', (event) => {
    if(submitOK == "false"){
        event.preventDefault();
        errorMessage.innerHTML += "<h2>You cannot submit the form with the current errors!</h2>";

    }
});
