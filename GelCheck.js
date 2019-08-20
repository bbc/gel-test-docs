// GelCheck.js
//

class GelCheck {
  constructor(cypress, userOptions = {}) {
    this.cy = cypress;
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

  component(selector, url, options = {}) {
    if (!selector) throw new Error('Could not select a component - `selector` undefined.');

    this.cy.visit(url);
    this.cy.injectAxe();
    this.cy.configureAxe(this.options);
    this.cy.checkA11y(selector, options);
  }
}

export default GelCheck;