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

  it("should pop an element from the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");

    const popped = newArray.pop();

    expect(popped).toBe("b");
    expect(newArray.value).toHaveLength(1);
    expect(newArray.value[0]).toBe("a");
  });

  it("should shift an element from the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");

    const shifted = newArray.shift();

    expect(shifted).toBe("a");
    expect(newArray.value).toHaveLength(1);
    expect(newArray.value[0]).toBe("b");
  });
});
