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

  pop(): any {

    if (!this.value.length) return;

    const array = new Array(this.value.length - 1);
    const deletedElem = this.value[this.value.length - 1];


    // Deletes the last element
    for (let i = 0; i < array.length; i++) {
      array[i] = this.value[i]
    }

    this.value = array;

    // Return the last element we deleted
    return deletedElem
  }
}

export default Arr;
