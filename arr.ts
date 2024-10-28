class Arr {
  value: string[] = [];

  push(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    array[this.value.length] = el;
    this.value = array;
    return this.value.length;
  }

  popFab() {
    if (this.value.length === 0) return undefined;
    const lastElement = this.value[this.value.length - 1];

    this.value.length = this.value.length - 1;

    return lastElement;
  }
}

export default Arr;

const myArr = new Arr();
myArr.push("zen");
myArr.push("noisette");
myArr.push("suki");
myArr.push("pedro");
myArr.push("louloutte");
console.log(myArr);

const popRes = myArr.popFab();
console.log(popRes);
console.log(myArr);
