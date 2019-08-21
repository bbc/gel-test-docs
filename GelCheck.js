// GelCheck.js
//

class GelCheck {
  constructor(cypress, rules, userOptions = {}) {
    if (!cypress.injectAxe) throw new Error('Invalid Cypress instance. Please instantiate GelCheck correctly.');

    this.cy = cypress;
    this.rules = rules;
    this.options = Object.assign({
      branding: {
        brand: String,
        application: String
      },
      reporter: 'option',
      checks: [Object],
      rules: [Object],
      locale: Object
    }, userOptions);
  }

  component(type, url, selector) {
    if (!type) throw new Error('GEL component `type` required.');
    if (!selector) throw new Error('Could not select component. Please define a selector.');

    const rules = this.rules.component[type];

    this.cy.visit(url);
    this.cy.injectAxe();
    this.cy.configureAxe(this.options);
    this.cy.checkA11y(selector, { rules });
  }
}

export default GelCheck;
