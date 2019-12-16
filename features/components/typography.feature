Feature: Typography

  In order to ensure that typography implementations meet the GEL standards
  As an evaluator for GEL compliance
  I want to test the pages within a project for text styles

  # Add support for RTL and other languages directions

  # Must use Reith
  Rule: Font

  Rule: Font sizes must not be set in pixels
    Example: Font sizes must be set in a relative unit such as ems and rems
      Given a page with text
      Then the size of all text must not be set in pixels

  Rule: Pinch zoom must not be disabled
    Example: It must be possible to use pinch zoom to resize content by touch on touchscreen devices
      Given a page with content
      Then pinch zoom must not be disabled with user-scalable=no in a viewport metatag
      And pinch zoom must not be disabled with scripting

  Rule: Text must be aligned left
      Example: Text must be aligned left and not justified, centered, or aligned right
        Given a page with text
        Then text must be aligned left

  Rule: Line lengths must not exceed 80 characters
      Example: Lines of text must contain 80 characters or fewer
        Given a page with text
        Then each line of text must not exceed 80 characters

  Rule: Line lengths should not exceed 70 characters
      Example: Lines of text should contain 70 characters or fewer
        Given a page with text
        Then each line of text should not exceed 70 characters

  Rule: Line heights
  # Discuss specific values for Reith versus other fonts
  # Discuss must versus should and possible ranges of values

  Rule: All caps
  # Discuss must versus should and possible ranges of values for letter spacing

  # Figure out how to describe "standard content"; not all body copy will be part of a paragraph,
  # but we don't want to orphan this content while avouding clearly styled navigation blocks or CTAs
  Rule: Text links that are part of standard content must have an underline
    Example: A link within a paragraph of text must have an underline
      Given a page with text links within the standard content
      Then every text link within the standard content must have an underline

  # What about <abbr> (or old school <acronym>) with title attributes?
  Rule: Text that is not part of a link must not have an underline
    Example: Non-link content must not be underlined
      Given a page with text
      Then text that is not part of a link must not have an underline

  Rule: Text must have sufficient contrast against its background
    Example: Text must have a minimum contrast of 3:1 against its background
      Given a page with text
      Then all text must have a minimum contrast of 3:1 against its background

  Rule: Text smaller than 24px regular weight must have sufficient contrast against its background
    Example: Regular sized text must have a minimum contrast of 4.5:1 against its background
      Given a page with text
      And text is smaller than 24px regular weight
      Then that text must have a minimum contrast of 4.5:1 against its background

  Rule: Text smaller than 18.5px bold weight must have sufficient contrast against its background
    Example: Regular sized bold text must have a minimum contrast of 3:1 against its background
      Given a page with text
      And text is smaller than 18.5px bold weight
      Then that text must have a minimum contrast of 4.5:1 against its background

  Rule: Text should not be overlayed against complex backgrounds
    Example: To reduce problems with legibility, text should not be overlayed against an image
      Given a page with text
      Then text should have a solid background color
      And text should not have an image or complex pattern as a backgrounddis