import Arr from "../arr";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("push should add an element to the array", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });

  it("pop should remove the last element from the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");
    const result = newArray.pop();
    expect(newArray.value).toHaveLength(2);
    expect(result).toEqual("c");
  });

  it("pop should return undefined if the array is empty", () => {
    const newArray = new Arr();
    const result = newArray.pop();

    expect(newArray.value).toHaveLength(0);
    expect(result).toBeUndefined();
  });

  it("shift should remove the first element from the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");
    const result = newArray.shift();

    expect(newArray.value).toHaveLength(2);
    expect(result).toEqual("a");
  });

  it("shift should return undefined if the array is empty", () => {
    const newArray = new Arr();
    const result = newArray.shift();

    expect(newArray.value).toHaveLength(0);
    expect(result).toBeUndefined();
  });
});
