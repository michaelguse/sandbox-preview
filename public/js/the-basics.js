var substringMatcher = function(strs) {
    return function findMatches(q, cb) {
      var matches, substringRegex;
  
      // an array that will be populated with substring matches
      matches = [];
  
      // regex used to determine if a string contains the substring `q`
      substrRegex = new RegExp(q, 'i');
  
      // iterate through the pool of strings and for any string that
      // contains the substring `q`, add it to the `matches` array
      $.each(strs, function(i, str) {
        if (substrRegex.test(str)) {
          matches.push(str);
        }
      });
  
      cb(matches);
    };
  };
  
  var states = ['CS81','CS82','CS83','CS84','CS85','CS86','CS87','CS88','CS89'];
  
  $('#the-basics .typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1,
  },
  {
    name: 'states',
    source: substringMatcher(states),
  });
