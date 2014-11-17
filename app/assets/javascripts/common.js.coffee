$(".admin").click ->
  id = $(this).attr("id").split("-")[1]
  console.log(id)

  $.ajax
    url: "/admin/#{id}"
    type: "POST"
    timeout: 10000
    success: (res) ->
      console.log(res);
