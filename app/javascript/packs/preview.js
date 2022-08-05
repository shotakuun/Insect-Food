$(function () {
  $("#file_btn").change(function (e) {
    const reader = new FileReader();
    reader.onload = function (e) {
      $("#preview").attr("src", e.target.result);
    };
    reader.readAsDataURL(e.target.files[0]);
  });
});
