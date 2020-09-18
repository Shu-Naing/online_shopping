$(function () {
  $("#checkout").click(function () {
    var cart = [];
    $("#table tbody tr").each(function () {
      var product_name = $(this).find("td:eq(2) input").data('id');
      var qty = $(this).find("td:eq(2) input").val();
      var total_price = $(this).find("td:eq(3)").text().slice(1);
      cart.push(
        JSON.stringify({
          product_name: product_name,
          quantity: qty,
          total_price: total_price,
        })
      );
    });
    var csrf = document.querySelector("input[name=csrfmiddlewaretoken]").value;
    var payment_method = $('input[name="input-group-radio"]:checked').val();
    var host = $("#host").text();
    var data = {
      csrfmiddlewaretoken: csrf,
      "list[]": cart,
      payment_method: payment_method,
    };
    console.log(data);
    if ($("#exist").text() == "") {
      window.location = "//"+ host +"/login/?next=addtocart";
    } else {
      $.post({
        url: "/checkout/",
        type: "POST",
        data: data,
        success: function () {
            window.location = "//"+ host +"/checkout/"+payment_method
        },
      });
    }
  });
});
