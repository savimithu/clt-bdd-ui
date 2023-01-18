// //const {driver} = require("selenium-webdriver/chrome")

// module.exports = {
//     urls:'https://chipotle.com/',
    
//     elements:{
//         Login : "/html/body/div[4]/div[1]/div[1]/div/div[1]/div/div",//Xpath for login link
//         loginHeader : "/html/body/div[4]/div[2]/span/div[2]/div/div/div/div[3]/div[1]/img"
//     },
    
//     clickElement: async function(objectKey) {
//         var selector = page.chipotle.elements[objectKey];
//         await driver.sleep(2000);
//         return driver.findElement(By.xpath(selector)).click();
//     },

//     elementExists: async function(objectKey) {
//         var selector = page.chipotle.elements[objectKey];
//         await driver.sleep(3000);
//         return driver.findElement(By.xpath(selector));
//     }
//  }