# Form fields and validation

## Rule Identifier

gel-foundations-form-fields-and-validation

## Rule Description

Form fields must be accessible and usable, helping the user to provide valid input.

This rule tests that when a form is included in an HTML page, with or without validation, it meets the requirement of the BBC GEL Form fields and validation component.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Form fields and validation](https://bbc.github.io/gel/components/form-fields/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

DOM Tree
CSS Styling

## Applicability

This rule applies to any HTML page that includes a BBC GEL Form fields and validation component.

## Expectations

### Expectation 1

All form fields that take user input, even if currently disabled, must have one associated `<label>` element.

### Expectation 2

`<label>` elements must contain content that describes the purpose of the form field it is associated with.

### Expectation 3

`<label>` elements must be visible unless there is an alterantive visual way to determine the purpose of the form field it is associated with.

### Expectation 4

The `<label>` element for a form field must either:

- contain the form field
- have a `for` attribute with a value that exactly matches the `id` attribute of the form field.

### Expectation 5

Required form fields must have `aria-required="true"` attributes.

@NOTE: the Required fields section and the Recommended behaviour Initial state sections disagree on this.

### Expectation 6

Form fields in an error state must have `aria-invalid="true"` attributes.

### Expectation 7

`aria-inval="true"` attributes must be removed from a form field or have the value changed to `false` when errors in the form field content are corrected.

### Expectation 8

All content, including instructions and error messages, within a form that follows the first form field element but is not part of a `<label>` or `<legend>` element must be associated with one or more form fields with an `aria-describedby` attribute; the attribute is added to the form field(s) and has a value that exactly matches the `id` attirbute on the container element for the content.

## Assumptions

## Accessibility Support

## Test Cases

## Change Log

Last modified: 2020-10-04

## Glossary