# Headings

## Rule Identifier

gel-foundations-headings

## Rule Description

This rule tests that a page has a logical heading structure.

## Rule Type

atomic

## Accessibility Requirements Mapping

- [BBC GEL Headings](https://bbc.github.io/gel/foundations/headings/)
  - Required for conformance to BBC GEL
  - Outcome mapping:
    - Any failed outcomes: success criterion is not satisfied
    - All passed outcomes: success criterion needs further testing
    - An inapplicable outcome: success criterion needs further testing

## Input Aspects

DOM Tree

## Applicability

This rule applies to any HTML page with a heading structure.

## Expectations

### Expectation 1

Each document has one `<h1>` element that has content that is unique to the current document and is a subset of the document's `<title>` element content, and is the first semantic element within the document's `<main>` element (if one exists).

### Expectation 2

Subheadings must be the first element with content within the section they introduce, and the content of subheadings must describe the section they introduce.

### Expectation 3

Content that serves the purpose of heading within the visual document hierarchy must be marked up as an HTML heading (`<h1>` - `<h6>`). No other content should be marked up as a heading.

### Expectation 4

Subheading levels must be chosen based on their belonging within the document structure and not based on their appearance. In practice, this means that subheading levels must be either greater or equal to any previous subheading's level or one level higher.

### Expectation 5

Headings must be followed either by non-heading content or a subheading of one level higher.

## Assumptions

There are currently no assumptions.

## Accessibility Support

There are no major accessibility support issues known for this rule.

## Test Cases

### Passed

#### Passed Example 1

The document has one `<h1>` element, it is the first element with content inside the `<main>` element, and it has content that is a subset of the document's `<title>` element's content.

```
<title>Search results for "Chuggingtion": CBeebies - BBC</title>

...
<main>
  <div>
    <h1>Search results for "Chuggington"</h1>
  </div>
</main>
```

#### Passed Example 2

The `<h2>` subheading is followed by an `<h3>` subheading and content associated with the `<h3>` subheading follows it.

```
<section>
  <h2>Top stories</h2>
  <section>
    <h3>
      <span class="breaking">Breaking:</span>
      Bid to get Labour to change Brexit stance
    </h3>
  </section>
</section>
```

### Failed

#### Failed Example 1

The document has multiple `<h1>` elements, neither of which is the first element with content inside the `<main>` element, and neither have content that is a subset of the document's `<title>` element's content.

```
<title>CBeebies - BBC</title>

...
<main>
  <p>Cbeebies</p>
  <div>
    <h1>Search results</h1>
    <h1>"Chuggington"</h1>
  </div>
</main>
```

#### Failed Example 2

The `<h2>` subheading is followed by an `<h4>` subheading, skipping a level. Content associated with the `<h4>` subheading precedes it.

```
<section>
  <h2>Top stories</h2>
  <section>
    <div class="alert">Breaking:</div>
    <h4>Bid to get Labour to change Brexit stance</h4>
  </section>
</section>
```

## Change Log

Last modified: 2020-08-28

## Glossary

