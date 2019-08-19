// gel.js
//

class Gel {
  constructor(cypress, options = {}) {
    this.cy = cypress;
    this.options = options;

    // To configure the format of the data used by axe. This can be used
    // to add new rules, which must be registered with the library to execute.
    // cy.configureAxe({});
  }

  check(url, selector, options) {
    this.cy
      .visit(url)
      .injectAxe()
      .checkA11y(selector, options);
  }
}

export default Gel;
