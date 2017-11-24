$(document).ready(() => {

  SDK.User.loadNav();

  $("#login-button").click(() => {

    const username = $("#inputUsername").val();
    const password = $("#inputPassword").val();

    SDK.User.login(username, password, (err, data) => {
      if (err && err.xhr.status === 401) {
        $(".form-group").addClass("has-error");
      }
      else if (err){
        console.log("Kek")
      } else {

          console.log(data);
        window.location.href = "MainPage.html";
      }
    });

  });



$("#opretBtn").click(() => {

    const username = $("#inputUsername").val();
    const password = $("#inputPassword").val();
    const firstName = $("#inputFirstname").val();
    const lastName = $("#inputLastname").val();
    const type = 1;
    console.log("we done made it");



        SDK.User.create(username, password, firstName, lastName, type, (err, data) => {
            if (err) {
                alert("Sry no work");
                return console.log("kek", err)
            }
            console.log(data);

            window.location.href = "login.html";

        });

    });
});