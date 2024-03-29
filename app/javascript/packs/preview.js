document.addEventListener("turbolinks:load", function () {
  $(function () {
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          $("#preview").attr("src", e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
      }
    }
    $("#file_btn").change(function () {
      readURL(this);
    });
  });
});
