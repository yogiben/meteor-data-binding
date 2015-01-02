Package.describe({
  name: 'yogiben:data-binding',
  summary: ' /* Fill me in! */ ',
  version: '1.0.0',
  git: ' /* Fill me in! */ '
});


Package.onUse(function(api) {
  api.versionsFrom('1.0.2.1');

  api.use(['coffeescript','jquery','underscore'],'client');

  api.addFiles('lib/client/data-binding.coffee','client');
});
