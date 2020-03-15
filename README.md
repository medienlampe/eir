# Eir

_Folding@home statistics - Team #237997_

## About

This is a small, [Eleventy](https://github.com/11ty/eleventy)-based static file generation environment which provides you a way to show the [Folding@home](https://foldingathome.org) statistics for the team #237997 as an easy website.
The data is provided via a simple JSON file.

## Usage

- Fork this repository
- Run `yarn install` to get all dependencies
- make sure you have any-json installed `yarn global add any-json`
- Adjust team id inside `_scripts/getMemberstats.sh`
- Adjust team id and name inside `_scripts/getTeamstats.sh`
- Run both of them (see Hints)
- Run `yarn start` to start the local development environment

### Hints
- The bash scripts might not work on MacOS as they are written for Debian Linux
- Site data can be adjusted in `_data/site.json`
- The output will be exported to the folder `_site`
- You can build your library without running the development environment first with `yarn run build`
- Tests are defined in `eir.test.js` and are available via `yarn test`
