const helpers = require("../runtime/helpers")
const { assert } = require("chai");
module.exports = function () {

    this.Given(/I am on the olivegarden page$/, function () {
        return helpers.loadPage(page.olivegarden.urls);
    });

    this.When(/^I click on the "([^"]*)"$/, function (objectKey1) {
        return page.olivegarden.clickElement1(objectKey1);
    });

    this.Then(/^I should see a "([^"]*)"$/, function (objectKey1) {
        return page.olivegarden.elementExists1(objectKey1);
    });
    this.When(/^I enter the inputs for login$/, async function (table) {
        const fields = table.rows();
        console.log(fields);
        for (i = 0; i < fields.length; i++) {
            console.log(page.olivegarden.inputElement(fields[i][0], fields[i][1]));
        };
        await driver.sleep(3000);
        return;
    });

    this.Given(/^I Signed in olivegarden Website as "([^"]*)" and "([^"]*)"$/, function (email, passw) {
        return page.olivegarden.loginPortal(email, passw);

    });
    this.Then(/^I should get "([^"]*)"$/, function (objectKey) {
        return page.olivegarden.elementExists(objectKey)
    });
     

     
}