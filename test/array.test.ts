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

  it("should remove the last element of the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    const result = newArray.pop();

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual("a");
  });
});
