$(document).ready(function(){
  console.log("jQuery is running")

  var weight = parseFloat($("#weight").val())
  console.log("weight", weight)
  var envelope = parseFloat($("#envelope").val())
  console.log("envelope", envelope)
  var paper = parseFloat($("#paper").val())
  console.log("paper", paper)
  var total = weight + envelope + paper
  $("#total").val(total.toFixed(2))

  $("#weight, #envelope, #paper").on("focusout", function() {
    weight = parseFloat($("#weight").val())
    envelope = parseFloat($("#envelope").val())
    paper = parseFloat($("#paper").val())
    total = weight + envelope + paper
    console.log("keypress")
    console.log("total", total)
    $("#total").val(total.toFixed(2))
  });

  var preview = false;
  var itemDetails = $("#item-details").val();

  $("#view-button").on("click", function(){
    console.log("preview", preview)
    if (preview){
      $("#item-contents").html("<textarea id='item-details' >" + itemDetails + "</textarea>")
      preview = !preview
    }
    else{
      itemDetails = $("#item-details").val();
      $("#item-contents").html(itemDetails)
      preview = !preview

    }

  })


})
