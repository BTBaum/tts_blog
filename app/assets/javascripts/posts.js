
(function ($){
  $(function (){
    function loadPosts(){
      var url = $("#posts").data("url");
      $.getScript(url);
    }

    loadPosts();

    $(document).on("click", ".publish-post", function (e){
  e.preventDefault();

  $.ajax({
    url: $(this).attr("href"),
    method: "PUT",
    data: {
      post: { published: $(this).data("published") }
    }
  }).done(function (){
    loadPosts();
  });
});

  });
})(jQuery);