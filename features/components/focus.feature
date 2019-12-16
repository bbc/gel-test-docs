Feature: Focus

  To ensure that focus order implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the pages within a project for focus order

  Rule: focus order should follow content order
    Example: In left-to-right languages, focus order should move from top left to bottom right
      Given a page with focusable elements
      Then the focus order of focusable elements must match the content order of the page

  Rule: postive tabindex values must not be used
    Example: elements that have tabindex values must use only values of 0 or less
      Given a page with focusable elements
      And the focusable elements have tabindex attributes
      Then the value of all tabindex attributes must be less than or equal to 0