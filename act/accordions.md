# Accordions

## Rule Identifier

gel-foundations-accordions

## Rule Description

The accordion consists of a number of collapsed sections, each with a button to expand that section's content.

This rule tests that when an accordion is included in an HTML page it meets the requirement of the BBC GEL Accordion component.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Accordions](https://bbc.github.io/gel/components/accordions/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

DOM Tree
CSS Styling

## Applicability

This rule applies to any HTML page that includes a BBC GEL Accordion component.

## Expectations

@NOTE: This assumes we are documenting a valid Accordion, not specifically the [Accordion reference implementation](https://bbc.github.io/gel/components/accordions/#reference-implementation)

### Expectation 1

Each accordion component consist of two or more accordion items; an accordion item is a combination of content that can be expanded and collapsed and the control that allows the content to be expanded and collapsed.

### Expectation 2

Each accordion item has a keyboard, touch, and pointing device accessible control that is used to expand and collapse the accordion item.

### Expectation 3

Accordion item controls are visible in both the expanded and collapsed states of the accordion item.

### Expectation 4

Accrodion item controls have a clear visual style that marks them out as interactive and related to the content that they control when the content is in the expanded state.

### Expectation 5

Each accordion item control has a visual indication of the current expanded / collapsed state of the accodion item.

### Expectation 6

Each accordion item control has content, preferably text, that describes the content that it controls.

### Expectation 7

Each accordion item control has an `aria-expanded` attribute; the value of this attribute is `true` when the accordion item content is expanded and `false` when the accoridion item content is collapsed.

### Expectation 8

When the accordion item control is activated the value of its `aria-expanded` attribute is toggled between `true` and `false`.

### Expectation 9

When the accordion item control is activated keyboard focus must remain on the control.

### Expectation 10

When an accordion item control has an `aria-expanded` attribute value of `true`, its associated content must be visible, accessible to screen readers and other assistive technologies, and accessible to keyboard users.

### Expectation 11

When an accordion item control has an `aria-expanded` attribute value of `false`, its associated content must be invisible, inaccessible to screen readers and other assistive technologies, and inaccessible to keyboard users.

### Expectation 12

Expanded accordion content must immediately follow the accordion item control in the document source order.

## Test Cases

## Change Log

Last modified: 2020-10-04

## Glossary
