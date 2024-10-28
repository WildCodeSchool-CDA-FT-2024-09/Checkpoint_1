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
  });

  it("should return undefined as the array is empty", () => {
    const newArray = new Arr();
    const eltRemoved = newArray.popFab();

    expect(eltRemoved).toEqual(undefined);
    expect(newArray.value).toHaveLength(0);
  });

  it("should removes the first element in the array and returns it", () => {
    const newArray = new Arr();
    newArray.push("zen");
    newArray.push("pedro");
    newArray.push("noisette");
    newArray.push("suki");
    newArray.push("louloutte");
    const eltRemoved = newArray.shiftFab();

    expect(eltRemoved).toEqual("zen");
    expect(newArray.value).toHaveLength(4);
  });

  it("should return undefined as the array is empty", () => {
    const newArray = new Arr();
    const eltRemoved = newArray.shiftFab();

    expect(eltRemoved).toEqual(undefined);
    expect(newArray.value).toHaveLength(0);
  });
});
