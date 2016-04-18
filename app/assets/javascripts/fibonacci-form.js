function FibonacciForm() {
  this.$strInput = $('#strInput');
  this.$submitBtn = $('#submitBtn');
  this.url = '/api/v1/results/'
}

FibonacciForm.prototype = {
  handleSubmit: function() {
    this.$submitBtn.on('click', this.onSubmit.bind(this))
  },
  onSubmit: function() {
    var str = this.$strInput.val()
    $.ajax({
      url: this.url + str,
      dataType: 'json',
      success: function(result) {
        var resultsList = new ResultsList
        resultsList.display(result);
      }
    });
  },
}
