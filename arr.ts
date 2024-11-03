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

  pop(): string {
    const array = new Array(this.value.length - 1);

    for (let i = 0; i < this.value.length - 1; i++) {
      array[i] = this.value[i];
    }
    const el = this.value[this.value.length - 1];
    this.value = array;
    return el;
  }

  shift(): string {
    const array = new Array(this.value.length - 1);

    for (let i = 0; i < this.value.length - 1; i++) {
      array[i] = this.value[i + 1];
    }
    const el = this.value[0];
    this.value = array;
    return el;
  }
}

const newArray = new Arr();

console.log(newArray.push("coca-cola")); 
console.log(newArray.push("pepsi"));
console.log(newArray.push("sprite"));
console.log(newArray.push("fanta"));
console.log(newArray);
console.log(newArray.pop());
console.log(newArray);
console.log(newArray.shift());
console.log(newArray);

export default Arr;
