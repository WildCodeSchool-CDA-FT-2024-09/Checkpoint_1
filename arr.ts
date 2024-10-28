class Arr {
  value: string[] = [];
  length: number = 0;

  push(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    array[this.value.length] = el;
    this.value = array;
    return this.value.length;
  }

  apop() {
    let longueur = 0;
    for (let i: number = 0; i < this.value.length - 1; i++) {
      {
        longueur++;
      }
    }

    const result = new Array(longueur);
    for (let i: number = 0; i < this.value.length - 1; i++) {
      result[i] = this.value[i];
    }

    return result;
  }

  ashift() {
    let longueur = 0;
    for (let i: number = 0; i < this.value.length - 1; i++) {
      {
        longueur++;
      }
    }
    console.log(longueur);

    const result = new Array(longueur);
    console.log("avant boucle", result);

    for (let i: number = 1; i < this.value.length; i++) {
      result[i - 1] = this.value[i];
      console.log(longueur);
      console.log("boucle", result);
    }

    return result;
  }
}

const arr = new Arr();
arr.push("1");
arr.push("2");
arr.push("3");
arr.push("4");

console.log(arr);
console.log(arr.length);
const Aarr = arr.apop();
console.log(Aarr);
const Sarr = arr.ashift();
console.log(Sarr);
export default Arr;
