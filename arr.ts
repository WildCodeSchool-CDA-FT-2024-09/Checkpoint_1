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
    this.value = array;
    return this.value[this.value.length - 1];
  }

  shift(): string {
    const array = new Array(this.value.length - 1);

    for (let i = 1; i < this.value.length; i++) {
      array[i - 1] = this.value[i];
    }
    const removed_element = this.value[0];
    this.value = array;
    return removed_element;
  }
}

export default Arr;
