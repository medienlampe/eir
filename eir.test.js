const fs = require("fs");

test("Checks if memberstats.json exists", () => {
  expect(fs.existsSync("_data/memberstats.json")).toBe(true);
});

test("Checks if memberstats.json is well-formed.", () => {
  const compileMemberstats = () => {
    let result = false;
    let data = fs.readFileSync("_data/memberstats.json", "utf8");
    let content = JSON.parse(data);

    if (Object.keys(content).length) {
      result = true;
    }

    return result;
  };

  expect(compileMemberstats()).toBe(true);
});
