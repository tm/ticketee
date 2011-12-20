(function() {
  $(function() {
    return $('a#add_another_file').click(function() {
      var url;
      url = "/files/new?number=" + $('#files input').length;
      return $.get(url, function(data) {
        return $('#files').append(data);
      });
    });
  });
}).call(this);
