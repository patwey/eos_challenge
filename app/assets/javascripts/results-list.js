function ResultsList() {
  this.$resultsList = $('#resultsList');
}

ResultsList.prototype = {
  display: function(result) {
    var result = this.createResult(result);
    this.$resultsList.html(result);
  },
  createResult: function(result) {
    return "<p>" + result.sum + "</p>"
  }
}
