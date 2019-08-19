import Gel from '../../gel.js';

const gel = new Gel(cy);

context('Promos', () => {
  it('Passes accessibility tests', () => {
    gel.check('https://bbc.github.io/gel/components/demos/promos/', '.gel-promo', {
      rules: {
        "skip-link": { enabled: false }, // https://dequeuniversity.com/rules/axe/3.3/skip-link
      }
    });
  });
});
