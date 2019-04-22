FactoryBot.define do 
    factory :volunteer do
    first_name { "ben" }
    last_name { "brown" }
    city { "Dublin" }
    state { "OH" }
    mobile_phone { "1234567" }
    birthdate { "04/04/2012" }
    gender { "male" }
    employer { "Trucker" }
    position { "Driver" }
    availability { "Monday" }
    skill { "Plumber" }
    volunteer_notes { "testing" }
    end
end