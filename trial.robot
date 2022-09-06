*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://dev-genesis.lionparcel.com/


*** Test Cases ***
LoginTest
    open browser                ${URL}          ${Browser}
    set selenium speed          1s
    maximize browser window
    input text                  xpath://*[@id="app"]/div/form/div[1]/input      poselang
    input text                  xpath://*[@id="app"]/div/form/div[2]/input      Genesis123
    click button                xpath://*[@id="app"]/div/form/button
    wait until page contains element        xpath://img[@class="w-4"]
    click element               xpath://img[@class="w-4"]

# ShipmentBooking
#     click element               xpath://li[@id='menu-8']
#     click element               xpath://*[@id="menu-8"]/div[2]/div/div/div[1]/div/div[1]
#     wait until page contains element    xpath://*[@id="app"]/div/div[3]/div[3]/div/div[2]/button 
#     click button                xpath://*[@id="app"]/div/div[3]/div[3]/div/div[2]/button
#     wait until page contains element    xpath://span[contains(text(),'Booking Retail')]
#     click element               xpath://span[contains(text(),'Booking Retail')]
#     wait until page contains element    xpath://*[@id="app"]/div/div[2]/div[3]/div/div[3]/div[2]/div/div/div[2]/div[1]/div/div/div/div/img    
#     click element               xpath://*[@id="app"]/div/div[2]/div[3]/div/div[3]/div[2]/div/div/div[2]/div[1]/div/div/div/div/img  
#     wait until page contains element    xpath://*[@id="app"]/div/div[2]/div[3]/div/div[3]/div[2]/div/div/div[2]/div[1]/div/div/input
#     click element               xpath://*[@id="app"]/div/div[2]/div[3]/div/div[3]/div[2]/div/div/div[2]/div[1]/div/div/input
#     input text                  xpath://*[@id="app"]/div/div[2]/div[3]/div/div[3]/div[2]/div/div/div[2]/div[1]/div/div/input                   REGPACK
#     click element               xpath://*[@id="app"]/div/div[2]/div[3]/div/div[3]/div[2]/div/div/div[2]/div[2]/div/div
#     wait until page contains element    xpath://input[@placeholder='Masukan nama pengirim'] 
#     input text                  xpath://input[@placeholder='Masukan nama pengirim']         JUSTIN BIEBER
#     input text                  xpath://input[@placeholder='Masukan nama penerima']         SELENA GOMES
#     wait until page contains element    xpath://*[@id="app"]/div/div[2]/div[3]/div/div[6]/div[1]/div/div/div[2]/div/div[1]/div[2]/div/input
#     input text                  xpath://*[@id="app"]/div/div[2]/div[3]/div/div[6]/div[1]/div/div/div[2]/div/div[1]/div[2]/div/input         85748327681
#     input text                  xpath://*[@id="app"]/div/div[2]/div[3]/div/div[6]/div[2]/div/div/div[2]/div/div[1]/div[2]/div/input         85232033886
#     wait until page contains element     xpath://*[@id="app"]/div/div[2]/div[3]/div/div[7]/div[1]/div/div[2]/textarea
#     input text                  xpath://*[@id="app"]/div/div[2]/div[3]/div/div[7]/div[1]/div/div[2]/textarea            jln. soekarno-hatta no. 17
#     input text                  xpath://*[@id="app"]/div/div[2]/div[3]/div/div[7]/div[2]/div/div[2]/textarea            jln. mastrip no. 04
#     wait until page contains element    xpath://input[@placeholder='Ketik atau pilih alamat tujuan']
#     input text                  xpath://input[@placeholder='Ketik atau pilih alamat tujuan']            CATUR TUNGGAL
#     click element               xpath://*[@id="app"]/div/div[2]/div[3]/div/div[8]/div[2]/div/div[2]/div[2]/div/div[1]/span
#     wait until page contains element    xpath://body[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]/div[9]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]
#     click element               xpath://body[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]/div[9]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]
#     click element               xpath://div[normalize-space()='Rumah']
#     wait until page contains element    xpath://input[@placeholder='e.g 20.000']    
#     input text                  xpath://input[@placeholder='e.g 20.000']                100000
#     wait until page contains element    xpath://input[@placeholder='e.g 20']
#     input text                  xpath://input[@placeholder='e.g 20']                     3
#     click button                xpath://*[@id="app"]/div/div[2]/div[2]/div[2]/div/button
#     wait until page contains element    xpath://body/div[1]/div[1]/div[1]/div[1]
#     click element               xpath://body/div[2]/div[1]/div[1]/div[1]
#     click button                xpath://*[@id="app"]/div/div[2]/div[6]/div[1]/div/div/div[3]/div[2]/button

# Pickup
#     click element               xpath://body/div[@id='app']/div[@id='app']/div[1]/div[1]/div[1]/div[3]/div[1]/ul[18]/div[1]/li[1]/div[1]
#     wait until page contains element        xpath://*[@id="pickup-manifest"]/div[1]/div[2]/div[2]/button
#     click button                xpath://*[@id="pickup-manifest"]/div[1]/div[2]/div[2]/button
#     wait until page contains element        xpath://*[@id="detailLayoutData"]/div[1]/div[5]/div/div[2]/div[1]/div/div/div/div/img
#     click element               xpath://*[@id="detailLayoutData"]/div[1]/div[5]/div/div[2]/div[1]/div/div/div/div/img
#     click element               xpath://*[@id="detailLayoutData"]/div[1]/div[5]/div/div[2]/div[2]/div[1]/div/span
#     input text                  xpath://*[@id="detailLayoutData"]/div[1]/div[6]/div/div[2]/div[1]/div/div/input         sdw
#     click element               xpath://*[@id="detailLayoutData"]/div[1]/div[6]/div/div[2]/div[2]/div[1]/div/span
#     input text                  xpath://*[@id="detailLayoutData"]/div[1]/div[8]/div/div[2]/input                        11LP1658724031378
#     # click button                xpath://*[@id="detailLayoutData"]/div[2]/div/button/span/span

ShipmentTracking
    click element               xpath://li[@id='menu-8']
    click element               xpath://*[@id="menu-8"]/div[2]/div/div/div[3]/div
    wait until page contains element        xpath://*[@id="app"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input
    input text                  xpath://*[@id="app"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/input            11LP1658724031378
    wait until page contains element        xpath://span[contains(text(),'Lacak')]
    click element               xpath://span[contains(text(),'Lacak')]

LogutTest
    click element               xpath://*[@id="key-footer"]/ul/li[2]
    # click button                xpath://*[@id="app"]/div/div[2]/div[1]/div/div/div[3]/div[1]/button
    click button                xpath://button[@type='button']//span[contains(text(),'Keluar')]