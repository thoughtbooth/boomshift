//$('document').ready(init);

//function init(){
  
//  var jobid=$("div").data('id')
  
//  $('#1, #2, #3, #4, #5, #6, #7, #8, #9').bind('dragstart', function(event) {
//    event.originalEvent.dataTransfer.setData("text/plain", event.target.getAttribute('id'));
//  });

  // bind the dragover event on the board sections
//  $('#ScheduledYesterday, #ScheduledToday, #ScheduledTomorrow, #ScheduledLater, #Completed, #Paid').bind('dragover', function(event) {
//    event.preventDefault();
//  });

  // bind the drop event on the board sections
//  $('#ScheduledYesterday, #ScheduledToday, #ScheduledTomorrow, #ScheduledLater, #Completed, #Paid').bind('drop', function(event) {
//    var jobcard = event.originalEvent.dataTransfer.getData("text/plain");
//    event.target.appendChild(document.getElementById(jobcard));
    // Turn off the default behaviour
    // without this, FF will try and go to a URL with your id's name
//    event.preventDefault();
//  });
//}

// initialize the tooltips
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})