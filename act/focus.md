# Focus

## Rule Identifier

gel-components-focus

## Rule Description

Ensuring that all interactive elements are focusable and that it is clear which element currently has focus is critical for keyboard accessibility.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Focus](https://bbc.github.io/gel/foundations/focus/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

* DOM Tree

## Applicability

This rule applies to any HTML page that includes focusable elements.

## Expectations

### Expectation 1

Focus styles must be visible under all circumstances.

### Expectation 2

Focus must not be trapped on a focusable element; it must be possible to move focus away from a focussed element.

### Expectation 3

Only interactive elements should be focusable by keyboard.

### Expectation 4

Interactive elements must be focusable by a keyboard.

### Expectation 5

Interactive elements must be activable using a keyboard

## Test Cases

## Change Log

Last modified: 2020-11-22

## Glossary
