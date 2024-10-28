import Arr from "../arr";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("should had an element in the array", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
    console.log("first", newArray)
  });
  
  it("should delete last element in the array", () => {
    const newArraypop = new Arr();
    const result = newArraypop.pop();

    expect(newArraypop.value).toHaveLength(0)
    expect(result).toEqual(0);
    console.log("snd", newArraypop)
  })
  
});

