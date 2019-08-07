Feature: Promo

  The Promo component is used to advertise BBC content. Principally it is a link to that content, but
  it can include a combination of supporting content to draw the reader's attention. Full details are
  outlined for the GEL Promo pages.

  Scenario: Promo contains a link to other content
    Given a promo with content
    Then the promo content contains an "<a>" element
    And that "<a>" element has an "href" attribute that is not empty

  Scenario: Promo link contains text
    Given a promo that contains a link
    Then the "<a>" element is not empty
    And contains a text node

  # Is this example a possibility? An image of text? Bearing in mind
  # that inline images should not be inside the link element.
  Scenario: Promo link contains only an image
    Given a promo that contains a link
    Then the "<a>" element contains only an "<img>" element
    And that "<img>" element has an "alt" attribute that is not empty

  Scenario: Promo link text resembles target page title or main heading
    Given a promo that contains a link to other content
    And the link contains <text> or <alt-text> or has <aria-label>
    When I activate the link
    Then the target page title or main heading resembles <text> or <alt-text> or <aria-label>

  Scenario: Promo does not contain a heading element
    Given a promo with content
    Then the promo content does contain a text node
    But does not contain a "<h1>", "<h2>", "<h3>", "<h4>", "<h5>" or "<h6>" element

  Scenario: Promo contains large coloured text against a background colour
    Given a promo with text content
    And the text size is 18pt or greater
    When I compare the text colour with the background colour
    Then the contrast ratio is at least 3:1

  Scenario: Promo contains large bold coloured text against a background colour
    Given a promo with bold text content
    And the text size is 14pt or greater
    When I compare the text colour with the background colour
    Then the contrast ratio is at least 3:1

  Scenario: Promo contains small coloured text against a background colour
    Given a promo with text content
    And the text size is less than 18pt
    When I compare the text colour with the background colour
    Then the contrast ratio is at least 4.5:1

  Scenario: Promo contains small bold coloured text against a background colour
    Given a promo with bold text content
    And the text size is less than 14pt
    When I compare the text colour with the background colour
    Then the contrast ratio is at least 4.5:1

  Scenario: Promo contains large coloured text against a background colour plus an image
    Given a promo with text content
    And sufficient contrast with the fallback background colour
    And an image in the background
    When I compare the text colour with each colour in the background image
    Then the contrast ratio is sufficient for the size of the text

  Scenario: Promo contains large coloured text against a background colour plus an opacity layer or gradient
    Given a promo with text content
    And sufficient contrast with the fallback background colour
    And an opacity layer or gradient
    When I put the text colour behind the opacity or gradient
    And I compare the text colour with the most transparent background next to the text
    Then the contrast ratio is sufficient for the size of the text

  Scenario: Promo contains text that is resizable
    Given a promo with text content
    When I check change the default text size in the browser settings/preferences
    Then the promo the changes size accordingly

  # What about images of text being used as a promo?
  # For example, for branding purposes.
  Scenario: Promo with an inline image element
    Given a promo that contains an image
    Then the "img" element is not nested inside the "<a>" element

  Scenario: Promo with an inline image element
    Given a promo that contains an image
    Then the "img" element has an "alt" attribute
    And the "alt" attribute does not match the source file name
    And the "alt" attribute does not include unnecessary words, such as "image of" or "picture of"
    And the "alt" attribute appropriately conveys the editorial purpose in context
    But the "alt" attribute may be empty

  Scenario: Promo with a background image
    Given a promo that has a background image
    Then an additional text alternative is not needed

  Scenario: Promo indicates it links to a different format
    Given a promo that links to something other than another page/screen
    Then the promo indicates it links to an alternative format

  Scenario: Promo links to a page/screen with media content
    Given a promo that links to a page/screen with media content such as a video or game
    Then the promo may indicate the type of media content
    But it does not have to

  Scenario: Promo indicates the format or type of media content it links to
    Given a promo with a format or media indicator
    Then the format or media type is indicated visually
    And programmatically

  Scenario: Promo with a description
    Given a promo with additional text content
    Then the additional text content is not nested inside the "<a>" element

  Scenario: Promo is large enough
    Given a promo with styles applied
    When I measure the height and width of the interactive area displayed
    Then the height is at least 7mm
    And the width is at least 7mm

  Scenario: Promo appears to be interative
    Given a promo with styles applied
    Then the promo has affordances that indicate it is interactive

  Scenario: Promo is able to receive focus
    Given a page/screen with a promo
    When I use the tab key to navigate
    Then I can move focus to the promo

  Scenario: Promo changes appearance on focus
    Given a promo with styles applied
    When I move focus to the promo
    Then the appearance of the promo changes
    And the changes are more than only a text colour change

  Scenario: Promo changes appearance on hover
    Given a promo with styles applied
    When I hover over the promo
    Then the appearnace of the promo changes
    And the changes are more than only a text colour change
    And the mouse cursor appearance also changes
