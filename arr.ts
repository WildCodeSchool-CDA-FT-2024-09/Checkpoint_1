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

  pop(): string | undefined {
    if (this.value.length === 0) {
      console.error("No elements to pop");
      return undefined;
    }
    const array = new Array(this.value.length - 1);

    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i];
    }
    const popped = this.value[this.value.length - 1];
    this.value = array;
    return popped;
  }

  shift(): string | undefined {
    if (this.value.length === 0) {
      console.error("No elements to shift");
      return undefined;
    }
    const shifted = this.value[0];
    const array = new Array(this.value.length - 1);

    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i];
    }

    this.value = array;
    return shifted;
  }
}

const arr = new Arr();
console.log("Initial:", arr.value);

arr.push("a");
arr.push("b");
arr.push("c");
arr.push("d");
arr.push("e");
console.log("Après push:", arr.value);

const popped = arr.pop();
console.log("Après pop:", arr.value);
console.log("Élément retiré:", popped);

const shifted = arr.shift();
console.log("Après shifted:", arr.value);
console.log("Élément retiré:", shifted);

export default Arr;
