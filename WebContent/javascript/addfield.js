$('#noofstudies').change(function() {
    var noofstudies = $( "#noofstudies" ).val();
    for (var i = 1; i <= noofstudies; i++) {
            $(".study").append("<label>Study #" + i +"</label>");
            $(".study").append("<input class='form-control' placeholder='Enter your comments' type='text'/>");
        }
});
