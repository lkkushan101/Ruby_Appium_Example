require 'rubygems'
require 'appium_lib'
desired_caps = {
    caps:  {
        platformName:  'Android',
        deviceName:    'AVY9KA9631900412',

        app: 'com.experitest.ExperiBank',
        appActivity: '.LoginActivity'
    }
}
@appium_driver = Appium::Driver.new(desired_caps)
@appium_driver.start_driver
@appium_driver.find_element(:id,'com.experitest.ExperiBank:id/usernameTextField').send_keys("company")
@appium_driver.find_element(:id,'com.experitest.ExperiBank:id/passwordTextField').send_keys("company")
@appium_driver.find_element(:id,'com.experitest.ExperiBank:id/loginButton').click()
