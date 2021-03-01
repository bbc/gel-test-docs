# Grids

## Rule Identifier

gel-components-grids

## Rule Description

Grids enable consistent and efficient visual layouts.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Grids](https://bbc.github.io/gel/foundations/grids/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

* DOM Tree

## Applicability

This rule applies to any HTML page that includes a BBC GEL Grids.

## Expectations

### Expectation 1

Table elements must not be allowed to wrap and find themselves falling under different headers.

### Expectation 2

Do not use `<table>` elements for non-tabular content.

### Expectation 3

Semantic elments must be nested according to their specification. Content should be validated against the latest HTML version at the time the document is authored.

## Test Cases

## Change Log

Last modified: 2020-11-15

## Glossary
