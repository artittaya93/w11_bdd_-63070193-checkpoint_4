Feature: Fill empty mandatory information
    Scenario: Open App
        Given "scaffold-tag" loaded
        Then  I should see "firstname-tag" appeared
        Then  I should see "lastname-tag" appeared
        Then  I should see "nickname-tag" appeared
        #Then  I should see "age-tag" appeared
#Then I should see to "name-tag" 

    Scenario: Fill the information successfully
        Given "scaffold-tag" loaded
        When  I fill the "firstname-tag" field with "Jemy"
        And  I fill the "lastname-tag" field with "Dean"
        And  I fill the "nickname-tag" field with "Jemy"
        And I tap the "female-tag" element
        Then I tap the "save-button-tag" element
        Then I should see "report-page-tag" appeared

    Scenario: Failed case: Missing Nickname
        Given "scaffold-tag" loaded
        When  I fill the "firstname-tag" field with "Jemy"
        And  I fill the "lastname-tag" field with "Dean"
        And I tap the "female-tag" 
        And I tap the "syntom-three-tag" 
        Then I tap the "save-button-tag" element
        Then I should see "Please fill in your nickname"

    Scenario: False covid
        When  I fill the "firstname-tag" field with "Jemy"
        And  I fill the "lastname-tag" field with "Dean"
        And  I fill the "nickname-tag" field with "Jemy"
        And I tap the "female-tag" element
        And I tap the "syntom-two-tag" element
        Then I tap the "save-button-tag" element
        Then I should see "report-page-tag" appeared
        And I expect the text "คุณเป็นโควิท" to be present

   


        
# # action steps
# When  I fill empty text to "firstname-tag"
# Then  I fill empty text to "lastname-tag"
# Then  I fill empty text to "age-tag"
# Then  I select male
# Then  I select "syntoms-one-tag" and "syntoms-two-tag"
# Then  I tap on "save-button-tag"

