# Data tables

## Rule Identifier

gel-foundations-data-tables

## Rule Description

Tabular data must be presented with a sound semantic and visual structure.

This rule tests that when a data table is included in an HTML page it meets the requirement of the BBC GEL Data table component.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Data tables](https://bbc.github.io/gel/components/data-tables/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

DOM Tree

## Applicability

This rule applies to any HTML page that includes a BBC GEL Data table component.

## Expectations

### Expectation 1

Data tables must have column headers or row headers or both.

### Expectation 2

If a `<table>` element is used, header cells must be `<th>` elements.

### Expectation 3

If a `<table>` element is not used, the container for the tabular data must have `role="table"`.

### Expectation 4

If a `<table>` element is not used, the column header cells for the tabular data must have `role="columnheader"`.

### Expectation 5

If a `<table>` element is not used, the row header cells for the tabular data must have `role="rowheader"`.

### Expectation 6

If a `<table>` element is not used, the container for each row of tabular data must have `role="row"`.

### Expectation 6

If a `<table>` element is not used, the container for each data cell must have `role="cell"`.

### Expectation 7

BBC GEL Data table components must retain their two dimensional visual structure, with column headers horizontally aligned with their associated data cells and row headers vertically aligned with their associated data cells. It is permitted for tabular data to scroll in two dimensions but this must not cause the entire viewport to scroll in two dimensions.

## Test Cases

## Change Log

Last modified: 2020-10-04

## Glossary