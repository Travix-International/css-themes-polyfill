# DEPRECATED - Please refer to https://github.com/Travix-International/ui/tree/master/packages/css-themes-polyfill
# CSS variables for themes polyfill

**Warning:** It is not a full featured polyfill for CSS variables. It is just cover the case of flat variables (no nesting) for Travix.

Moreover, the name of global object with map for CSS variables is hardcoded.

## How to install
- `npm i travix-css-themes-polyfill -S` install as a dependency

**or** use it via CDN

- `<script src="path-to-CDN-goes-here"></script>`

## How it works
**Requirement:** The polyfill expect to have global object with a name `TravixTheme` with values for variables.

The script will check all `<link>` tags with data attribute `data-cssvars` and will process them with CSS variables mapping.

It also add an event listener for `DOMSubtreeModified` and when new style tag added it will map its content as well.

There is a global function `cssThemeService` which you can use when you need to map CSS variables with Travix theme.

## Usage
Add it to your main bundle before any dynamically styles tags added.

Preferably add this code only for target platforms: IE11, Edge 14 and Android 4.x

## Development

#### Testing

- `npm run test` to run unit test
- `npm run lint` to check ES-lint errors

#### Requirements
Since there is no transpiling step your code must be compatible with IE11

#### Publishing
To publish this package run `Makefile`
