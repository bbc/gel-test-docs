import GelCheck from '../../GelCheck.js';
import rules from '../../rules.js';

import checks from '../../checks.json';

const gelCheck = new GelCheck(cy, rules);

checks.forEach((check) => {
  const { type, url, selector } = check;

  it(`${selector} passes GEL Check tests`, () => {
    gelCheck.component(type, url, selector);
  });
});
