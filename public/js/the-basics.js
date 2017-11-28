var sandboxorgs = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.whitespace,
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  // url points to a json file that contains an array of country names, see
  // https://github.com/twitter/typeahead.js/blob/gh-pages/data/countries.json
  prefetch: '/sf-sb-winter-18.json'
});
  
$('#custom-templates .typeahead').typeahead(null, {
  name: 'Org Instances',
  display: 'org_id',
  source: sandboxorgs,
  templates: {
    empty: [
      '<div class="empty-message">',
        'unable to find any org instances that match the current query',
      '</div>'
    ].join('\n'),
    suggestion: Handlebars.compile('<div><strong>{{org_id}}</strong> – {{org_type}}</div>')
  }
});
