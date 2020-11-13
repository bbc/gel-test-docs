# Promos

## Rule Identifier

gel-components-promos

## Rule Description

A Promo component is used to advertise BBC content. It contains a headline link to the target content and optionally an image, media indication icon, description, or [metadata strip](https://bbc.github.io/gel/components/metadata-strips).

This rule tests that when a promo is included in an HTML page it meets the requirements of the BBC GEL Promo component.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Promos](https://bbc.github.io/gel/components/promos/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

* DOM Tree

## Applicability

This rule applies to any HTML page that includes a BBC GEL Promos component.

## Expectations

### Expectation 1

Each promo component contains a headline link; the headline link must contain text and the text should resemble that of the target page's `<title>` and `<h1>`.

### Expectation 2

Each promo component contains a headline link; the link must contain text and the text should resemble that of the target page's `<title>` and `<h1>`.

### Expectation 3

If the promo contains an `<img>` element it must either:

* have an `alt` attribute with a null value (`alt=""`) if the image is decorative and provides no additional content
* have an `alt` attribute with a value that describes the image's purpose

### Expectation 4

`<img>` elements used in the promo must not be contained within their own link.

### Expectation 5

No other content other than an optional `<img>` element may appear before the headline link in the source.

### Expectation 6

If a media indication icon is used (implemented with `gel-promo__image` and `gel-promo__indicator` classes), it may come before headline link in the source but must then:

* be hidden from assistive technologies using `aria-hidden="true"`
* have its content repeated as a readable text equivalent in the headline link

### Expectation 7

If a description is used it must appear after the headline link and before the metadata strip in the source.

## Test Cases

## Change Log

Last modified: 2020-10-22

## Glossary
