Package.describe({
  name: 'yogiben:data-binding',
  summary: 'Databinding schema for setting Session key pairs',
  version: '0.0.0',
  git: 'https://github.com/yogiben/meteor-data-binding '
});


Package.onUse(function(api) {
  api.versionsFrom('1.0.2.1');

  api.use(['coffeescript','jquery','underscore'],'client');

  api.addFiles('lib/client/data-binding.coffee','client');
});
