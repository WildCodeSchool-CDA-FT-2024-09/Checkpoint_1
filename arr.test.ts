import Arr from './arr'; // Assurez-vous d'importer correctement votre classe Arr

describe('Arr class methods', () => {
  let myArr: Arr;

  beforeEach(() => {
    myArr = new Arr();
    myArr.push('one');
    myArr.push('two');
    myArr.push('three');
  });

  test('poping() should remove the last element and return it', () => {
    expect(myArr.poping()).toBe('three'); // Vérifie que le dernier élément est retiré
    expect(myArr.value).toEqual(['one', 'two']); // Vérifie l'état du tableau
  });

  test('shifting() should remove the first element and return it', () => {
    expect(myArr.shifting()).toBe('one'); // Vérifie que le premier élément est retiré
    expect(myArr.value).toEqual(['two', 'three']); // Vérifie l'état du tableau
  });

  test('poping() should return undefined when the array is empty', () => {
    myArr.poping(); // Retire 'three'
    myArr.poping(); // Retire 'two'
    myArr.poping(); // Retire 'one'
    expect(myArr.poping()).toBeUndefined(); // Vérifie que poping() retourne undefined
  });

  test('shifting() should return undefined when the array is empty', () => {
    myArr.shifting(); // Retire 'one'
    myArr.shifting(); // Retire 'two'
    myArr.shifting(); // Retire 'three'
    expect(myArr.shifting()).toBeUndefined(); // Vérifie que shifting() retourne undefined
  });
});
