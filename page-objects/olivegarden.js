const helpers = require("../runtime/helpers")
const { assert } = require("chai");
const { selectDropdownValueByVisibleText } = require("../runtime/helpers");
module.exports = {
    urls: 'https://www.olivegarden.com/',

    element: {
        login: '/html/body/header/div[2]/div[2]/ul/li[2]/a',
        loginheader: '/html/body/div[4]/div/div/div[3]/div/p',
        email: by.name('username'),
        password: by.name('password'),
        login1: '//*[@id="customerLoginId"]',
        menu: '//*[@id="/menu-listing"]',
        

    },
    clickElement1: async function (objectKey) {
        var selector = page.olivegarden.element[objectKey];
        await driver.sleep(2000);
        return driver.findElement(By.xpath(selector)).click();
    },
    elementExists1: async function (objectKey) {
        var selector = page.olivegarden.element[objectKey];
        await driver.sleep(5000);
        return driver.findElement(By.xpath(selector));
    },
    inputElement: async function (name, val) {
        var selector = page.amazon.element[name];
        await driver.sleep(2000);
        return driver.findElement(selector).sendKeys(val);

    },
    inputElement1: async function (fieldkeywords, input) {
        var selector = page.amazon.element[fieldkeywords];
        await driver.sleep(4000);
        driver.findElement(By.xpath(selector)).click();
        return driver.findElement(By.xpath(selector)).sendKeys(input);
    },

    loginPortal: async function (email, password) {
        var selector = page.target.elements[button1];
        await driver.sleep(2000);
        return driver.findElement(By.xpath(selector)).click();

    },
};