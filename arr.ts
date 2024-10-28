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

  pop(): number{
    const newarray = new Array(this.value.length); 

    for(let i=0; i<this.value.length -1; i++){
      newarray[i] = this.value[i];
    }
    this.value = newarray;
    return this.value.length ;
  }
}

export default Arr;
