# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  month = [
    "",
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ]
  labels = $('.sales td:nth-child(2)').map ->
    month[Number($(this).text())]
  points = $('.sales td:nth-child(3)').map ->
    Number($(this).text())
    
  data = {
    labels : labels,
    datasets : [
      {
        fillColor : "rgba(151,187,205,0.5)",
        strokeColor : "rgba(151,187,205,1)",
        pointColor : "rgba(151,187,205,1)",
        pointStrokeColor : "#fff",
        data : points
      }
    ]
  }

  myNewChart = new Chart($("#canvas").get(0).getContext("2d")).Line(data)
