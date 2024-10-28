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

  it("should remove and return the last element of the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    const result = newArray.pop();

    expect(result).toEqual("c");
    expect(newArray.value).toHaveLength(2);
    expect(newArray.value).toEqual(["a", "b"]);
  });

  it("should return undefined when pop is called on an empty array", () => {
    const newArray = new Arr();

    const result = newArray.pop();

    expect(result).toBeUndefined();
    expect(newArray.value).toHaveLength(0);
  });
});
