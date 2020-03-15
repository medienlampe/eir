const fs = require("fs");

test("Checks if donorlist.json exists", () => {
  expect(fs.existsSync("_data/donorlist.json")).toBe(true);
});

test("Checks if donorlist.json is well-formed.", () => {
  const compileDonorlist = () => {
    let result = false;
    let data = fs.readFileSync("_data/donorlist.json", "utf8");
    let content = JSON.parse(data);

    if (Object.keys(content).length) {
      result = true;
    }

    return result;
  };

  expect(compileDonorlist()).toBe(true);
});


test("Checks if teamscore.json exists", () => {
  expect(fs.existsSync("_data/teamscore.json")).toBe(true);
});

test("Checks if teamscore.json is well-formed.", () => {
  const compileTeamscore = () => {
    let result = false;
    let data = fs.readFileSync("_data/teamscore.json", "utf8");
    let content = JSON.parse(data);

    if (Object.keys(content).length) {
      result = true;
    }

    return result;
  };

  expect(compileTeamscore()).toBe(true);
});
