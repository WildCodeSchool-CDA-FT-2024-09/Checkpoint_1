import Arr from "../arr";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("should add an element in the array", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });

  it("should removes the last element in the array and returns it", () => {
    const newArray = new Arr();
    newArray.push("zen");
    newArray.push("pedro");
    newArray.push("noisette");
    newArray.push("suki");
    newArray.push("louloutte");
    const eltRemoved = newArray.popFab();

    expect(eltRemoved).toEqual("louloutte");
    expect(newArray.value).toHaveLength(4);

    const newArray2 = new Arr();
    const eltRemoved2 = newArray2.popFab();

    expect(eltRemoved2).toEqual(undefined);
    expect(newArray2.value).toHaveLength(0);
  });
});
