import Gel from '../../gel.js';
import checks from '../../checks.json';

const gel = new Gel(cy);

checks.forEach((check) => {
  const { url, selector, options } = check;

  it(`${selector} passes GEL accessibility tests`, () => {
    gel.check(url, selector, options);
  });
});
