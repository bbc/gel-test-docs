import { Given, Then, And } from "cypress-cucumber-preprocessor/steps";

// Promo selector.
const promo = '';

Given('a promo with content', () => {
  // Check promo has content.
});

Then('the promo content contains an "<a>" element', () => {
  // Check content contains and <a>
});

And('that "<a>" element has an "href" attribute that is not empty', () => {
  // Check <a> has the appropriate attribute.
});
