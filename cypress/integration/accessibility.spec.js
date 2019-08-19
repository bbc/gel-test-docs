import GelCheck from '../../GelCheck.js';
import checks from '../../checks.json';

const gelCheck = new GelCheck(cy);

checks.forEach((check) => {
  const { selector, url, options } = check;

  it(`${selector} passes GEL accessibility tests`, () => {
    gelCheck.component(selector, url, options);
  });
});
