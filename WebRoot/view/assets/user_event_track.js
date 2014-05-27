(function() {
  function patchArray(arr) {
    arr = arr || [];

    var img = document.createElement('img');
    document.getElementsByTagName('body')[0].appendChild(img);

    arr._pushUrl = '';

    arr._set = {
      'set_push_url': function(url) {
        this._pushUrl = url;
      }
    };

    arr._sendData = function() {
      while (this.length) {
        var elem = this.shift();
        if (arr._set[elem[0]]) {
          arr._set[elem[0]].apply(this, elem.slice(1));
          continue;
        }
        var t = new Date();
        var full_url = this._pushUrl + '?_=' + t.getTime() + '&session_id=' + elem[0] + '&event_type=' + elem[1] + '&content=' + elem[2];
        img.src = full_url;
        img.style.display = "none";
      }
    };


    arr._sendData();
    arr.push = function() {
      Array.prototype.push.apply(arr, arguments);
      this._sendData();
    };

    return arr;
  }

  window._ueaq = patchArray(window._ueaq);
})();
