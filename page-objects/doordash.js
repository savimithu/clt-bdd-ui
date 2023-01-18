// //const {driver} = require("selenium-webdriver/chrome")

// module.exports = {
//     urls: "https://doordash.com/",
    
//     elements:{
//         Login : "/html/body/div[1]/main/div/div[1]/div/div[1]/div/a[1]/span/span/span/span/span",  //Xpath for login link
//         loginHeader : "/html/body/div[1]/main/div/div[4]/div/div[2]/div/div[2]/div/div[1]/nav/div[2]/div/h2/span/span"
//     },
    
//     clickElement: async function(objectKey) {
//         var selector = page.doordash.elements[objectKey];
//         await driver.sleep(2000);
//         return driver.findElement(By.xpath(selector)).click();
//     },

//     elementExists: async function(objectKey) {
//         var selector = page.doordash.elements[objectKey];
//         await driver.sleep(2000);
//         return driver.findElement(By.xpath(selector));
//     }
//  }
