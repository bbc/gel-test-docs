# Iconongraphy

## Rule Identifier

gel-components-iconography

## Rule Description

Iconography can be used to aid communication in support of text content.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Iconography](https://bbc.github.io/gel/foundations/iconography/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

* DOM Tree

## Applicability

This rule applies to any HTML page that includes a BBC GEL Iconography.

## Expectations

### Expectation 1

SVG icons must take the `focusable="false"` attribution to remove them from focus order in some versions of IE and Edge.

### Expectation 2

There must be sufficient contrast of 3:1 between foreground icon colour and backgrounds, in line with [WCAG 2.1 1.4.11 Non-text Contrast](https://www.w3.org/TR/WCAG21/#non-text-contrast).

### Expectation 3

States indicated using changes in icon styles must not be differented by colour alone. Additional visible changes must be applied, such as a change in icon shape, orientation, or position, the addition of a border, or the addition of an underline or border.

## Test Cases

## Change Log

Last modified: 2020-11-15

## Glossary
