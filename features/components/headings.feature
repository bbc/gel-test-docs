Feature: Headings

  In order to ensure that headings implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the pages within a project for heading structure

  Rule: heading elements must contain accessible text content
    Example: Headings must not be empty, and therefore must contain text content
      Given a page with heading elements
      Then heading elements must contain accessible text content

  Rule: Pages must have an h1 element
    Example: All pages must have an h1 element
      Given a page
      Then there is an h1 element in the page

  Rule: Pages must have only one h1 element
    Example: All pages must have only one h1 element
      Given a page
      Then there is exactly one h1 element in the page

  Rule: h1 text must relate to page title
    Example: The text of the h1 element must be or must contain the text of the page <title>
      Given a page
      And the page has a title element
      And the page has an h1 element
      Then the content of the title element must contain the content of the h1 element

  Rule: h1 text must be unique amongst other headings
    Example: The text of the h1 element must not be repeated in other headings
      Given a page
      And the page has an h1 element
      And the page has other heading elements
      Then the content of the other heading elements must not be the same as the h1 element

  Rule: h1 text must be the first content inside the main element
    Example: The h1 element must be the first content of the main section of the page
      Given a page
      And the page has an h1 element
      And the page has a main element
      Then the h1 element must be the first semantic element inside the main element

  # Figure out how best to express this - this is terrible at the moment!
  Rule: Subheading levels must match the content outline
    Example: Subheadings should relate to the structure of the content
      Given a page
      And the page has subheading elements
      Then levels of the subheading elements must match the content outline

  Rule: Heading levels must not be be skipped
    Example: Subheadings should be no more than one level higher than the previous subheading
      Given a page
      And the page has subheading elements
      Then levels of each subheading must be no more than 1 level higher than the previous heading element

  Rule: Headings must be followed by content
    Example: A heading must not be followed by another heading of the same level
      Given a page
      And the page has heading elements
      Then each heading must be followed by content or a heading of 1 level higher than the previous heading