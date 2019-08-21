# GEL Check (Work in Progress)

A light wrapper around Cypress and Axe to check your implementation of a [GEL Design Pattern](https://www.bbc.co.uk/gel/guidelines/category/design-patterns).

## Getting started
You will need:
- Git
- Node.js
- NPM

### Install
```
git clone https://github.com/bbc/gel-check.git
cd gel-check
npm install
```

## Usage
You will need:
- Your GEL component's `type`. [See the table](https://bbc.github.io/gel/).
- The `url` of a page where your component exists. See tip below.
- A unique `selector` identifying your component(s) on the page.

### 1. Add checks
Open `checks.json` and add a check object to the array. See an example of this below.

```
[
  {
    "type": "accordion",
    "url": "https://bbc.github.io/gel/components/demos/accordions/",
    "selector": ".gel-accordion"
  }
]
```

#### Tip
If your component isn't currently hosted, pop it into the `public` directory and it will be hosted for you locally. You can then refer to from `/` in `url`.

### 2. Run checks

#### `npm test`
To run interactively.

#### `npm run test:headless`
To run headlessly.

## Contributing
We love contributors. If you have an idea for how to make an improvement, let us know by [creating an issue](https://github.com/bbc/gel-check/issues) to discuss your idea. We recommend you familiarise yourself with [the process of creating a pull-request in GitHub](https://help.github.com/en/articles/creating-a-pull-request) before proceeding.
