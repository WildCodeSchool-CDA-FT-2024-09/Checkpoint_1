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
  });

  it("should delete the last element in the array and return it", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    const lastElem = newArray.pop();
    expect(lastElem).toEqual("c");
    expect(newArray.value).toEqual(["a", "b"]);
  });

  it("should delete the first element in the array and return it", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    const firstElem = newArray.shift();
    expect(firstElem).toEqual("a");
    expect(newArray.value).toEqual(["b", "c"]);
  })
});
