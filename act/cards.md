# Cards

## Rule Identifier

gel-components-cards

## Rule Description

Cards are used to preview and share content, and can include text, images, video, social media sharing options.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Cards](https://bbc.github.io/gel/components/cards/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

* DOM Tree

## Applicability

This rule applies to any HTML page that includes a BBC GEL Cards component.

## Expectations

### Expectation 1

Cards that are presented as a set, i.e. there are multiple cards together, they must be marked up as unordered list (`<ul>`) with each card marked up as a list item (`<li>`).

### Expectation 2

Each card must have a headline and the headline must be marked up as a heading element (`<h2>`, `<h3>`, `<h4>`, etc.).

### Expectation 3

The headline for a card must be the first text content (including alternative text for media elements) within a card's source order.

### Expectation 4

All headlines within a set of cards must be marked up with the same heading level.

### Expectation 5

A set of cards must be preceded by a heading describing the collection of the cards. The heading level must be one higher than the heading level of the headlines within the cards.

### Expectation 6

When an image is the focus of the card, it should be considered salient content and must include sufficient alternative text

## Test Cases

## Change Log

Last modified: 2020-11-14

## Glossary
