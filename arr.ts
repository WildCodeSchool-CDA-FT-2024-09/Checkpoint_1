class Arr {
  value: string[] = [];
  static pop: any;

  push(el: string): number {
    const array = new Array(this.value.length + 1);

    for (let i = 0; i < this.value.length; i++) {
      array[i] = this.value[i];
    }
    array[this.value.length] = el;
    this.value = array;
    return this.value.length;
  }

  // pop()
  pop(): string {
    const result = this.value[this.value.length - 1]
    const array = new Array(this.value.length - 1);
    for (let i = 0; i < this.value.length - 1; i++) {
      array[i] = this.value[i];
    }
    this.value = array;
    return result;
  }

  // shift().
  shift(): string {
    const result = this.value[0]
    const array = new Array(this.value.length - 1);
    for (let i = 1; i < this.value.length; i++) {
      array[i - 1] = this.value[i];
    }
    this.value = array;
    return result;
  }

}


let test = new Arr;
test.push('a');
test.push('b');
test.push('c');
console.log('%c⧭', 'color: #00e600', test);
console.log('%c⧭', 'color: #00e600', test.shift());
console.log('%c⧭', 'color: #00e600', test);

export default Arr;
