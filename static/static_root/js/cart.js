$(function () {
  $("#addtocart").click(function () {
    var user = $("#user_id").text();
    if (user == "") {
      user = null;
    }
    var span = "#cart_span";
    var qty = "#qty_" + $(this).data("id");
    var csrf = document.querySelector("input[name=csrfmiddlewaretoken]").value;
    var data = {
      csrfmiddlewaretoken: csrf,
      product_id: $(this).data("id"),
      customer: user,
      quantity: $(qty).val(),
    };
    // console.log('make ajax call to add:', );
    $.post({
      url: "/addtocart/",
      type: "POST",
      data: data,
      success: function () {
        if ($(span).text() == "") {
          $(span).text(0);
        }
        no_of_cart = parseInt($(span).text(), 10) + 1;
        $(span).text(no_of_cart);
        alert("Successfully added to cart!");
      },
    });
  });
});
