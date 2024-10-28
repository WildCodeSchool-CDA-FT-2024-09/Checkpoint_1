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

  it("Should remove the last element from the array", () => {
    const newArray = new Arr();
    newArray.push("1");
    newArray.push("2");
    newArray.push("3");

    const result = newArray.apop();

    expect(result).toEqual(["1", "2"]);
    expect(result).toHaveLength(2);
    expect(result).toBeInstanceOf(Array);
  });

  it("Should remove the first element from the array", () => {
    const newArray = new Arr();
    newArray.push("1");
    newArray.push("2");
    newArray.push("3");

    const result = newArray.ashift();

    expect(result).toEqual(["2", "3"]);
    expect(result).toHaveLength(2);
    expect(result).toBeInstanceOf(Array);
  });
});
