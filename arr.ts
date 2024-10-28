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

  poping(): string | undefined {
    if (this.value.length === 0) return undefined;
    const lastElement = this.value[this.value.length - 1];
    const newArray = new Array(this.value.length - 1);

    for (let i = 0; i < newArray.length; i++) {
      newArray[i] = this.value[i];
    }

    this.value = newArray; 
    return lastElement;
  }

  shifting(): string | undefined {
    if (this.value.length === 0) return undefined;
    const firstElement = this.value[0];
    const newArray = new Array(this.value.length - 1);

    for (let i = 1; i < this.value.length; i++) {
      newArray[i - 1] = this.value[i]; 
    }

    this.value = newArray; 
    return firstElement;
  }
}

export default Arr;
