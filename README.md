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

### Usage
You will need:
- The `url` of a page where your component exists.
- A unique `selector` identifying your component(s) on the page.

#### 1. Add checks
Open `checks.json` and add a check object representing your check to the array. See an example of this below.

```
[
  {
    "url": "https://bbc.github.io/gel/components/demos/accordions/",
    "selector": ".gel-accordion"
  }
]
```

##### With options
To reconfigure your check, you can pass an options object. [See a full list of options](https://www.deque.com/axe/axe-for-web/documentation/api-documentation/#options-parameter).
```
[
  {
    "url": "https://bbc.github.io/gel/components/demos/promos/",
    "selector": ".gel-promo",
    "options": {
      "rules": {
        "skip-link": { "enabled": false }
      }
    }
  }
]
```

#### 2. Run checks

##### `npm test`
To run interactively.

##### `npm run test:headless`
To run headlessly.
