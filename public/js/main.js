$('.upgrade-option').click(function(){
  var link = $(this);
  link.next('.upgrade-info').toggleClass('reveal');
});

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

var sandboxorgs = ['CS1','CS2','CS3','CS4','CS5','CS6','CS7','CS8','CS9','CS10','CS11','CS12','CS13','CS14','CS15','CS16','CS17','CS18','CS19','CS20','CS21','CS22','CS23','CS24','CS25','CS26','CS27','CS28','CS30','CS31','CS32','CS33','CS40','CS41','CS42','CS43','CS44','CS45','CS47','CS50','CS51','CS52','CS53','CS54','CS57','CS58','CS59','CS60','CS61','CS62','CS63','CS64','CS65','CS66','CS67','CS68','CS69','CS70','CS71','CS72','CS77','CS78','CS79','CS80','CS81','CS82','CS83','CS84','CS85','CS86','CS87','CS88','CS89','CS90','CS91','CS92','CS93','CS94','CS95','CS96','CS97','CS98','CS99','CS115','CS116'];

$('#the-basics .typeahead').typeahead({
  hint: true,
  highlight: true,
  minLength: 1
},
{
  name: 'sandboxorgs',
  source: substringMatcher(sandboxorgs)
});
