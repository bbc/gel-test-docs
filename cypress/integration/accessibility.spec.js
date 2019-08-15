context('Promos', () => {
  beforeEach(() => {
    cy.visit('https://bbc.github.io/gel/components/demos/promos/');

    // To configure the format of the data used by axe. This can be used
    // to add new rules, which must be registered with the library to execute.
    // cy.configureAxe({});

    cy.injectAxe();
  });

  it('Passes accessibility tests', () => {
    // checkA11y() = axe.run(context, options, callback);
    // --------------------------------------------------
    // - options = Set of options passed into rules or checks, temporarily
    //   modifying them. This contrasts with axe.configure, which is more permanent.
    // - context = By default, axe.run will test the entire document. The
    //   context object is an optional parameter that can be used to
    //   specify which element should and which should not be tested.
    cy.checkA11y('.gel-promo', {
      rules: {
        "skip-link": { enabled: false }, // https://dequeuniversity.com/rules/axe/3.3/skip-link
      }
    });
  });
});

