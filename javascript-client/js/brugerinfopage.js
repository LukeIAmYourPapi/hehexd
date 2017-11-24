$(document).ready(() => {

    var username = SDK.Storage.load("brugernavn");
    var id = SDK.Storage.load("brugerens ID");


$('#usernameInput').text(username);
$('#idInput').text(id);


    $('#sletBrugerKnap').click((e) => {
        e.preventDefault();

        var userID = SDK.Storage.load("brugerens ID");
        console.log("Button works!");

        SDK.User.delete(userID);
         alert("User was deleted!");
           window.location.href = "login.html";
           SDK.Storage.remove("brugerens ID");
           SDK.Storage.remove("brugernavn");

    });

});