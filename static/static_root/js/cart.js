$(function()
{
    $('#addtocart').click(function()
	{
        var user = $('#user_id').text()
        if (user == ""){
            user = null;
        }
        var qty = '#qty_'+$(this).data('id');
        var csrf = document.querySelector('input[name=csrfmiddlewaretoken]').value;
        var data = {csrfmiddlewaretoken: csrf, product_id: $(this).data('id'), customer: user, quantity: $(qty).val()};
		// console.log('make ajax call to add:', data);
		$.post({
            url:'/addtocart/', 
            type: 'POST',
            data: data, 
            success: function(){
                alert("Successfully added to cart!")
            },
          });
	});
})
