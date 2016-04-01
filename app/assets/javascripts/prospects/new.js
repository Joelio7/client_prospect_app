$(document).ready(function () {
        $(".phone-number").hide();

    $(".pure-button").click(function () {
        $(".phone-number").show();
    });

    $(".submit").click(function () {
      alert("Your information has been successfully submitted. Your selected agent should be contacting y");
      window.location.replace('http://localhost:3000/');
    });
    });
