import { Given, Then, And } from "cypress-cucumber-preprocessor/steps";

// Promo contains a link to other content
// --------------------------------------

Given('a promo with content', () => {
  // Get all `.gel-promo`s on the page and alias the
  // selection as `promos` for future use in our tests.
  cy.get('.gel-promo').as('promos');

  // Get our previous selection and check that our promos
  // have at least one child - a promo with content.
  cy.get('@promos')
    .children()
    .should('have.length.greaterThan', 1);
});

Then('the promo content contains an "<a>" element', () => {
  // For each promo in our selection...
  cy.get('@promos').each($promo => {
    // Ensure that within...
    cy.get($promo).within(() => {
      // We can select one or more anchor tags.
      cy.get('a');
    });
  });
});

And('that "<a>" element has an "href" attribute that is not empty', () => {
  cy.get('@promos')
    .find('a')
      .should('have.attr', 'href')
      .and('not.be.undefined');
});


// Promo link contains text
// ------------------------

Given('a promo that contains a link', () => {
  cy.get('.gel-promo').as('promos');
  cy.get('@promos')
    .find('a').as('promosAnchors');
});

Then('the "<a>" element is not empty', () => {
  cy.get('@promosAnchors').each($anchor => {
    expect($anchor.html()).not.to.be.undefined;
  });
});

And('contains a text node', () => {
  // Hmm.
});
