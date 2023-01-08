module.exports = function () {

    //Given I am on the "Jootza" portal

   

    this.Given('I am on the Jootza portal', function () {
        return helpers.loadPage(page.jootza.url);
    });

    this.When(/^I enter password "([^"]*)"$/, function(objKey1) {
        return page.jootza.inputPassword(objKey1);
    });

    this.When(/^I enter username "([^"]*)"$/, function(objKey1) {
        return page.jootza.inputUserName(objKey1);
    });


    this.Given(/^I am logged on to the Jootza portal as "([^"]*)"$/, function (user) {
        return page.jootza.loginPortal(user);
    });

    this.Then(/^I should see the approver name as "([^"]*)"$/, function (value) {
        return page.jootza.verifyApproverName(value);
    });

    this.Given('I am logged on into the Jootza portal as Kavitha', async function(){
        // navigate to jootza.com - done
        // enter username as "kavithas" - done
        // enter password as "demo1234" - done
        // click on Login button - done
        helpers.loadPage(page.jootza.url);
        page.commonObjects.inputElement('username', "kavithas")
        page.commonObjects.inputElement('password', "demo1234")
        page.commonObjects.clickElement('LoginBtn')
        await driver.sleep(2000); 
        return page.commonObjects.elementExists('WelcomeMessage')
        
    })

    // I am logged on into the Jootza portal as "<username>" with "<password>"
    this.Given(/I am logged on into the Jootza portal as "([^"]*)" with "([^"]*)"$/, async function(username, password){
        // navigate to jootza.com - done
        // enter username as "kavithas" - done
        // enter password as "demo1234" - done
        // click on Login button - done
        helpers.loadPage(page.jootza.url);
        page.commonObjects.inputElement('username', username)
        page.commonObjects.inputElement('password', password)
        page.commonObjects.clickElement('LoginBtn')
        await driver.sleep(2000); 
        return page.commonObjects.elementExists('WelcomeMessage')
    })


};
