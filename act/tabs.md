# Tabs

## Rule Identifier

gel-components-tabs

## Rule Description

Tabs consist of a number of sections (refered to as panels), only one of which is visible at a time, with a group of controls (refered to as tabs) preceeding the panels that control which one is visible.

This rule tests that when tabs are included in an HTML page they meet the requirement of the BBC GEL Tab component.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Tabs](https://bbc.github.io/gel/components/tabs/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

* DOM Tree
* CSS Styling

## Applicability

This rule applies to any HTML page that includes a BBC GEL Tabs component.

## Expectations

### Expectation 1

Each tab component consist of two or more panels of content, only one of which is visible at a time.

### Expectation 2

Each tab component has a set of tabs — each one relating to a panel in a one to one mappping — which is a keyboard, touch, and pointing device accessible control that is used to select the currently visible panel.

### Expectation 3

The tab controls have a clear visual style that marks them out as interactive and related to the panel that they control when the panel is in the visible state.

### Expectation 4

Each tab control has a visual indication of the current state of the panel, i.e. visible or hidden.

### Expectation 5

Each tab control has content, preferably text, that describes the content of the panel that it controls.

### Expectation 6

All tab controls are grouped together and contained with an element that has a `role` attribute with value of `tablist`.

### Expectation 7

Each tab control has a `role` attribute with a value of `tab`.

### Expectation 8

Each tab control has an `aria-selected` attribute; the value of this attribute is `true` when the panel content is visible and `false` when the panel content is hidden.

### Expectation 9

When the tab control is activated the value of its `aria-selected` attribute is toggled between `true` and `false`.

### Expectation 10

When the tab control is activated keyboard focus must be moved to the associated panel. Note that the panel should be programmatically focusable (by applying `tabindex="-1"`) but should not be keyboard focusable.

### Expectation 11

When an tab control has an `aria-selected` attribute value of `true`, its associated panel must be visible, accessible to screen readers and other assistive technologies, and accessible to keyboard users.

### Expectation 12

When an tab control has an `aria-selected` attribute value of `false`, its associated panel must be invisible, inaccessible to screen readers and other assistive technologies, and inaccessible to keyboard users.

### Expectation 13

Each panel has a `role` attribute with a value of `tabpanel`.

### Expectation 14

Each panel has an `aria-labelledby` attribute with a value that matches the `id` attribute of the associated tab control.

### Expectation 15

Expanded panel content must immediately follow the set of tab controls in the document source order.

## Test Cases

## Change Log

Last modified: 2020-10-20

## Glossary
