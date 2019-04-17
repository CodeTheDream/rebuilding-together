FactoryBot.define do
 factory :owner do
   first_name { 'Jeff' }
   last_name{ "brown" }
   address { "1 ock drive" }
   city { "durham"}
   state { "NC" }
   zip { "12345" }
   phone { "1234567" }
   em_contact_name { "ben" }
   em_contact_relationship { "brother"}
   em_contact_phone { "567891011" }
   year { "1" }
    
#    confirmed_at Date.today
 end
end

