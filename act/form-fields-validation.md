# Form fields and validation

## Rule Identifier

gel-components-form-fields-validation

## Rule Description

Form fields must be accessible and usable, helping the user to provide valid input.

This rule tests that when form fields that take user input are included in an HTML page it meets the requirements of the BBC GEL Form fields and validation component.

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

* DOM Tree
* CSS Styling

## Applicability

This rule applies to any HTML page that includes form fields that take user input.

## Expectations

### Expectation 1

All form fields that take user input or display content must have an accessible name.

### Expectation 2

All form fields that take user input must have a visible label; this label must be visible in all states, and therefore the `placeholder` attribute is not suitable for displaying a text label.

### Expectation 3

Additional descriptions, for example the format expected for form field input, must be programmatically associated with the form field and should be visible at all times.

### Expectation 4

A field element in an invalid state should have `aria-invalid="true"`, and `aria-invalid="false"` once the invalidity is corrected. Do not apply an `aria-invalid` attribute until the field has been interacted with; a field should not have this attribute at page load;

### Expectation 5

Error messages must be programmatically associated with the form field in error.

### Expectation 6

Error messages must be removed as they are corrected.

### Expectation 7

If a description is used it must appear after the headline link and before the metadata strip in the source.

## Test Cases

## Change Log

Last modified: 2020-10-25

## Glossary