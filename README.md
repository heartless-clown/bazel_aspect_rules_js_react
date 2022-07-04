# create-react-app example repo working with bazel aspect_rules_js

This repo contains two branches:
- ejected (fully working ejected react app)
- non-ejected (hacky solution, we had to make several react-script deps the direct deps of react-app and use not `./bin/react-scripts.js`, but `./scripts/build.js` etc)
also some features not working, but its trivial to use `patch-package` or `react-app-rewired` to fix them (look ejected `package.json` for jest and `config/webpack.config.js` for ibazel)
  - ibazel HMR not working (need to enable polling in webpack config)
  - jest couldn't see test files (need to set haste: enableSymlinks: true in jest config)
