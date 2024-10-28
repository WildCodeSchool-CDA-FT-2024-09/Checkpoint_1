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


  // test pop
  it("pop methodshould return element delete", () => {
    const newArray = new Arr();
    newArray.push("a");
    const result = newArray.pop();

    expect(newArray.value).toHaveLength(0);
    expect(result).toEqual("a");
  });

  // test shift
  it("shift method should return element delete", () => {
    const newArray = new Arr();
    newArray.push("a");
    const result = newArray.shift();

    expect(newArray.value).toHaveLength(0);
    expect(result).toEqual("a");
  });
});
