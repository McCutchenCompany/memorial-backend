## Branches

@navy = MilitaryBranch.find_or_create_by(uuid: "5a399713-9e70-4206-9e13-8c48c4aa34ca") do |branch|
  branch.name = "United States Navy"
  branch.image = "https://memorial-imgs.s3.amazonaws.com/military/Emblem_of_the_United_States_Navy.png"
end
@marines = MilitaryBranch.find_or_create_by(uuid: "51194acc-d82e-44f4-b15e-6450f6459e87") do |branch|
  branch.name = "United States Marines"
  branch.image = "https://memorial-imgs.s3.amazonaws.com/military/Emblem_of_the_United_States_Marine_Corps.png"
end
@air_force = MilitaryBranch.find_or_create_by(uuid: "6d400946-0ba8-4534-bd8a-2ba2b1c97928") do |branch|
  branch.name = "United States Air Force"
  branch.image = "https://memorial-imgs.s3.amazonaws.com/military/Military_service_mark_of_the_United_States_Air_Force.png"
end
@coast_guard = MilitaryBranch.find_or_create_by(uuid: "b04e8ed6-96fb-406b-b18b-84b15ec5e2e7") do |branch|
  branch.name = "United States Coast Guard"
  branch.image = "https://memorial-imgs.s3.amazonaws.com/military/Seal_of_the_United_States_Coast_Guard.png"
end
@army = MilitaryBranch.find_or_create_by(uuid: "3daff2dc-b509-4bba-8354-9d4bde384302") do |branch|
  branch.name = "United States Army"
  branch.image = "https://memorial-imgs.s3.amazonaws.com/military/Military_service_mark_of_the_United_States_Army.png"
end

## medals

Medal.find_or_create_by!(uuid: "dc448992-6b2d-43dc-a5e2-46ef8d879a51") do |medal|
  medal.name = "Medal of Honor"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Medal_of_Honor_ribbon.png"
end
Medal.find_or_create_by!(uuid: "4a65e518-8b46-482e-a670-a5107a87ec88") do |medal|
  medal.name = "Distinguished Service Cross (Army)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Distinguished_Service_Cross_ribbon.png"
end
Medal.find_or_create_by(uuid: "7023a692-1956-4c08-aad9-79e2f8af9805") do |medal|
  medal.name = "Navy Cross"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_Cross_ribbon.png"
end
Medal.find_or_create_by(uuid: "f343b4b9-6d00-4963-8db9-5dd86e1c7e41") do |medal|
  medal.name = "Air Force Cross"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Cross_ribbon.png"
end
Medal.find_or_create_by(uuid: "1437f51b-8c62-48dd-a1b8-4a306e4e8340") do |medal|
  medal.name = "Coast Guard Cross"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Cross_ribbon.png"
end
Medal.find_or_create_by(uuid: "321702fd-424f-42bd-8c18-6c008e341fb1") do |medal|
  medal.name = "Silver Star Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Silver_Star_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "75b62b38-2645-4a15-b8fc-401adaa52847") do |medal|
  medal.name = "Defense Distinguished Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Defense_Distinguished_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "05582347-ee0c-4e22-bf8a-1c847522878b") do |medal|
  medal.name = "Homeland Security Distinguished Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Homeland_Security_Distinguished_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "818b3306-b326-41ba-90e2-740802d28a19") do |medal|
  medal.name = "Distinguished Service Medal (Army)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Army_Distinguished_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "abf227ce-1228-4a97-b646-fc07ace2b0e6") do |medal|
  medal.name = "Navy Distinguished Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_Distinguished_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "4b8322b9-8afb-4f3d-9dc7-e0464dbfb5e7") do |medal|
  medal.name = "Air Force Distinguished Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Distinguished_Service_ribbon.png"
end
Medal.find_or_create_by(uuid: "2f929d36-1f8b-4acd-9a7e-55840926f5f5") do |medal|
  medal.name = "Coast Guard Distinguished Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Distinguished_Service_ribbon.png"
end
Medal.find_or_create_by(uuid: "e11ac826-1ad6-49bf-a48d-81842c12106b") do |medal|
  medal.name = "Defense Superior Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Defense_Superior_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae") do |medal|
  medal.name = "Legion of Merit"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Legion_of_Merit_ribbon.png"
end
Medal.find_or_create_by(uuid: "3f5ff443-d148-44e3-9809-eb2b7363daad") do |medal|
  medal.name = "Distinguished Flying Cross"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Distinguished_Flying_Cross_ribbon.png"
end
Medal.find_or_create_by(uuid: "e875e485-6487-4359-9291-eacd65271307") do |medal|
  medal.name = "Soldier's Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Soldier's_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "ccb2e948-3490-4afa-8582-c61f7a121ad0") do |medal|
  medal.name = "Navy and Marine Corps Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_and_Marine_Corps_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "0786ce43-b921-410a-b6f2-99669d71e285") do |medal|
  medal.name = "Airman's Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Airman's_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "d23f0fdf-e7fa-4f6a-98cf-a5078d75a9a6") do |medal|
  medal.name = "Coast Guard Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "eb803254-124a-4542-8869-5af13a48371f") do |medal|
  medal.name = "Bronze Star Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Bronze_Star_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "c8e28734-abd2-431e-9403-30b24607d89f") do |medal|
  medal.name = "Purple Heart"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Purple_Heart_ribbon.png"
end
Medal.find_or_create_by(uuid: "c07d974b-478a-4287-b6e1-c1899572ae2f") do |medal|
  medal.name = "Defense Meritorious Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Defense_Meritorious_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "8899b5b6-428b-48b7-866d-dad07fdbde02") do |medal|
  medal.name = "Meritorious Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Meritorious_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "355a6eda-a66d-4ae2-88ba-1cec61f9e644") do |medal|
  medal.name = "Air Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "358a285a-7d9e-4287-9ead-b6d8fc030a22") do |medal|
  medal.name = "Aerial Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Aerial_Achievement_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa") do |medal|
  medal.name = "Joint Service Commendation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Joint_Service_Commendation_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "d41dacb4-ec3b-4eef-8aff-c5ab9ed1da04") do |medal|
  medal.name = "Army Commendation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Commendation_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "838fb945-78d6-4993-9472-cfc3cb920000") do |medal|
  medal.name = "Navy and Marine Corps Commendation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_and_Marine_Corps_Commendation_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "69956292-4d6f-4a05-a76c-ef492dde6515") do |medal|
  medal.name = "Air Force Commendation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "379773d9-d620-42b0-8aa1-95cf2499e3eb") do |medal|
  medal.name = "Coast Guard Commendation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Coast_Guard_Commendation_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "662c76f8-bf38-40a3-9280-5da43edf7875") do |medal|
  medal.name = "Joint Service Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Joint_Service_Achievement_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "9e910d60-47b4-47af-a8e9-1f40cff82a3e") do |medal|
  medal.name = "Army Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Achievement_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "17a39789-dc47-4685-80b4-9656c2c96961") do |medal|
  medal.name = "Navy and Marine Corps Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_and_Marine_Corps_Achievement_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "d22095dd-0d1d-49a2-bef6-e1b3141aa84e") do |medal|
  medal.name = "Air Force Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Achievement_ribbon.png"
end
Medal.find_or_create_by(uuid: "84b7beb9-dbc1-4687-89d6-b83bdfa06c74") do |medal|
  medal.name = "Coast Guard Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Coast_Guard_Achievement_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "3a432b2d-9be6-40e7-9154-fad79e2e2cee") do |medal|
  medal.name = "Commandant's Letter of Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Commandant's_Letter_of_Commendation_Ribbon.png"
end
Medal.find_or_create_by(uuid: "17ea6a56-6ba1-4b04-9185-5148780864c0") do |medal|
  medal.name = "Navy Combat Action Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Combat_Action_Ribbon.png"
end
Medal.find_or_create_by(uuid: "452c172a-492c-41ee-ab71-c9405912ba79") do |medal|
  medal.name = "Coast Guard Combat Action Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/United_States_Coast_Guard_Combat_Action_Ribbon.png"
end
Medal.find_or_create_by(uuid: "73e39f4a-a959-4682-ac22-aa1a08352b4b") do |medal|
  medal.name = "Air Force Combat Action Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Combat_Action_ribbon.png"
end
Medal.find_or_create_by(uuid: "1d9f3fb1-888e-4f46-884e-4c0ddafd4d3f") do |medal|
  medal.name = "Army Presidential Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Army_and_U.S._Air_Force_Presidential_Unit_Citation_ribbon.png"
end
Medal.find_or_create_by(uuid: "062975f0-4bae-48c3-83ab-e1a8122697a5") do |medal|
  medal.name = "Navy and Marine Corps Presidential Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/United_States_Navy_Presidential_Unit_Citation_ribbon.png"
end
Medal.find_or_create_by(uuid: "c2c6be29-9366-4640-b158-06bc95ca91de") do |medal|
  medal.name = "Air Force Presidential Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Army_and_U.S._Air_Force_Presidential_Unit_Citation_ribbon.png"
end
Medal.find_or_create_by(uuid: "7b8e31a3-f1ab-4314-b63b-f39f4f711381") do |medal|
  medal.name = "Coast Guard Presidential Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Coast_Guard_Presidential_Unit_Citation_ribbon.png"
end
Medal.find_or_create_by(uuid: "9a4369db-54ee-4b8e-bf63-7c494300e512") do |medal|
  medal.name = "Joint Meritorious Unit Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Joint_Meritorious_Unit_Award_ribbon.png"
end
Medal.find_or_create_by(uuid: "d8b88a64-1204-4e81-ac08-c93c07913789") do |medal|
  medal.name = "Army Valorous Unit Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Valorous_Unit_Award_ribbon.png"
end
Medal.find_or_create_by(uuid: "37055f3b-b9dc-4b77-83e6-16adc676bc85") do |medal|
  medal.name = "Navy Unit Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Unit_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "d05aabad-df90-45ea-a035-e0df7aa347f0") do |medal|
  medal.name = "Air Force Gallant Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Gallant_Unit_Citation_ribbon.png"
end
Medal.find_or_create_by(uuid: "5d2771b6-ac1d-4710-88e0-390905b6c4b1") do |medal|
  medal.name = "Coast Guard Unit Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Unit_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "acb24b82-afdf-4f1a-a533-a76565b8aa1c") do |medal|
  medal.name = "Army Meritorious Unit Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Meritorious_Unit_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "278373b1-2c05-4b83-a486-24a417115922") do |medal|
  medal.name = "Navy Meritorious Unit Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_Meritorious_Unit_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "591baf32-7c46-45db-ac31-337a03789581") do |medal|
  medal.name = "Air Force Meritorious Unit Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Meritorious_Unit_ribbon.png"
end
Medal.find_or_create_by(uuid: "8fec5635-43a3-4c30-83c9-7649e8b626cb") do |medal|
  medal.name = "Coast Guard Meritorious Unit Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Meritorious_Unit_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "f3689298-6b5c-4ab4-a9b0-96f0d49e9c45") do |medal|
  medal.name = "Army Superior Unit Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Superior_Unit_Award_ribbon.png"
end
Medal.find_or_create_by(uuid: "ba902b57-9ef5-451f-bd21-9dd0e8b49123") do |medal|
  medal.name = "Air Force Outstanding Unit Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Outstanding_Unit_ribbon.png"
end
Medal.find_or_create_by(uuid: "1adc7ae7-9140-455d-867b-9fe4d66aa93e") do |medal|
  medal.name = "Coast Guard Meritorious Team Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Meritorious_Team_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "f04a4729-52f4-4113-9835-1767b065fd0e") do |medal|
  medal.name = "Navy \"E\" Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Battle_Effectiveness_Award_ribbon%2C_1st_award.png"
end
Medal.find_or_create_by(uuid: "255f3c45-fdcb-4ce9-9923-e4b4874b7c83") do |medal|
  medal.name = "Air Force Organizational Excellence Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Organizational_Excellence_ribbon.png"
end
Medal.find_or_create_by(uuid: "00e98ae9-27b9-4b1d-871a-65c28c47de84") do |medal|
  medal.name = "Coast Guard \"E\" Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Excellence_Ribbon.png"
end
Medal.find_or_create_by(uuid: "6442fead-2438-44a7-b9e3-eba59155b7a0") do |medal|
  medal.name = "Prisoner of War Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Prisoner_of_War_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "76ebe240-158c-4f0b-bcce-9aab1c41936d") do |medal|
  medal.name = "Army Good Conduct Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Good_Conduct_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "f8ee7995-dac4-410a-b254-35f0ff293bf8") do |medal|
  medal.name = "Navy Good Conduct Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Good_Conduct_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "4d67d9b1-4491-4e53-8735-60147db4bd35") do |medal|
  medal.name = "Air Force Good Conduct Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Air_Force_Good_Conduct_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "523aa24c-2b64-4369-ae6a-da3a1c80a12d") do |medal|
  medal.name = "Marine Corps Good Conduct Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Marine_Corps_Good_Conduct_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "ba9806c8-55b0-4c73-837c-6aab98016ca1") do |medal|
  medal.name = "Coast Guard Good Conduct Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Coast_Guard_Good_Conduct_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "1ada23a5-7260-421f-8577-0ab634377ce1") do |medal|
  medal.name = "Combat Readiness Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Combat_Readiness_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "6e034112-02d2-43f0-afd3-0cbf4ab2c27a") do |medal|
  medal.name = "Outstanding Airman of the Year Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Outstanding_Airman_of_the_year.jpg"
end
Medal.find_or_create_by(uuid: "6b36561b-4d7c-4a55-aa24-22bba1128e0b") do |medal|
  medal.name = "Coast Guard Enlisted Person of the Year Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Enlisted_Person_of_the_Year_Ribbon.png"
end
Medal.find_or_create_by(uuid: "84f55a4f-f922-4047-a267-78b65ea8394f") do |medal|
  medal.name = "Air Force Recognition Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Recognition_Ribbon.png"
end
Medal.find_or_create_by(uuid: "eee8aaa9-d64e-412c-9603-2f79669fa62f") do |medal|
  medal.name = "Army Reserve Components Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Army_Reserve_Components_Achievement_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "030478be-944b-4c28-8c72-be30af8adf62") do |medal|
  medal.name = "Air Reserve Forces Meritorious Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Reserve_Forces_Meritorious_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "501ffbe0-6f39-4f42-8cdf-e9392180fb84") do |medal|
  medal.name = "Selected Marine Corps Reserve Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Selected_Marine_Corps_Reserve_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "eea4e52a-5ba7-4a2f-86d5-a3de98703993") do |medal|
  medal.name = "Coast Guard Reserve Good Conduct Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Reserve_Good_Conduct_Ribbon.png"
end
Medal.find_or_create_by(uuid: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528") do |medal|
  medal.name = "Armed Forces Reserve Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Armed_Forces_Reserve_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "af663e72-657f-4a7f-a5ab-54a38a3dcf28") do |medal|
  medal.name = "Navy Expeditionary Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_Expeditionary_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "7ff46d72-dfd1-44b3-8cc2-3d4b841f86e9") do |medal|
  medal.name = "Marine Corps Expeditionary Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Marine_Corps_Expeditionary_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "44b353b1-ed63-4f42-b21b-2b772b633c17") do |medal|
  medal.name = "National Defense Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/National_Defense_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d") do |medal|
  medal.name = "Global War on Terrorism Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Global_War_on_Terrorism_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "7503c083-4c06-419e-8014-120f7247c91e") do |medal|
  medal.name = "Korea Defense Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Korea_Defense_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "ff3df46f-50fd-477b-8afe-df141a409986") do |medal|
  medal.name = "Armed Forces Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Armed_Forces_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "1328a960-b79e-4d33-8712-fe45c8509816") do |medal|
  medal.name = "Humanitarian Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Humanitarian_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "a06358f7-4afa-49d8-bda7-cfaac9263677") do |medal|
  medal.name = "Outstanding Volunteer Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Military_Outstanding_Volunteer_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "d70043ba-24a8-4485-bf07-d4059da54ee1") do |medal|
  medal.name = "Antarctica Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Antarctica_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "63d0d16a-88f2-4478-9076-19ebab3fc9a4") do |medal|
  medal.name = "Coast Guard Arctic Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Arctic_Service_ribbon.png"
end
Medal.find_or_create_by(uuid: "6735565e-d6b9-4082-b494-63dc4c76eed6") do |medal|
  medal.name = "Air and Space Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_and_Space_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "758a6b2f-beab-4bee-8bfe-3b8f56fa57f0") do |medal|
  medal.name = "Nuclear Deterrence Operations Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Nuclear_Deterrence_Operations_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "f24b0f37-f3bd-4022-9a3b-769d3a436793") do |medal|
  medal.name = "Armed Forces Expeditionary Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Armed_Forces_Expeditionary_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "1a0c6019-3656-4042-9130-2bcd054f91ca") do |medal|
  medal.name = "Afghanistan Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Afghanistan_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "04806fca-98d4-405d-99e0-77cce071f358") do |medal|
  medal.name = "Inherent Resolve Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Inherent_Resolve_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "153bb4e2-bd87-409e-9949-140100ea2bf6") do |medal|
  medal.name = "Global War on Terrorism Expeditionary Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Global_War_on_Terrorism_Expeditionary_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "43fc3a75-db23-4bd6-a15c-78c8817b5cd3") do |medal|
  medal.name = "Navy Sea Service Deployment Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_and_Marine_Corps_Sea_Service_Deployment_Ribbon.png"
end
Medal.find_or_create_by(uuid: "2200f2b1-a216-4d44-a828-a290b79a889b") do |medal|
  medal.name = "Coast Guard Sea Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Coast_Guard_Sea_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "8c576b86-af3c-4162-82e7-71deb6799d13") do |medal|
  medal.name = "Army Sea Duty Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Army_Sea_Duty_Ribbon.png"
end
Medal.find_or_create_by(uuid: "3d9bb96a-7f4e-4f33-9864-f391e15a402e") do |medal|
  medal.name = "Naval Reserve Sea Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Naval_Reserve_Sea_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "eb102c8f-f1a4-4fdc-985c-28d8c4df5c09") do |medal|
  medal.name = "Air Force Expeditionary Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Expeditionary_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "f52cff5b-99a5-4297-93b1-3d871f002bce") do |medal|
  medal.name = "Navy Arctic Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_Arctic_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "a9e4e04c-802f-431c-a274-6348d9eca92b") do |medal|
  medal.name = "Navy and Marine Corps Overseas Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_and_Marine_Corps_Overseas_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "5755c594-c6d0-49f5-899f-df1e0875bdbb") do |medal|
  medal.name = "Coast Guard Overseas Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Overseas_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "d7ff61fb-29b9-42ae-8291-1fa0ed43ea91") do |medal|
  medal.name = "Air Force Overseas Short Tour Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/AF_OS_Short_Tour_Ribbon.png"
end
Medal.find_or_create_by(uuid: "a0e43ad2-b922-435d-ad50-8ab28f4524d4") do |medal|
  medal.name = "Air Force Overseas Long Tour Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/AF_OS_Tour_Ribbon.png"
end
Medal.find_or_create_by(uuid: "69dcaa72-9f25-4063-b089-374e4b24bdbf") do |medal|
  medal.name = "Army Overseas Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Overseas_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "53e0c0fa-44f4-4c6f-8096-ff2937ddf67e") do |medal|
  medal.name = "Army Reserve Overseas Training Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Reserve_Overseas_Training_Ribbon.png"
end
Medal.find_or_create_by(uuid: "32b4c6a5-1dcc-48f0-b288-a3b96216634f") do |medal|
  medal.name = "Coast Guard Restricted Duty Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Restricted_Duty_Ribbon.png"
end
Medal.find_or_create_by(uuid: "653d5664-896e-4c0d-bcf3-ec8a7f78eb29") do |medal|
  medal.name = "Coast Guard Special Operations Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Coast_Guard_Special_Operations_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "9c8d7fed-59d5-4edc-88d4-dc99764791f8") do |medal|
  medal.name = "Air Force Longevity Service Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Longevity_Service_ribbon.png"
end
Medal.find_or_create_by(uuid: "820d28fd-7f94-4b52-bcf3-a0c94c6fff2f") do |medal|
  medal.name = "Navy Recruiting Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Recruiting_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "116aa7de-8220-4ea3-8f32-141a98aba2b3") do |medal|
  medal.name = "Marine Corps Recruiting Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Marine_Corps_Recruiting_Ribbon.png"
end
Medal.find_or_create_by(uuid: "29abab29-a46c-44b6-8f18-6bab5f325386") do |medal|
  medal.name = "Coast Guard Recruiting Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Recruiting_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "30d156c2-269e-4eb9-b788-035dd7ac9f7f") do |medal|
  medal.name = "Navy Accession Training Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Recruiting_Training_Ribbon.png"
end
Medal.find_or_create_by(uuid: "f89f7731-3f25-4b35-ad02-742eba7fe9b6") do |medal|
  medal.name = "Marine Corps Drill Instructor Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Marine_Corps_Drill_Instructor_Ribbon.png"
end
Medal.find_or_create_by(uuid: "f21c1997-9c74-448b-b6f7-f5fee66b7762") do |medal|
  medal.name = "Marine Corps Combat Instructor Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USMC_Combat_Instructor_Ribbon.png"
end
Medal.find_or_create_by(uuid: "e66e5fe4-5b7c-4e9b-b8ed-20f43cd8b048") do |medal|
  medal.name = "Air Force Special Duty Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USA_Air_Force_Special_Duty_Ribbon.png"
end
Medal.find_or_create_by(uuid: "10ce6ee0-88b0-4f66-9467-126321b77b9d") do |medal|
  medal.name = "Navy Ceremonial Guard Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Navy_Ceremonial_Duty_Ribbon.png"
end
Medal.find_or_create_by(uuid: "d8522cd9-0fcc-48b0-ab07-c67aaffdcd3b") do |medal|
  medal.name = "Marine Corps Security Guard Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Marine_Security_Guard_Ribbon.png"
end
Medal.find_or_create_by(uuid: "6669f337-8534-424e-ab4a-9970304dfd29") do |medal|
  medal.name = "Army NCO Professional Development Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Non-Commissioned_Officer_Professional_Development_Ribbon.png"
end
Medal.find_or_create_by(uuid: "30e4c14e-2c50-41bc-bf40-21208ccccbbe") do |medal|
  medal.name = "Air Force NCO PME Graduate Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USAF_NCO_PME_Graduate_Ribbon.png"
end
Medal.find_or_create_by(uuid: "c4274626-e86f-49a9-8c7f-67a4522c95fc") do |medal|
  medal.name = "Air Force Basic Military Training Honor Graduate Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USAF_Basic_Military_Training_Honor_Graduate_Ribbon.png"
end
Medal.find_or_create_by(uuid: "855955ba-88aa-47ab-9fc6-6383aa65d186") do |medal|
  medal.name = "Coast Guard Basic Training Honor Graduate Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Honor_Graduate_Ribbon.png"
end
Medal.find_or_create_by(uuid: "9ff3a9da-db4e-4f6e-87a3-d48af04dca0b") do |medal|
  medal.name = "Navy Basic Military Training Honor Graduate Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Recruit_Honor_Graduate_Ribbon.png"
end
Medal.find_or_create_by(uuid: "d0b585ce-0dad-4701-86c3-6f962f1f7fb6") do |medal|
  medal.name = "Army Service Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "b2e1b800-776d-4460-b495-ebd23f615381") do |medal|
  medal.name = "Air Force Training Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Training_Ribbon.png"
end
Medal.find_or_create_by(uuid: "6d1c4e05-b332-4586-b802-fc7440deb0b5") do |medal|
  medal.name = "Air Force Small Arms Expert Marksmanship Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USAF_Marksmanship_ribbon.png"
end
Medal.find_or_create_by(uuid: "a683930c-fd9d-4972-b969-c042e7beadfa") do |medal|
  medal.name = "Coast Guard Distinguished Marksman Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Distinguished_Marksman_Ribbon.png"
end
Medal.find_or_create_by(uuid: "d4863c65-2e32-47a7-bfc2-3fc8ad893443") do |medal|
  medal.name = "Coast Guard Silver Rifle Excellence-in-Competition Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Silver_Rifle_EIC_Ribbon.png"
end
Medal.find_or_create_by(uuid: "081a0710-ea7a-4e5b-a544-d2a4ae3a8a46") do |medal|
  medal.name = "Coast Guard Bronze Rifle Excellence-in-Competition Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Bronze_Rifle_EIC_Ribbon.png"
end
Medal.find_or_create_by(uuid: "aa296c1c-638d-496b-afe6-a5564cf9e881") do |medal|
  medal.name = "Navy Expert Rifleman Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Expert_Rifleman_Ribbon.png"
end
Medal.find_or_create_by(uuid: "d25b8e19-5214-411a-a90a-6a19b5f9087d") do |medal|
  medal.name = "Coast Guard Expert Rifleman Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Expert_Rifleman_Ribbon.png"
end
Medal.find_or_create_by(uuid: "8f5be666-3fc0-45c8-a63a-f7d543563e28") do |medal|
  medal.name = "Navy Rifle Marksmanship Ribbon with Sharpshooter Device"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/United_States_Navy_Rifle_Marksmanship_Ribbon_with_sharpshooter_device.png"
end
Medal.find_or_create_by(uuid: "797bf2de-4be1-4d7b-9a7a-5ac3dff4f381") do |medal|
  medal.name = "Coast Guard Rifle Marksmanship Ribbon with Sharpshooter Device"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Sharpshooter_Rifle_Ribbon.png"
end
Medal.find_or_create_by(uuid: "a8106a47-52b5-40e7-948e-b79b52392be2") do |medal|
  medal.name = "Navy Rifle Marksmanship Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Rifle_Marksmanship_Ribbon.png"
end
Medal.find_or_create_by(uuid: "00d5251d-0822-4f74-8fbe-797f5f8a7332") do |medal|
  medal.name = "Coast Guard Rifle Marksmanship Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Rifle_Marksmanship_Ribbon.png"
end
Medal.find_or_create_by(uuid: "c02f536b-7480-451d-9d8d-5ff834949beb") do |medal|
  medal.name = "Coast Guard Distinguished Pistol Shot Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Distinguished_Pistol_Shot_Ribbon.png"
end
Medal.find_or_create_by(uuid: "ece2fd46-c9b0-492f-8bfb-e96211d255d0") do |medal|
  medal.name = "Coast Guard Silver Pistol Excellence-in-Competition Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Silver_Pistol_Shot_EIC_Ribbon.png"
end
Medal.find_or_create_by(uuid: "06e9c876-85bd-4ebf-82df-6cc4fbcffafb") do |medal|
  medal.name = "Coast Guard Bronze Pistol Excellence-in-Competition Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Bronze_Pistol_Shot_EIC_Ribbon.png"
end
Medal.find_or_create_by(uuid: "9f853057-b6db-46a1-9ea4-3b71a1c9e71e") do |medal|
  medal.name = "Navy Expert Pistol Shot Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Expert_Pistol_Shot_Ribbon.png"
end
Medal.find_or_create_by(uuid: "c1136e7e-bfd3-40b1-8f63-aa68ec964306") do |medal|
  medal.name = "Coast Guard Expert Pistol Shot Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Expert_Pistol_Shot_Ribbon.png"
end
Medal.find_or_create_by(uuid: "35c8ddec-31f5-4b39-939d-12c37477c2c0") do |medal|
  medal.name = "Navy Pistol Marksmanship Ribbon with Sharpshooter Device"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/United_States_Navy_Pistol_Marksmanship_Ribbon_with_sharpshooter_device.png"
end
Medal.find_or_create_by(uuid: "a699f93b-935f-4fb6-8132-1331d617bd72") do |medal|
  medal.name = "Coast Guard Pistol Marksmanship Ribbon with Sharpshooter Device"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USCG_Sharpshooter_Pistol_Ribbon.png"
end
Medal.find_or_create_by(uuid: "236f2e14-a743-413d-b3dd-2f325961821a") do |medal|
  medal.name = "Navy Pistol Marksmanship Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Navy_Pistol_Marksmanship_Ribbon.png"
end
Medal.find_or_create_by(uuid: "f24e036d-7894-4f7a-bb43-b3bfbb086f85") do |medal|
  medal.name = "Coast Guard Pistol Marksmanship Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Coast_Guard_Recruiting_Service_Ribbon.png"
end
Medal.find_or_create_by(uuid: "810839b1-ff8f-4edd-8cfb-0c92f23046bc") do |medal|
  medal.name = "Certificate of Merit Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Certificate_of_Merit_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "5b5459e3-031a-4b4c-ba86-3d86c5661ff9") do |medal|
  medal.name = "Marine Corps Brevet Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Marine_Corps_Brevet_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "8a8a23ac-6b1c-4725-be45-a77f694ff9c0") do |medal|
  medal.name = "Specially Meritorious Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Specially_Meritorious_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "b78e90db-4e2b-46ee-805a-3948f063aa07") do |medal|
  medal.name = "Reserve Special Commendation Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Reserve_Special_Commendation_Ribbon.png"
end
Medal.find_or_create_by(uuid: "b9a10fee-38a9-41f2-9f4f-8828270ed5be") do |medal|
  medal.name = "Army Wound Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Wound_Ribbon.png"
end
Medal.find_or_create_by(uuid: "648f3553-b59a-4542-aab8-e8593f59e467") do |medal|
  medal.name = "Transportation Distinguished Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/USA_DOT_Distinguished_Service_Medal.png"
end
Medal.find_or_create_by(uuid: "6f30d49e-8aa0-43dd-a792-1833ceb1f9eb") do |medal|
  medal.name = "Secretary of Transportation Outstanding Unit Award"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Secretary_of_Transportation_Outstanding_Unit_Award.png"
end
Medal.find_or_create_by(uuid: "34f1dafe-c28b-4cb9-88a4-6118b22d6aca") do |medal|
  medal.name = "Coast Guard Bicentennial Unit Commendation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Bicentennial_Unit_Commendation_ribbon.png"
end
Medal.find_or_create_by(uuid: "3481087b-75cb-4096-a82f-057d43a37ed6") do |medal|
  medal.name = "West Indies Naval Campaign Medal (Sampson Medal)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/West_Indies_Naval_Campaign_ribbon.png"
end
Medal.find_or_create_by(uuid: "a21fc653-be4d-4fb2-be6a-60b57bbea276") do |medal|
  medal.name = "Battle of Manila Bay Medal (Dewey Medal)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/battle_of_manila_bay.png"
end
Medal.find_or_create_by(uuid: "c94743fa-7017-4101-b46f-ba3e926a6cb8") do |medal|
  medal.name = "United States Antarctic Expedition Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/United_States_Antarctic_Expedition_Medal_(1939-1941).png"
end
Medal.find_or_create_by(uuid: "634b8c0b-5c33-4e9f-90ef-407f3e9ca0ac") do |medal|
  medal.name = "Civil War Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Civil_War_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "145b33e4-6f57-4b74-978f-53ca57d79773") do |medal|
  medal.name = "Indian Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Indian_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "af584071-be56-433b-a788-3603a7c69228") do |medal|
  medal.name = "China Campaign Medal (Army)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/China_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "46051790-7577-4a0a-a5ac-ba77cc5b08bb") do |medal|
  medal.name = "China Relief Expedition Medal (Navy)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/China_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "2d548776-5d25-4024-9b26-b6620dfc840d") do |medal|
  medal.name = "Spanish Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Spanish_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "9608fb4d-077c-4163-9922-257788b68016") do |medal|
  medal.name = "West Indies Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/West_Indies_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "7dcdc25f-3172-4a20-ae15-94272913c4a2") do |medal|
  medal.name = "Spanish War Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Spanish_War_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "5f74b3ad-4c54-4097-9eb3-c47ed4652202") do |medal|
  medal.name = "Army of Cuban Occupation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_of_Cuban_Occupation_ribbon.png"
end
Medal.find_or_create_by(uuid: "e7bd996c-f5a2-409c-a83e-911185998d30") do |medal|
  medal.name = "Cuban Pacification Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_of_Cuban_Pacification_service_ribbon.png"
end
Medal.find_or_create_by(uuid: "e57616a0-39a5-45bb-a869-b132fe3b5a7f") do |medal|
  medal.name = "Army of Puerto Rican Occupation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_of_Puerto_Rican_Occupation_ribbon.png"
end
Medal.find_or_create_by(uuid: "58df170a-5796-437f-8be2-5b448a41936f") do |medal|
  medal.name = "Philippine Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Philippine_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "1aea3b84-2e30-4e00-83b5-7df4f411b9c3") do |medal|
  medal.name = "Philippine Congressional Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Philippine_Congressional_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "f992cb0b-df1d-4363-b3d5-395b9fa715f0") do |medal|
  medal.name = "Nicaraguan Campaign Medal (1912)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Nicaraguan_Campaign_ribbon_1912.png"
end
Medal.find_or_create_by(uuid: "f2d517f7-e279-407a-ad3d-bfb159b6577a") do |medal|
  medal.name = "Dominican Campaign Medal (1916)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Dominican_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "fc053670-bbda-493c-8f15-3a7603e1b048") do |medal|
  medal.name = "Haitian Campaign Medal (1915 & 1920-1921)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Haitian_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "0d60a146-1bd4-4d45-a593-1816e4d2c3fa") do |medal|
  medal.name = "Nicaraguan Campaign Medal (1926-1930)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Nicaraguan_Campaign_ribbon_1933.png"
end
Medal.find_or_create_by(uuid: "8b74942e-8963-4bca-9c0e-df21833adccd") do |medal|
  medal.name = "Yangtze Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Yangtze_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "57239da0-8dbb-451d-a754-2a4fd335fffc") do |medal|
  medal.name = "Mexican Service Medal (1911-1917)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Mexican_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "bac37f81-5504-416b-b718-cb26df38d0d5") do |medal|
  medal.name = "Mexican Border Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Mexican_Border_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "a2f8ba38-6449-45ee-b805-cb252554b0d6") do |medal|
  medal.name = "World War I Victory Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/World_War_I_Victory_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "76e5acf7-e719-4ab5-a72c-996293054402") do |medal|
  medal.name = "Army of Occupation of Germany Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_of_Occupation_of_Germany_ribbon.png"
end
Medal.find_or_create_by(uuid: "a62a86e8-3d20-4283-aaf5-621f79f8a451") do |medal|
  medal.name = "China Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/China_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044") do |medal|
  medal.name = "American Defense Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/American_Defense_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "f749e167-d91e-4434-a85b-049b5c311a59") do |medal|
  medal.name = "Women's Army Corps Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Women's_Army_Corps_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "c713049e-503a-458d-8406-d54ebd0663d9") do |medal|
  medal.name = "American Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/American_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "c5306516-cfb1-473d-b6d5-5db246dfd744") do |medal|
  medal.name = "Asiatic-Pacific Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Asiatic-Pacific_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "a09cf6c0-5518-42fb-bec3-9708fa88a49e") do |medal|
  medal.name = "European-African-Middle Eastern Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/European-African-Middle_Eastern_Campaign_ribbon.png"
end
Medal.find_or_create_by(uuid: "6593f000-73ed-4f09-ac27-5093355a639a") do |medal|
  medal.name = "World War II Victory Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/World_War_II_Victory_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "a5b5e2dc-335b-47c0-9fce-6d5ebc260a24") do |medal|
  medal.name = "Medal for Humane Action"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Medal_for_Humane_Action_ribbon.png"
end
Medal.find_or_create_by(uuid: "7477547b-7bce-4a6b-9698-ac0e234588db") do |medal|
  medal.name = "Army of Occupation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_of_Occupation_ribbon.png"
end
Medal.find_or_create_by(uuid: "635b6e2a-38ce-4ba5-8df2-c4e7a4024e4e") do |medal|
  medal.name = "Navy Occupation Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_of_Occupation_ribbon.png"
end
Medal.find_or_create_by(uuid: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5") do |medal|
  medal.name = "Korean Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Korean_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "70f323c7-e16f-4ef6-bbc5-16fb121171b0") do |medal|
  medal.name = "Vietnam Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "94110707-3724-4bc2-b42b-76bdeef97375") do |medal|
  medal.name = "Southwest Asia Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Southwest_Asia_Service_Medal_ribbon_(1991%E2%80%932016).png"
end
Medal.find_or_create_by(uuid: "f8c47751-a51d-4579-bdf2-b93e10394ea2") do |medal|
  medal.name = "Kosovo Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Kosovo_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "a0187e2e-c05d-47b9-a555-76a8336a9856") do |medal|
  medal.name = "Iraq Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Iraq_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "aa6ddfef-b557-48e8-a302-8a73e7992aab") do |medal|
  medal.name = "Naval Reserve Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/U.S._Naval_Reserve_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "e06ae93e-aa90-41dd-9dbb-a34de8cfd014") do |medal|
  medal.name = "Marine Corps Reserve Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Marine_Corps_Reserve_Ribbon.png"
end
Medal.find_or_create_by(uuid: "9cf2ea6c-62bf-4a74-8525-70670b7d4943") do |medal|
  medal.name = "Fleet Marine Force Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Fleet_Marine_Force_Ribbon.png"
end
Medal.find_or_create_by(uuid: "eb8a3754-475b-4406-9b54-c869284c0d0b") do |medal|
  medal.name = "Naval Reserve Meritorious Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Naval_Reserve_Meritorious_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "f863739d-125a-4bcc-8a29-d0caf42c351a") do |medal|
  medal.name = "Air Force Military Training Instructor Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Military_Training_Instructor_Ribbon.png"
end
Medal.find_or_create_by(uuid: "67779e0a-6cab-47ee-8d83-dbe0a6a06513") do |medal|
  medal.name = "Air Force Recruiter Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Air_Force_Recruiter_Ribbon.png"
end
Medal.find_or_create_by(uuid: "ae4b8230-62bc-492b-8e86-005ff71a5c31") do |medal|
  medal.name = "Navy Distinguished Marksman and Pistol Shot Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Distinguished_Marksman_and_Pistol_Shot_Ribbon.png"
end
Medal.find_or_create_by(uuid: "45673942-c4ce-48ab-9265-7ebc1c2dc62c") do |medal|
  medal.name = "Navy Distinguished Marksman Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Distinguished_Marksmanship_Ribbon.png"
end
Medal.find_or_create_by(uuid: "1ea4875e-d11e-460c-a3ec-c0b8ff056c17") do |medal|
  medal.name = "Navy Distinguished Pistol Shot Ribbon"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Distinguished_Pistol_Shot_Ribbon.png"
end
Medal.find_or_create_by(uuid: "e829b999-2645-4bdd-9d89-6f0c3ff446a3") do |medal|
  medal.name = "Philippine Defense Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Philippine_Defense_ribbon.png"
end
Medal.find_or_create_by(uuid: "3cfc863b-d83a-4c6a-97ef-886580ddae59") do |medal|
  medal.name = "Philippine Liberation Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Philippine_Liberation.png"
end
Medal.find_or_create_by(uuid: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3") do |medal|
  medal.name = "Philippine Presidential Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Presidential_Unit_Citation_(Philippines).png"
end
Medal.find_or_create_by(uuid: "f12c2abe-569c-4809-8653-1b89714ce09f") do |medal|
  medal.name = "Republic of Korea Presidential Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Presidential_Unit_Citation_(Korea).png"
end
Medal.find_or_create_by(uuid: "3560c0af-293a-4986-824d-e0ded2169568") do |medal|
  medal.name = "RVN Presidential Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Presidential_Unit_Citation_(Vietnam).png"
end
Medal.find_or_create_by(uuid: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d") do |medal|
  medal.name = "RVN Gallantry Cross Unit Citation"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_gallantry_cross_unit_award-3d.png"
end
Medal.find_or_create_by(uuid: "8de6c236-323a-498f-8a93-7e985c703130") do |medal|
  medal.name = "RVN Civil Actions Medal Unit Citation (1st class)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Civil_Actions.png"
end
Medal.find_or_create_by(uuid: "d2fce20c-f399-4177-bbe7-bd354a07c3bf") do |medal|
  medal.name = "United Nations Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/United_Nations_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "6e889f7e-3255-4577-9536-9e4cca63e29b") do |medal|
  medal.name = "NATO Medal (Yugoslavia)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/NATO_Medal_Yugoslavia_ribbon_bar.png"
end
Medal.find_or_create_by(uuid: "99f76b1b-2f34-45db-9107-cdcdcef3db32") do |medal|
  medal.name = "NATO Medal (Kosovo)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/NATO_Medal_w_S%C5%82uz%CC%87bie_Pokoju_i_Wolnos%CC%81ci_BAR.png"
end
Medal.find_or_create_by(uuid: "d732b694-def7-418c-98a1-c64d92de0ffc") do |medal|
  medal.name = "Multinational Force and Observers Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Multinational_force_and_obeserver.png"
end
Medal.find_or_create_by(uuid: "00e9c865-068b-4237-baa7-87ebb25f5dba") do |medal|
  medal.name = "Inter-American Defense Board Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Inter-american_defense_board_medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "600a7c2e-46af-43df-9632-d506d3b79b6c") do |medal|
  medal.name = "RVN Campaign Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Campaign_Medal_ribbon_with_60-_clasp.png"
Medal.find_or_create_by(uuid: "63b8b799-1832-4a17-8b83-10fa0571b064") do |medal|
  medal.name = "Kuwait Liberation Medal (Saudi Arabia)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Kuwait_Liberation_Medal_(Saudi_Arabia)_ribbon.png"
end
Medal.find_or_create_by(uuid: "b3582967-4f67-4ef1-8045-5809c4fe71e3") do |medal|
  medal.name = "Kuwait Liberation Medal (Kuwait)"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Kuwait_Liberation_Medal_(Kuwait)_ribbon.png"
end
Medal.find_or_create_by(uuid: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1") do |medal|
  medal.name = "Republic of Korea War Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Republic_of_Korea_War_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "c3364472-8f56-4720-b73e-2714afb9b976") do |medal|
  medal.name = "Vietnam Armed Forces Honor Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Armed_Forces_Honor_Medal_Ribbon.png"
end
Medal.find_or_create_by(uuid: "bf9144b1-3cab-4657-81fc-8fd7023aa004") do |medal|
  medal.name = "Vietnam Meritorious Service, Army"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Army_Meritorious_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "389b134e-cfac-46ee-8311-b47833c89d66") do |medal|
  medal.name = "Vietnam Meritorious Service, Navy"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Navy_Meritorious_Service_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "f71c925d-9245-4caa-80cf-c9f216089b17") do |medal|
  medal.name = "Vietnam Wound Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Wound_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "b67457fc-1164-420f-a907-e0a04969be02") do |medal|
  medal.name = "Vietnam Technical Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Vietnam_Technical_Service_Medal_ribbon-First_Class.png"
end
Medal.find_or_create_by(uuid: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91") do |medal|
  medal.name = "American Theater Campaign"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/American_Campaign_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "cf3d6aff-70db-4d56-9cae-16c2ca4c5281") do |medal|
  medal.name = "Gold Lifesaving Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Gold_Lifesaving_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "130a96c8-b6ba-4459-9aa3-8ebb612eae95") do |medal|
  medal.name = "Silver Lifesaving Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Silver_Lifesaving_Medal_ribbon.png"
end
Medal.find_or_create_by(uuid: "568265e1-5304-4fde-bf97-7ff2067d0fc6") do |medal|
  medal.name = "Department of Transportation Meritorious Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/DOT_Meritorious_Achievement_Award.png"
end
Medal.find_or_create_by(uuid: "b2132a1f-0645-42dc-b76d-57f09463ecc4") do |medal|
  medal.name = "Department of Transportation Superior Achievement Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/DOT_Superior_Achievement_Award.png"
end
Medal.find_or_create_by(uuid: "3f363e12-2cd4-426a-83ce-71afb3017ef1") do |medal|
  medal.name = "United Nations Service Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/United_Nations_Service_Medal_Korea_ribbon.png"
end
Medal.find_or_create_by(uuid: "b086f70d-1942-4043-897a-8259199ae874") do |medal|
  medal.name = "Army Reserve Components Overseas Training"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Army_Reserve_Overseas_Training_Ribbon.png"
end
Medal.find_or_create_by(uuid: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17") do |medal|
  medal.name = "Cold War Victory Medal"
  medal.image = "https://memorial-imgs.s3.amazonaws.com/military/medals/Cold_War_Victory_Medal_ribbon.png"
end

## MILITARY MEDALS

@navy.military_branch_medals.create({medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51", order: 1}) unless @navy.military_branch_medals.find_by(medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51").present?
@navy.military_branch_medals.create({medal_id: "7023a692-1956-4c08-aad9-79e2f8af9805", order: 2}) unless @navy.military_branch_medals.find_by(medal_id: "7023a692-1956-4c08-aad9-79e2f8af9805").present?
@navy.military_branch_medals.create({medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847", order: 3}) unless @navy.military_branch_medals.find_by(medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847").present?
@navy.military_branch_medals.create({medal_id: "abf227ce-1228-4a97-b646-fc07ace2b0e6", order: 4}) unless @navy.military_branch_medals.find_by(medal_id: "abf227ce-1228-4a97-b646-fc07ace2b0e6").present?
@navy.military_branch_medals.create({medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1", order: 5}) unless @navy.military_branch_medals.find_by(medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1").present?
@navy.military_branch_medals.create({medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b", order: 6}) unless @navy.military_branch_medals.find_by(medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b").present?
@navy.military_branch_medals.create({medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae", order: 7}) unless @navy.military_branch_medals.find_by(medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae").present?
@navy.military_branch_medals.create({medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad", order: 8}) unless @navy.military_branch_medals.find_by(medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad").present?
@navy.military_branch_medals.create({medal_id: "ccb2e948-3490-4afa-8582-c61f7a121ad0", order: 9}) unless @navy.military_branch_medals.find_by(medal_id: "ccb2e948-3490-4afa-8582-c61f7a121ad0").present?
@navy.military_branch_medals.create({medal_id: "eb803254-124a-4542-8869-5af13a48371f", order: 10}) unless @navy.military_branch_medals.find_by(medal_id: "eb803254-124a-4542-8869-5af13a48371f").present?
## Purple heart
@navy.military_branch_medals.create({medal_id: "c8e28734-abd2-431e-9403-30b24607d89f", order: 11}) unless @navy.military_branch_medals.find_by(medal_id: "c8e28734-abd2-431e-9403-30b24607d89f").present?
@navy.military_branch_medals.create({medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f", order: 12}) unless @navy.military_branch_medals.find_by(medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f").present?
@navy.military_branch_medals.create({medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02", order: 13}) unless @navy.military_branch_medals.find_by(medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02").present?
@navy.military_branch_medals.create({medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644", order: 14}) unless @navy.military_branch_medals.find_by(medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644").present?
@navy.military_branch_medals.create({medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa", order: 15}) unless @navy.military_branch_medals.find_by(medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa").present?
@navy.military_branch_medals.create({medal_id: "838fb945-78d6-4993-9472-cfc3cb920000", order: 16}) unless @navy.military_branch_medals.find_by(medal_id: "838fb945-78d6-4993-9472-cfc3cb920000").present?
@navy.military_branch_medals.create({medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875", order: 17}) unless @navy.military_branch_medals.find_by(medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875").present?
@navy.military_branch_medals.create({medal_id: "17a39789-dc47-4685-80b4-9656c2c96961", order: 18}) unless @navy.military_branch_medals.find_by(medal_id: "17a39789-dc47-4685-80b4-9656c2c96961").present?
@navy.military_branch_medals.create({medal_id: "17ea6a56-6ba1-4b04-9185-5148780864c0", order: 19}) unless @navy.military_branch_medals.find_by(medal_id: "17ea6a56-6ba1-4b04-9185-5148780864c0").present?
## Presidential Unit Citation
@navy.military_branch_medals.create({medal_id: "062975f0-4bae-48c3-83ab-e1a8122697a5", order: 20}) unless @navy.military_branch_medals.find_by(medal_id: "062975f0-4bae-48c3-83ab-e1a8122697a5").present?
@navy.military_branch_medals.create({medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512", order: 21}) unless @navy.military_branch_medals.find_by(medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512").present?
@navy.military_branch_medals.create({medal_id: "37055f3b-b9dc-4b77-83e6-16adc676bc85", order: 22}) unless @navy.military_branch_medals.find_by(medal_id: "37055f3b-b9dc-4b77-83e6-16adc676bc85").present?
@navy.military_branch_medals.create({medal_id: "278373b1-2c05-4b83-a486-24a417115922", order: 23}) unless @navy.military_branch_medals.find_by(medal_id: "278373b1-2c05-4b83-a486-24a417115922").present?
@navy.military_branch_medals.create({medal_id: "f04a4729-52f4-4113-9835-1767b065fd0e", order: 24}) unless @navy.military_branch_medals.find_by(medal_id: "f04a4729-52f4-4113-9835-1767b065fd0e").present?
@navy.military_branch_medals.create({medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0", order: 25}) unless @navy.military_branch_medals.find_by(medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0").present?
@navy.military_branch_medals.create({medal_id: "f8ee7995-dac4-410a-b254-35f0ff293bf8", order: 26}) unless @navy.military_branch_medals.find_by(medal_id: "f8ee7995-dac4-410a-b254-35f0ff293bf8").present?
@navy.military_branch_medals.create({medal_id: "eb8a3754-475b-4406-9b54-c869284c0d0b", order: 27}) unless @navy.military_branch_medals.find_by(medal_id: "eb8a3754-475b-4406-9b54-c869284c0d0b").present?
@navy.military_branch_medals.create({medal_id: "9cf2ea6c-62bf-4a74-8525-70670b7d4943", order: 28}) unless @navy.military_branch_medals.find_by(medal_id: "9cf2ea6c-62bf-4a74-8525-70670b7d4943").present?
@navy.military_branch_medals.create({medal_id: "af663e72-657f-4a7f-a5ab-54a38a3dcf28", order: 29}) unless @navy.military_branch_medals.find_by(medal_id: "af663e72-657f-4a7f-a5ab-54a38a3dcf28").present?
## China Service
@navy.military_branch_medals.create({medal_id: "a62a86e8-3d20-4283-aaf5-621f79f8a451", order: 30}) unless @navy.military_branch_medals.find_by(medal_id: "a62a86e8-3d20-4283-aaf5-621f79f8a451").present?
@navy.military_branch_medals.create({medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044", order: 31}) unless @navy.military_branch_medals.find_by(medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044").present?
@navy.military_branch_medals.create({medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91", order: 32}) unless @navy.military_branch_medals.find_by(medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91").present?
@navy.military_branch_medals.create({medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744", order: 33}) unless @navy.military_branch_medals.find_by(medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744").present?
@navy.military_branch_medals.create({medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e", order: 34}) unless @navy.military_branch_medals.find_by(medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e").present?
@navy.military_branch_medals.create({medal_id: "6593f000-73ed-4f09-ac27-5093355a639a", order: 35}) unless @navy.military_branch_medals.find_by(medal_id: "6593f000-73ed-4f09-ac27-5093355a639a").present?
@navy.military_branch_medals.create({medal_id: "635b6e2a-38ce-4ba5-8df2-c4e7a4024e4e", order: 36}) unless @navy.military_branch_medals.find_by(medal_id: "635b6e2a-38ce-4ba5-8df2-c4e7a4024e4e").present?
@navy.military_branch_medals.create({medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17", order: 37}) unless @navy.military_branch_medals.find_by(medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17").present?
@navy.military_branch_medals.create({medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5", order: 38}) unless @navy.military_branch_medals.find_by(medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5").present?
@navy.military_branch_medals.create({medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1", order: 39}) unless @navy.military_branch_medals.find_by(medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1").present?
## Armed Forces Expeditionary
@navy.military_branch_medals.create({medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793", order: 40}) unless @navy.military_branch_medals.find_by(medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793").present?
@navy.military_branch_medals.create({medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0", order: 41}) unless @navy.military_branch_medals.find_by(medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0").present?
@navy.military_branch_medals.create({medal_id: "94110707-3724-4bc2-b42b-76bdeef97375", order: 42}) unless @navy.military_branch_medals.find_by(medal_id: "94110707-3724-4bc2-b42b-76bdeef97375").present?
@navy.military_branch_medals.create({medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2", order: 43}) unless @navy.military_branch_medals.find_by(medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2").present?
@navy.military_branch_medals.create({medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca", order: 44}) unless @navy.military_branch_medals.find_by(medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca").present?
@navy.military_branch_medals.create({medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856", order: 45}) unless @navy.military_branch_medals.find_by(medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856").present?
@navy.military_branch_medals.create({medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6", order: 46}) unless @navy.military_branch_medals.find_by(medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6").present?
@navy.military_branch_medals.create({medal_id: "04806fca-98d4-405d-99e0-77cce071f358", order: 47}) unless @navy.military_branch_medals.find_by(medal_id: "04806fca-98d4-405d-99e0-77cce071f358").present?
@navy.military_branch_medals.create({medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d", order: 48}) unless @navy.military_branch_medals.find_by(medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d").present?
@navy.military_branch_medals.create({medal_id: "7503c083-4c06-419e-8014-120f7247c91e", order: 49}) unless @navy.military_branch_medals.find_by(medal_id: "7503c083-4c06-419e-8014-120f7247c91e").present?
## Armed Forces Service
@navy.military_branch_medals.create({medal_id: "ff3df46f-50fd-477b-8afe-df141a409986", order: 50}) unless @navy.military_branch_medals.find_by(medal_id: "ff3df46f-50fd-477b-8afe-df141a409986").present?
@navy.military_branch_medals.create({medal_id: "1328a960-b79e-4d33-8712-fe45c8509816", order: 51}) unless @navy.military_branch_medals.find_by(medal_id: "1328a960-b79e-4d33-8712-fe45c8509816").present?
@navy.military_branch_medals.create({medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677", order: 52}) unless @navy.military_branch_medals.find_by(medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677").present?
@navy.military_branch_medals.create({medal_id: "43fc3a75-db23-4bd6-a15c-78c8817b5cd3", order: 53}) unless @navy.military_branch_medals.find_by(medal_id: "43fc3a75-db23-4bd6-a15c-78c8817b5cd3").present?
@navy.military_branch_medals.create({medal_id: "f52cff5b-99a5-4297-93b1-3d871f002bce", order: 54}) unless @navy.military_branch_medals.find_by(medal_id: "f52cff5b-99a5-4297-93b1-3d871f002bce").present?
@navy.military_branch_medals.create({medal_id: "3d9bb96a-7f4e-4f33-9864-f391e15a402e", order: 55}) unless @navy.military_branch_medals.find_by(medal_id: "3d9bb96a-7f4e-4f33-9864-f391e15a402e").present?
@navy.military_branch_medals.create({medal_id: "a9e4e04c-802f-431c-a274-6348d9eca92b", order: 56}) unless @navy.military_branch_medals.find_by(medal_id: "a9e4e04c-802f-431c-a274-6348d9eca92b").present?
@navy.military_branch_medals.create({medal_id: "820d28fd-7f94-4b52-bcf3-a0c94c6fff2f", order: 57}) unless @navy.military_branch_medals.find_by(medal_id: "820d28fd-7f94-4b52-bcf3-a0c94c6fff2f").present?
@navy.military_branch_medals.create({medal_id: "30d156c2-269e-4eb9-b788-035dd7ac9f7f", order: 58}) unless @navy.military_branch_medals.find_by(medal_id: "30d156c2-269e-4eb9-b788-035dd7ac9f7f").present?
@navy.military_branch_medals.create({medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528", order: 59}) unless @navy.military_branch_medals.find_by(medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528").present?
@navy.military_branch_medals.create({medal_id: "aa6ddfef-b557-48e8-a302-8a73e7992aab", order: 60}) unless @navy.military_branch_medals.find_by(medal_id: "aa6ddfef-b557-48e8-a302-8a73e7992aab").present?
@navy.military_branch_medals.create({medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3", order: 61}) unless @navy.military_branch_medals.find_by(medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3").present?
@navy.military_branch_medals.create({medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59", order: 62}) unless @navy.military_branch_medals.find_by(medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59").present?
## TODO battle participation
# @navy.military_branch_medals.create({medal_id: "", order: 63}) unless @navy.military_branch_medals.find_by(medal_id: "").present?
@navy.military_branch_medals.create({medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3", order: 64}) unless @navy.military_branch_medals.find_by(medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3").present?
@navy.military_branch_medals.create({medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f", order: 65}) unless @navy.military_branch_medals.find_by(medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f").present?
@navy.military_branch_medals.create({medal_id: "3560c0af-293a-4986-824d-e0ded2169568", order: 66}) unless @navy.military_branch_medals.find_by(medal_id: "3560c0af-293a-4986-824d-e0ded2169568").present?
@navy.military_branch_medals.create({medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d", order: 67}) unless @navy.military_branch_medals.find_by(medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d").present?
@navy.military_branch_medals.create({medal_id: "8de6c236-323a-498f-8a93-7e985c703130", order: 68}) unless @navy.military_branch_medals.find_by(medal_id: "8de6c236-323a-498f-8a93-7e985c703130").present?
@navy.military_branch_medals.create({medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1", order: 69}) unless @navy.military_branch_medals.find_by(medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1").present?
@navy.military_branch_medals.create({medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf", order: 70}) unless @navy.military_branch_medals.find_by(medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf").present?
@navy.military_branch_medals.create({medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b", order: 71}) unless @navy.military_branch_medals.find_by(medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b").present?
@navy.military_branch_medals.create({medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32", order: 72}) unless @navy.military_branch_medals.find_by(medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32").present?
@navy.military_branch_medals.create({medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc", order: 73}) unless @navy.military_branch_medals.find_by(medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc").present?
@navy.military_branch_medals.create({medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba", order: 74}) unless @navy.military_branch_medals.find_by(medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba").present?
@navy.military_branch_medals.create({medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c", order: 75}) unless @navy.military_branch_medals.find_by(medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c").present?
@navy.military_branch_medals.create({medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064", order: 76}) unless @navy.military_branch_medals.find_by(medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064").present?
@navy.military_branch_medals.create({medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3", order: 77}) unless @navy.military_branch_medals.find_by(medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3").present?
@navy.military_branch_medals.create({medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1", order: 78}) unless @navy.military_branch_medals.find_by(medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1").present?
@navy.military_branch_medals.create({medal_id: "aa296c1c-638d-496b-afe6-a5564cf9e881", order: 79}) unless @navy.military_branch_medals.find_by(medal_id: "aa296c1c-638d-496b-afe6-a5564cf9e881").present?
@navy.military_branch_medals.create({medal_id: "9f853057-b6db-46a1-9ea4-3b71a1c9e71e", order: 80}) unless @navy.military_branch_medals.find_by(medal_id: "9f853057-b6db-46a1-9ea4-3b71a1c9e71e").present?
@navy.military_branch_medals.create({medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17", order: 81}) unless @navy.military_branch_medals.find_by(medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17").present?
@navy.military_branch_medals.create({medal_id: "c3364472-8f56-4720-b73e-2714afb9b976", order: 82}) unless @navy.military_branch_medals.find_by(medal_id: "c3364472-8f56-4720-b73e-2714afb9b976").present?
@navy.military_branch_medals.create({medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004", order: 83}) unless @navy.military_branch_medals.find_by(medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004").present?
@navy.military_branch_medals.create({medal_id: "389b134e-cfac-46ee-8311-b47833c89d66", order: 84}) unless @navy.military_branch_medals.find_by(medal_id: "389b134e-cfac-46ee-8311-b47833c89d66").present?
@navy.military_branch_medals.create({medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17", order: 85}) unless @navy.military_branch_medals.find_by(medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17").present?
## TODO Vietnam Air Service Medal
# @navy.military_branch_medals.create({medal_id: "", order: 86}) unless @navy.military_branch_medals.find_by(medal_id: "").present?
## TODO Vietnam Naval Service Medal
# @navy.military_branch_medals.create({medal_id: "", order: 87}) unless @navy.military_branch_medals.find_by(medal_id: "").present?
@navy.military_branch_medals.create({medal_id: "b67457fc-1164-420f-a907-e0a04969be02", order: 88}) unless @navy.military_branch_medals.find_by(medal_id: "b67457fc-1164-420f-a907-e0a04969be02").present?

## Marines
@marines.military_branch_medals.create({medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51", order: 1}) unless @marines.military_branch_medals.find_by(medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51").present?
@marines.military_branch_medals.create({medal_id: "7023a692-1956-4c08-aad9-79e2f8af9805", order: 2}) unless @marines.military_branch_medals.find_by(medal_id: "7023a692-1956-4c08-aad9-79e2f8af9805").present?
@marines.military_branch_medals.create({medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847", order: 3}) unless @marines.military_branch_medals.find_by(medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847").present?
@marines.military_branch_medals.create({medal_id: "abf227ce-1228-4a97-b646-fc07ace2b0e6", order: 4}) unless @marines.military_branch_medals.find_by(medal_id: "abf227ce-1228-4a97-b646-fc07ace2b0e6").present?
@marines.military_branch_medals.create({medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1", order: 5}) unless @marines.military_branch_medals.find_by(medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1").present?
@marines.military_branch_medals.create({medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b", order: 6}) unless @marines.military_branch_medals.find_by(medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b").present?
@marines.military_branch_medals.create({medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae", order: 7}) unless @marines.military_branch_medals.find_by(medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae").present?
@marines.military_branch_medals.create({medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad", order: 8}) unless @marines.military_branch_medals.find_by(medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad").present?
@marines.military_branch_medals.create({medal_id: "ccb2e948-3490-4afa-8582-c61f7a121ad0", order: 9}) unless @marines.military_branch_medals.find_by(medal_id: "ccb2e948-3490-4afa-8582-c61f7a121ad0").present?
@marines.military_branch_medals.create({medal_id: "eb803254-124a-4542-8869-5af13a48371f", order: 10}) unless @marines.military_branch_medals.find_by(medal_id: "eb803254-124a-4542-8869-5af13a48371f").present?
## Purple heart
@marines.military_branch_medals.create({medal_id: "c8e28734-abd2-431e-9403-30b24607d89f", order: 11}) unless @marines.military_branch_medals.find_by(medal_id: "c8e28734-abd2-431e-9403-30b24607d89f").present?
@marines.military_branch_medals.create({medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f", order: 12}) unless @marines.military_branch_medals.find_by(medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f").present?
@marines.military_branch_medals.create({medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02", order: 13}) unless @marines.military_branch_medals.find_by(medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02").present?
@marines.military_branch_medals.create({medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644", order: 14}) unless @marines.military_branch_medals.find_by(medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644").present?
@marines.military_branch_medals.create({medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa", order: 15}) unless @marines.military_branch_medals.find_by(medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa").present?
@marines.military_branch_medals.create({medal_id: "838fb945-78d6-4993-9472-cfc3cb920000", order: 16}) unless @marines.military_branch_medals.find_by(medal_id: "838fb945-78d6-4993-9472-cfc3cb920000").present?
@marines.military_branch_medals.create({medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875", order: 17}) unless @marines.military_branch_medals.find_by(medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875").present?
@marines.military_branch_medals.create({medal_id: "17a39789-dc47-4685-80b4-9656c2c96961", order: 18}) unless @marines.military_branch_medals.find_by(medal_id: "17a39789-dc47-4685-80b4-9656c2c96961").present?
@marines.military_branch_medals.create({medal_id: "17ea6a56-6ba1-4b04-9185-5148780864c0", order: 19}) unless @marines.military_branch_medals.find_by(medal_id: "17ea6a56-6ba1-4b04-9185-5148780864c0").present?
## Presidential Unit Citation
@marines.military_branch_medals.create({medal_id: "062975f0-4bae-48c3-83ab-e1a8122697a5", order: 20}) unless @marines.military_branch_medals.find_by(medal_id: "062975f0-4bae-48c3-83ab-e1a8122697a5").present?
@marines.military_branch_medals.create({medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512", order: 21}) unless @marines.military_branch_medals.find_by(medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512").present?
@marines.military_branch_medals.create({medal_id: "37055f3b-b9dc-4b77-83e6-16adc676bc85", order: 22}) unless @marines.military_branch_medals.find_by(medal_id: "37055f3b-b9dc-4b77-83e6-16adc676bc85").present?
@marines.military_branch_medals.create({medal_id: "278373b1-2c05-4b83-a486-24a417115922", order: 23}) unless @marines.military_branch_medals.find_by(medal_id: "278373b1-2c05-4b83-a486-24a417115922").present?
@marines.military_branch_medals.create({medal_id: "f04a4729-52f4-4113-9835-1767b065fd0e", order: 24}) unless @marines.military_branch_medals.find_by(medal_id: "f04a4729-52f4-4113-9835-1767b065fd0e").present?
@marines.military_branch_medals.create({medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0", order: 25}) unless @marines.military_branch_medals.find_by(medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0").present?
@marines.military_branch_medals.create({medal_id: "523aa24c-2b64-4369-ae6a-da3a1c80a12d", order: 26}) unless @marines.military_branch_medals.find_by(medal_id: "523aa24c-2b64-4369-ae6a-da3a1c80a12d").present?
@marines.military_branch_medals.create({medal_id: "501ffbe0-6f39-4f42-8cdf-e9392180fb84", order: 27}) unless @marines.military_branch_medals.find_by(medal_id: "501ffbe0-6f39-4f42-8cdf-e9392180fb84").present?
@marines.military_branch_medals.create({medal_id: "7ff46d72-dfd1-44b3-8cc2-3d4b841f86e9", order: 28}) unless @marines.military_branch_medals.find_by(medal_id: "7ff46d72-dfd1-44b3-8cc2-3d4b841f86e9").present?
@marines.military_branch_medals.create({medal_id: "af663e72-657f-4a7f-a5ab-54a38a3dcf28", order: 29}) unless @marines.military_branch_medals.find_by(medal_id: "af663e72-657f-4a7f-a5ab-54a38a3dcf28").present?
## China Service
@marines.military_branch_medals.create({medal_id: "a62a86e8-3d20-4283-aaf5-621f79f8a451", order: 30}) unless @marines.military_branch_medals.find_by(medal_id: "a62a86e8-3d20-4283-aaf5-621f79f8a451").present?
@marines.military_branch_medals.create({medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044", order: 31}) unless @marines.military_branch_medals.find_by(medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044").present?
@marines.military_branch_medals.create({medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91", order: 32}) unless @marines.military_branch_medals.find_by(medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91").present?
@marines.military_branch_medals.create({medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744", order: 33}) unless @marines.military_branch_medals.find_by(medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744").present?
@marines.military_branch_medals.create({medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e", order: 34}) unless @marines.military_branch_medals.find_by(medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e").present?
@marines.military_branch_medals.create({medal_id: "6593f000-73ed-4f09-ac27-5093355a639a", order: 35}) unless @marines.military_branch_medals.find_by(medal_id: "6593f000-73ed-4f09-ac27-5093355a639a").present?
@marines.military_branch_medals.create({medal_id: "635b6e2a-38ce-4ba5-8df2-c4e7a4024e4e", order: 36}) unless @marines.military_branch_medals.find_by(medal_id: "635b6e2a-38ce-4ba5-8df2-c4e7a4024e4e").present?
@marines.military_branch_medals.create({medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17", order: 37}) unless @marines.military_branch_medals.find_by(medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17").present?
@marines.military_branch_medals.create({medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5", order: 38}) unless @marines.military_branch_medals.find_by(medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5").present?
@marines.military_branch_medals.create({medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1", order: 39}) unless @marines.military_branch_medals.find_by(medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1").present?
## Armed Forces Expeditionary
@marines.military_branch_medals.create({medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793", order: 40}) unless @marines.military_branch_medals.find_by(medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793").present?
@marines.military_branch_medals.create({medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0", order: 41}) unless @marines.military_branch_medals.find_by(medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0").present?
@marines.military_branch_medals.create({medal_id: "94110707-3724-4bc2-b42b-76bdeef97375", order: 42}) unless @marines.military_branch_medals.find_by(medal_id: "94110707-3724-4bc2-b42b-76bdeef97375").present?
@marines.military_branch_medals.create({medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2", order: 43}) unless @marines.military_branch_medals.find_by(medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2").present?
@marines.military_branch_medals.create({medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca", order: 44}) unless @marines.military_branch_medals.find_by(medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca").present?
@marines.military_branch_medals.create({medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856", order: 45}) unless @marines.military_branch_medals.find_by(medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856").present?
@marines.military_branch_medals.create({medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6", order: 46}) unless @marines.military_branch_medals.find_by(medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6").present?
@marines.military_branch_medals.create({medal_id: "04806fca-98d4-405d-99e0-77cce071f358", order: 47}) unless @marines.military_branch_medals.find_by(medal_id: "04806fca-98d4-405d-99e0-77cce071f358").present?
@marines.military_branch_medals.create({medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d", order: 48}) unless @marines.military_branch_medals.find_by(medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d").present?
@marines.military_branch_medals.create({medal_id: "7503c083-4c06-419e-8014-120f7247c91e", order: 49}) unless @marines.military_branch_medals.find_by(medal_id: "7503c083-4c06-419e-8014-120f7247c91e").present?
## Armed Forces Service
@marines.military_branch_medals.create({medal_id: "ff3df46f-50fd-477b-8afe-df141a409986", order: 50}) unless @marines.military_branch_medals.find_by(medal_id: "ff3df46f-50fd-477b-8afe-df141a409986").present?
@marines.military_branch_medals.create({medal_id: "1328a960-b79e-4d33-8712-fe45c8509816", order: 51}) unless @marines.military_branch_medals.find_by(medal_id: "1328a960-b79e-4d33-8712-fe45c8509816").present?
@marines.military_branch_medals.create({medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677", order: 52}) unless @marines.military_branch_medals.find_by(medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677").present?
@marines.military_branch_medals.create({medal_id: "43fc3a75-db23-4bd6-a15c-78c8817b5cd3", order: 53}) unless @marines.military_branch_medals.find_by(medal_id: "43fc3a75-db23-4bd6-a15c-78c8817b5cd3").present?
@marines.military_branch_medals.create({medal_id: "f52cff5b-99a5-4297-93b1-3d871f002bce", order: 54}) unless @marines.military_branch_medals.find_by(medal_id: "f52cff5b-99a5-4297-93b1-3d871f002bce").present?
@marines.military_branch_medals.create({medal_id: "a9e4e04c-802f-431c-a274-6348d9eca92b", order: 55}) unless @marines.military_branch_medals.find_by(medal_id: "a9e4e04c-802f-431c-a274-6348d9eca92b").present?
@marines.military_branch_medals.create({medal_id: "f89f7731-3f25-4b35-ad02-742eba7fe9b6", order: 56}) unless @marines.military_branch_medals.find_by(medal_id: "f89f7731-3f25-4b35-ad02-742eba7fe9b6").present?
@marines.military_branch_medals.create({medal_id: "d8522cd9-0fcc-48b0-ab07-c67aaffdcd3b", order: 57}) unless @marines.military_branch_medals.find_by(medal_id: "d8522cd9-0fcc-48b0-ab07-c67aaffdcd3b").present?
@marines.military_branch_medals.create({medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528", order: 58}) unless @marines.military_branch_medals.find_by(medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528").present?
@marines.military_branch_medals.create({medal_id: "e06ae93e-aa90-41dd-9dbb-a34de8cfd014", order: 59}) unless @marines.military_branch_medals.find_by(medal_id: "e06ae93e-aa90-41dd-9dbb-a34de8cfd014").present?
@marines.military_branch_medals.create({medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3", order: 60}) unless @marines.military_branch_medals.find_by(medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3").present?
@marines.military_branch_medals.create({medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59", order: 61}) unless @marines.military_branch_medals.find_by(medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59").present?
## TODO battle participation
# @marines.military_branch_medals.create({medal_id: "", order: 62}) unless @marines.military_branch_medals.find_by(medal_id: "").present?
@marines.military_branch_medals.create({medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3", order: 63}) unless @marines.military_branch_medals.find_by(medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3").present?
@marines.military_branch_medals.create({medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f", order: 64}) unless @marines.military_branch_medals.find_by(medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f").present?
@marines.military_branch_medals.create({medal_id: "3560c0af-293a-4986-824d-e0ded2169568", order: 65}) unless @marines.military_branch_medals.find_by(medal_id: "3560c0af-293a-4986-824d-e0ded2169568").present?
@marines.military_branch_medals.create({medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d", order: 66}) unless @marines.military_branch_medals.find_by(medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d").present?
@marines.military_branch_medals.create({medal_id: "8de6c236-323a-498f-8a93-7e985c703130", order: 67}) unless @marines.military_branch_medals.find_by(medal_id: "8de6c236-323a-498f-8a93-7e985c703130").present?
@marines.military_branch_medals.create({medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1", order: 68}) unless @marines.military_branch_medals.find_by(medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1").present?
@marines.military_branch_medals.create({medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf", order: 69}) unless @marines.military_branch_medals.find_by(medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf").present?
@marines.military_branch_medals.create({medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b", order: 70}) unless @marines.military_branch_medals.find_by(medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b").present?
@marines.military_branch_medals.create({medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32", order: 71}) unless @marines.military_branch_medals.find_by(medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32").present?
@marines.military_branch_medals.create({medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba", order: 72}) unless @marines.military_branch_medals.find_by(medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba").present?
@marines.military_branch_medals.create({medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc", order: 73}) unless @marines.military_branch_medals.find_by(medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc").present?
@marines.military_branch_medals.create({medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c", order: 74}) unless @marines.military_branch_medals.find_by(medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c").present?
@marines.military_branch_medals.create({medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064", order: 75}) unless @marines.military_branch_medals.find_by(medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064").present?
@marines.military_branch_medals.create({medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3", order: 76}) unless @marines.military_branch_medals.find_by(medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3").present?
@marines.military_branch_medals.create({medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1", order: 77}) unless @marines.military_branch_medals.find_by(medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1").present?
@marines.military_branch_medals.create({medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17", order: 78}) unless @marines.military_branch_medals.find_by(medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17").present?
@marines.military_branch_medals.create({medal_id: "c3364472-8f56-4720-b73e-2714afb9b976", order: 79}) unless @marines.military_branch_medals.find_by(medal_id: "c3364472-8f56-4720-b73e-2714afb9b976").present?
@marines.military_branch_medals.create({medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004", order: 80}) unless @marines.military_branch_medals.find_by(medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004").present?
@marines.military_branch_medals.create({medal_id: "389b134e-cfac-46ee-8311-b47833c89d66", order: 81}) unless @marines.military_branch_medals.find_by(medal_id: "389b134e-cfac-46ee-8311-b47833c89d66").present?
@marines.military_branch_medals.create({medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17", order: 82}) unless @marines.military_branch_medals.find_by(medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17").present?
## TODO Vietnam Air Service Medal
# @marines.military_branch_medals.create({medal_id: "", order: 83}) unless @marines.military_branch_medals.find_by(medal_id: "").present?
## TODO Vietnam Naval Service Medal
# @marines.military_branch_medals.create({medal_id: "", order: 84}) unless @marines.military_branch_medals.find_by(medal_id: "").present?
@marines.military_branch_medals.create({medal_id: "b67457fc-1164-420f-a907-e0a04969be02", order: 85}) unless @marines.military_branch_medals.find_by(medal_id: "b67457fc-1164-420f-a907-e0a04969be02").present?


## Air Force
@air_force.military_branch_medals.create({medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51", order: 1}) unless @air_force.military_branch_medals.find_by(medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51").present?
@air_force.military_branch_medals.create({medal_id: "f343b4b9-6d00-4963-8db9-5dd86e1c7e41", order: 2}) unless @air_force.military_branch_medals.find_by(medal_id: "f343b4b9-6d00-4963-8db9-5dd86e1c7e41").present?
@air_force.military_branch_medals.create({medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847", order: 3}) unless @air_force.military_branch_medals.find_by(medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847").present?
@air_force.military_branch_medals.create({medal_id: "4b8322b9-8afb-4f3d-9dc7-e0464dbfb5e7", order: 4}) unless @air_force.military_branch_medals.find_by(medal_id: "4b8322b9-8afb-4f3d-9dc7-e0464dbfb5e7").present?
@air_force.military_branch_medals.create({medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1", order: 5}) unless @air_force.military_branch_medals.find_by(medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1").present?
@air_force.military_branch_medals.create({medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b", order: 6}) unless @air_force.military_branch_medals.find_by(medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b").present?
@air_force.military_branch_medals.create({medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae", order: 7}) unless @air_force.military_branch_medals.find_by(medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae").present?
@air_force.military_branch_medals.create({medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad", order: 8}) unless @air_force.military_branch_medals.find_by(medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad").present?
@air_force.military_branch_medals.create({medal_id: "0786ce43-b921-410a-b6f2-99669d71e285", order: 9}) unless @air_force.military_branch_medals.find_by(medal_id: "0786ce43-b921-410a-b6f2-99669d71e285").present?
@air_force.military_branch_medals.create({medal_id: "eb803254-124a-4542-8869-5af13a48371f", order: 10}) unless @air_force.military_branch_medals.find_by(medal_id: "eb803254-124a-4542-8869-5af13a48371f").present?
## Purple heart
@air_force.military_branch_medals.create({medal_id: "c8e28734-abd2-431e-9403-30b24607d89f", order: 11}) unless @air_force.military_branch_medals.find_by(medal_id: "c8e28734-abd2-431e-9403-30b24607d89f").present?
@air_force.military_branch_medals.create({medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f", order: 12}) unless @air_force.military_branch_medals.find_by(medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f").present?
@air_force.military_branch_medals.create({medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02", order: 13}) unless @air_force.military_branch_medals.find_by(medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02").present?
@air_force.military_branch_medals.create({medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644", order: 14}) unless @air_force.military_branch_medals.find_by(medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644").present?
@air_force.military_branch_medals.create({medal_id: "358a285a-7d9e-4287-9ead-b6d8fc030a22", order: 15}) unless @air_force.military_branch_medals.find_by(medal_id: "358a285a-7d9e-4287-9ead-b6d8fc030a22").present?
@air_force.military_branch_medals.create({medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa", order: 16}) unless @air_force.military_branch_medals.find_by(medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa").present?
@air_force.military_branch_medals.create({medal_id: "69956292-4d6f-4a05-a76c-ef492dde6515", order: 17}) unless @air_force.military_branch_medals.find_by(medal_id: "69956292-4d6f-4a05-a76c-ef492dde6515").present?
@air_force.military_branch_medals.create({medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875", order: 18}) unless @air_force.military_branch_medals.find_by(medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875").present?
@air_force.military_branch_medals.create({medal_id: "d22095dd-0d1d-49a2-bef6-e1b3141aa84e", order: 19}) unless @air_force.military_branch_medals.find_by(medal_id: "d22095dd-0d1d-49a2-bef6-e1b3141aa84e").present?
## Presidential Unit Citation
@air_force.military_branch_medals.create({medal_id: "c2c6be29-9366-4640-b158-06bc95ca91de", order: 20}) unless @air_force.military_branch_medals.find_by(medal_id: "c2c6be29-9366-4640-b158-06bc95ca91de").present?
@air_force.military_branch_medals.create({medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512", order: 21}) unless @air_force.military_branch_medals.find_by(medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512").present?
@air_force.military_branch_medals.create({medal_id: "ba902b57-9ef5-451f-bd21-9dd0e8b49123", order: 22}) unless @air_force.military_branch_medals.find_by(medal_id: "ba902b57-9ef5-451f-bd21-9dd0e8b49123").present?
@air_force.military_branch_medals.create({medal_id: "255f3c45-fdcb-4ce9-9923-e4b4874b7c83", order: 23}) unless @air_force.military_branch_medals.find_by(medal_id: "255f3c45-fdcb-4ce9-9923-e4b4874b7c83").present?
@air_force.military_branch_medals.create({medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0", order: 24}) unless @air_force.military_branch_medals.find_by(medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0").present?
@air_force.military_branch_medals.create({medal_id: "1ada23a5-7260-421f-8577-0ab634377ce1", order: 25}) unless @air_force.military_branch_medals.find_by(medal_id: "1ada23a5-7260-421f-8577-0ab634377ce1").present?
@air_force.military_branch_medals.create({medal_id: "4d67d9b1-4491-4e53-8735-60147db4bd35", order: 26}) unless @air_force.military_branch_medals.find_by(medal_id: "4d67d9b1-4491-4e53-8735-60147db4bd35").present?
@air_force.military_branch_medals.create({medal_id: "76ebe240-158c-4f0b-bcce-9aab1c41936d", order: 27}) unless @air_force.military_branch_medals.find_by(medal_id: "76ebe240-158c-4f0b-bcce-9aab1c41936d").present?
@air_force.military_branch_medals.create({medal_id: "030478be-944b-4c28-8c72-be30af8adf62", order: 28}) unless @air_force.military_branch_medals.find_by(medal_id: "030478be-944b-4c28-8c72-be30af8adf62").present?
@air_force.military_branch_medals.create({medal_id: "6e034112-02d2-43f0-afd3-0cbf4ab2c27a", order: 29}) unless @air_force.military_branch_medals.find_by(medal_id: "6e034112-02d2-43f0-afd3-0cbf4ab2c27a").present?
## Air Force Recognition
@air_force.military_branch_medals.create({medal_id: "84f55a4f-f922-4047-a267-78b65ea8394f", order: 30}) unless @air_force.military_branch_medals.find_by(medal_id: "84f55a4f-f922-4047-a267-78b65ea8394f").present?
@air_force.military_branch_medals.create({medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044", order: 31}) unless @air_force.military_branch_medals.find_by(medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044").present?
@air_force.military_branch_medals.create({medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91", order: 32}) unless @air_force.military_branch_medals.find_by(medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91").present?
@air_force.military_branch_medals.create({medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744", order: 33}) unless @air_force.military_branch_medals.find_by(medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744").present?
@air_force.military_branch_medals.create({medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e", order: 34}) unless @air_force.military_branch_medals.find_by(medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e").present?
@air_force.military_branch_medals.create({medal_id: "6593f000-73ed-4f09-ac27-5093355a639a", order: 35}) unless @air_force.military_branch_medals.find_by(medal_id: "6593f000-73ed-4f09-ac27-5093355a639a").present?
@air_force.military_branch_medals.create({medal_id: "7477547b-7bce-4a6b-9698-ac0e234588db", order: 36}) unless @air_force.military_branch_medals.find_by(medal_id: "7477547b-7bce-4a6b-9698-ac0e234588db").present?
@air_force.military_branch_medals.create({medal_id: "a5b5e2dc-335b-47c0-9fce-6d5ebc260a24", order: 37}) unless @air_force.military_branch_medals.find_by(medal_id: "a5b5e2dc-335b-47c0-9fce-6d5ebc260a24").present?
@air_force.military_branch_medals.create({medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17", order: 38}) unless @air_force.military_branch_medals.find_by(medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17").present?
@air_force.military_branch_medals.create({medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5", order: 39}) unless @air_force.military_branch_medals.find_by(medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5").present?
## Antarctica Service Medal
@air_force.military_branch_medals.create({medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1", order: 40}) unless @air_force.military_branch_medals.find_by(medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1").present?
@air_force.military_branch_medals.create({medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793", order: 41}) unless @air_force.military_branch_medals.find_by(medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793").present?
@air_force.military_branch_medals.create({medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0", order: 42}) unless @air_force.military_branch_medals.find_by(medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0").present?
@air_force.military_branch_medals.create({medal_id: "94110707-3724-4bc2-b42b-76bdeef97375", order: 43}) unless @air_force.military_branch_medals.find_by(medal_id: "94110707-3724-4bc2-b42b-76bdeef97375").present?
@air_force.military_branch_medals.create({medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2", order: 44}) unless @air_force.military_branch_medals.find_by(medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2").present?
@air_force.military_branch_medals.create({medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca", order: 45}) unless @air_force.military_branch_medals.find_by(medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca").present?
@air_force.military_branch_medals.create({medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856", order: 46}) unless @air_force.military_branch_medals.find_by(medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856").present?
@air_force.military_branch_medals.create({medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6", order: 47}) unless @air_force.military_branch_medals.find_by(medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6").present?
@air_force.military_branch_medals.create({medal_id: "04806fca-98d4-405d-99e0-77cce071f358", order: 48}) unless @air_force.military_branch_medals.find_by(medal_id: "04806fca-98d4-405d-99e0-77cce071f358").present?
@air_force.military_branch_medals.create({medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d", order: 49}) unless @air_force.military_branch_medals.find_by(medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d").present?
## Korea Defense service
@air_force.military_branch_medals.create({medal_id: "7503c083-4c06-419e-8014-120f7247c91e", order: 50}) unless @air_force.military_branch_medals.find_by(medal_id: "7503c083-4c06-419e-8014-120f7247c91e").present?
@air_force.military_branch_medals.create({medal_id: "ff3df46f-50fd-477b-8afe-df141a409986", order: 51}) unless @air_force.military_branch_medals.find_by(medal_id: "ff3df46f-50fd-477b-8afe-df141a409986").present?
@air_force.military_branch_medals.create({medal_id: "1328a960-b79e-4d33-8712-fe45c8509816", order: 52}) unless @air_force.military_branch_medals.find_by(medal_id: "1328a960-b79e-4d33-8712-fe45c8509816").present?
@air_force.military_branch_medals.create({medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677", order: 53}) unless @air_force.military_branch_medals.find_by(medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677").present?
@air_force.military_branch_medals.create({medal_id: "d7ff61fb-29b9-42ae-8291-1fa0ed43ea91", order: 54}) unless @air_force.military_branch_medals.find_by(medal_id: "d7ff61fb-29b9-42ae-8291-1fa0ed43ea91").present?
@air_force.military_branch_medals.create({medal_id: "a0e43ad2-b922-435d-ad50-8ab28f4524d4", order: 55}) unless @air_force.military_branch_medals.find_by(medal_id: "a0e43ad2-b922-435d-ad50-8ab28f4524d4").present?
@air_force.military_branch_medals.create({medal_id: "9c8d7fed-59d5-4edc-88d4-dc99764791f8", order: 56}) unless @air_force.military_branch_medals.find_by(medal_id: "9c8d7fed-59d5-4edc-88d4-dc99764791f8").present?
@air_force.military_branch_medals.create({medal_id: "f863739d-125a-4bcc-8a29-d0caf42c351a", order: 57}) unless @air_force.military_branch_medals.find_by(medal_id: "f863739d-125a-4bcc-8a29-d0caf42c351a").present?
@air_force.military_branch_medals.create({medal_id: "67779e0a-6cab-47ee-8d83-dbe0a6a06513", order: 58}) unless @air_force.military_branch_medals.find_by(medal_id: "67779e0a-6cab-47ee-8d83-dbe0a6a06513").present?
@air_force.military_branch_medals.create({medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528", order: 59}) unless @air_force.military_branch_medals.find_by(medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528").present?
@air_force.military_branch_medals.create({medal_id: "30e4c14e-2c50-41bc-bf40-21208ccccbbe", order: 60}) unless @air_force.military_branch_medals.find_by(medal_id: "30e4c14e-2c50-41bc-bf40-21208ccccbbe").present?
@air_force.military_branch_medals.create({medal_id: "c4274626-e86f-49a9-8c7f-67a4522c95fc", order: 61}) unless @air_force.military_branch_medals.find_by(medal_id: "c4274626-e86f-49a9-8c7f-67a4522c95fc").present?
@air_force.military_branch_medals.create({medal_id: "6d1c4e05-b332-4586-b802-fc7440deb0b5", order: 62}) unless @air_force.military_branch_medals.find_by(medal_id: "6d1c4e05-b332-4586-b802-fc7440deb0b5").present?
@air_force.military_branch_medals.create({medal_id: "b2e1b800-776d-4460-b495-ebd23f615381", order: 63}) unless @air_force.military_branch_medals.find_by(medal_id: "b2e1b800-776d-4460-b495-ebd23f615381").present?
@air_force.military_branch_medals.create({medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3", order: 64}) unless @air_force.military_branch_medals.find_by(medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3").present?
@air_force.military_branch_medals.create({medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59", order: 65}) unless @air_force.military_branch_medals.find_by(medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59").present?
## TODO battle participation
# @air_force.military_branch_medals.create({medal_id: "", order: 66}) unless @air_force.military_branch_medals.find_by(medal_id: "").present?
@air_force.military_branch_medals.create({medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3", order: 67}) unless @air_force.military_branch_medals.find_by(medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3").present?
@air_force.military_branch_medals.create({medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f", order: 68}) unless @air_force.military_branch_medals.find_by(medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f").present?
@air_force.military_branch_medals.create({medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d", order: 69}) unless @air_force.military_branch_medals.find_by(medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d").present?
@air_force.military_branch_medals.create({medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1", order: 70}) unless @air_force.military_branch_medals.find_by(medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1").present?
@air_force.military_branch_medals.create({medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf", order: 71}) unless @air_force.military_branch_medals.find_by(medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf").present?
@air_force.military_branch_medals.create({medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b", order: 72}) unless @air_force.military_branch_medals.find_by(medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b").present?
@air_force.military_branch_medals.create({medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32", order: 73}) unless @air_force.military_branch_medals.find_by(medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32").present?
@air_force.military_branch_medals.create({medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c", order: 74}) unless @air_force.military_branch_medals.find_by(medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c").present?
@air_force.military_branch_medals.create({medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064", order: 75}) unless @air_force.military_branch_medals.find_by(medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064").present?
@air_force.military_branch_medals.create({medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3", order: 76}) unless @air_force.military_branch_medals.find_by(medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3").present?
@air_force.military_branch_medals.create({medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1", order: 77}) unless @air_force.military_branch_medals.find_by(medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1").present?
@air_force.military_branch_medals.create({medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17", order: 78}) unless @air_force.military_branch_medals.find_by(medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17").present?
@air_force.military_branch_medals.create({medal_id: "c3364472-8f56-4720-b73e-2714afb9b976", order: 79}) unless @air_force.military_branch_medals.find_by(medal_id: "c3364472-8f56-4720-b73e-2714afb9b976").present?
@air_force.military_branch_medals.create({medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004", order: 80}) unless @air_force.military_branch_medals.find_by(medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004").present?
@air_force.military_branch_medals.create({medal_id: "389b134e-cfac-46ee-8311-b47833c89d66", order: 81}) unless @air_force.military_branch_medals.find_by(medal_id: "389b134e-cfac-46ee-8311-b47833c89d66").present?
@air_force.military_branch_medals.create({medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17", order: 82}) unless @air_force.military_branch_medals.find_by(medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17").present?
## TODO Vietnam Air Service Medal
# @air_force.military_branch_medals.create({medal_id: "", order: 83}) unless @air_force.military_branch_medals.find_by(medal_id: "").present?
## TODO Vietnam Naval Service Medal
# @air_force.military_branch_medals.create({medal_id: "", order: 84}) unless @air_force.military_branch_medals.find_by(medal_id: "").present?
@air_force.military_branch_medals.create({medal_id: "b67457fc-1164-420f-a907-e0a04969be02", order: 85}) unless @air_force.military_branch_medals.find_by(medal_id: "b67457fc-1164-420f-a907-e0a04969be02").present?

@coast_guard.military_branch_medals.create({medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51", order: 1}) unless @coast_guard.military_branch_medals.find_by(medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51").present?
@coast_guard.military_branch_medals.create({medal_id: "7023a692-1956-4c08-aad9-79e2f8af9805", order: 2}) unless @coast_guard.military_branch_medals.find_by(medal_id: "7023a692-1956-4c08-aad9-79e2f8af9805").present?
@coast_guard.military_branch_medals.create({medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847", order: 3}) unless @coast_guard.military_branch_medals.find_by(medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847").present?
@coast_guard.military_branch_medals.create({medal_id: "abf227ce-1228-4a97-b646-fc07ace2b0e6", order: 4}) unless @coast_guard.military_branch_medals.find_by(medal_id: "abf227ce-1228-4a97-b646-fc07ace2b0e6").present?
@coast_guard.military_branch_medals.create({medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1", order: 5}) unless @coast_guard.military_branch_medals.find_by(medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1").present?
@coast_guard.military_branch_medals.create({medal_id: "6f30d49e-8aa0-43dd-a792-1833ceb1f9eb", order: 6}) unless @coast_guard.military_branch_medals.find_by(medal_id: "6f30d49e-8aa0-43dd-a792-1833ceb1f9eb").present?
@coast_guard.military_branch_medals.create({medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b", order: 7}) unless @coast_guard.military_branch_medals.find_by(medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b").present?
@coast_guard.military_branch_medals.create({medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae", order: 8}) unless @coast_guard.military_branch_medals.find_by(medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae").present?
@coast_guard.military_branch_medals.create({medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad", order: 9}) unless @coast_guard.military_branch_medals.find_by(medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad").present?
@coast_guard.military_branch_medals.create({medal_id: "d23f0fdf-e7fa-4f6a-98cf-a5078d75a9a6", order: 10}) unless @coast_guard.military_branch_medals.find_by(medal_id: "d23f0fdf-e7fa-4f6a-98cf-a5078d75a9a6").present?
@coast_guard.military_branch_medals.create({medal_id: "cf3d6aff-70db-4d56-9cae-16c2ca4c5281", order: 11}) unless @coast_guard.military_branch_medals.find_by(medal_id: "cf3d6aff-70db-4d56-9cae-16c2ca4c5281").present?
@coast_guard.military_branch_medals.create({medal_id: "eb803254-124a-4542-8869-5af13a48371f", order: 12}) unless @coast_guard.military_branch_medals.find_by(medal_id: "eb803254-124a-4542-8869-5af13a48371f").present?
## Purple heart
@coast_guard.military_branch_medals.create({medal_id: "c8e28734-abd2-431e-9403-30b24607d89f", order: 13}) unless @coast_guard.military_branch_medals.find_by(medal_id: "c8e28734-abd2-431e-9403-30b24607d89f").present?
@coast_guard.military_branch_medals.create({medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f", order: 14}) unless @coast_guard.military_branch_medals.find_by(medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f").present?
@coast_guard.military_branch_medals.create({medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02", order: 15}) unless @coast_guard.military_branch_medals.find_by(medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02").present?
@coast_guard.military_branch_medals.create({medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644", order: 16}) unless @coast_guard.military_branch_medals.find_by(medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644").present?
@coast_guard.military_branch_medals.create({medal_id: "130a96c8-b6ba-4459-9aa3-8ebb612eae95", order: 17}) unless @coast_guard.military_branch_medals.find_by(medal_id: "130a96c8-b6ba-4459-9aa3-8ebb612eae95").present?
@coast_guard.military_branch_medals.create({medal_id: "568265e1-5304-4fde-bf97-7ff2067d0fc6", order: 18}) unless @coast_guard.military_branch_medals.find_by(medal_id: "568265e1-5304-4fde-bf97-7ff2067d0fc6").present?
@coast_guard.military_branch_medals.create({medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa", order: 19}) unless @coast_guard.military_branch_medals.find_by(medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa").present?
@coast_guard.military_branch_medals.create({medal_id: "379773d9-d620-42b0-8aa1-95cf2499e3eb", order: 20}) unless @coast_guard.military_branch_medals.find_by(medal_id: "379773d9-d620-42b0-8aa1-95cf2499e3eb").present?
@coast_guard.military_branch_medals.create({medal_id: "b2132a1f-0645-42dc-b76d-57f09463ecc4", order: 21}) unless @coast_guard.military_branch_medals.find_by(medal_id: "b2132a1f-0645-42dc-b76d-57f09463ecc4").present?
@coast_guard.military_branch_medals.create({medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875", order: 22}) unless @coast_guard.military_branch_medals.find_by(medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875").present?
@coast_guard.military_branch_medals.create({medal_id: "84b7beb9-dbc1-4687-89d6-b83bdfa06c74", order: 23}) unless @coast_guard.military_branch_medals.find_by(medal_id: "84b7beb9-dbc1-4687-89d6-b83bdfa06c74").present?
@coast_guard.military_branch_medals.create({medal_id: "3a432b2d-9be6-40e7-9154-fad79e2e2cee", order: 24}) unless @coast_guard.military_branch_medals.find_by(medal_id: "3a432b2d-9be6-40e7-9154-fad79e2e2cee").present?
@coast_guard.military_branch_medals.create({medal_id: "452c172a-492c-41ee-ab71-c9405912ba79", order: 25}) unless @coast_guard.military_branch_medals.find_by(medal_id: "452c172a-492c-41ee-ab71-c9405912ba79").present?
## Presidential Unit Citation
@coast_guard.military_branch_medals.create({medal_id: "7b8e31a3-f1ab-4314-b63b-f39f4f711381", order: 26}) unless @coast_guard.military_branch_medals.find_by(medal_id: "7b8e31a3-f1ab-4314-b63b-f39f4f711381").present?
@coast_guard.military_branch_medals.create({medal_id: "5d2771b6-ac1d-4710-88e0-390905b6c4b1", order: 27}) unless @coast_guard.military_branch_medals.find_by(medal_id: "5d2771b6-ac1d-4710-88e0-390905b6c4b1").present?
@coast_guard.military_branch_medals.create({medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512", order: 28}) unless @coast_guard.military_branch_medals.find_by(medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512").present?
@coast_guard.military_branch_medals.create({medal_id: "1adc7ae7-9140-455d-867b-9fe4d66aa93e", order: 29}) unless @coast_guard.military_branch_medals.find_by(medal_id: "1adc7ae7-9140-455d-867b-9fe4d66aa93e").present?
@coast_guard.military_branch_medals.create({medal_id: "00e98ae9-27b9-4b1d-871a-65c28c47de84", order: 30}) unless @coast_guard.military_branch_medals.find_by(medal_id: "00e98ae9-27b9-4b1d-871a-65c28c47de84").present?
@coast_guard.military_branch_medals.create({medal_id: "34f1dafe-c28b-4cb9-88a4-6118b22d6aca", order: 31}) unless @coast_guard.military_branch_medals.find_by(medal_id: "34f1dafe-c28b-4cb9-88a4-6118b22d6aca").present?
@coast_guard.military_branch_medals.create({medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0", order: 32}) unless @coast_guard.military_branch_medals.find_by(medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0").present?
@coast_guard.military_branch_medals.create({medal_id: "ba9806c8-55b0-4c73-837c-6aab98016ca1", order: 33}) unless @coast_guard.military_branch_medals.find_by(medal_id: "ba9806c8-55b0-4c73-837c-6aab98016ca1").present?
@coast_guard.military_branch_medals.create({medal_id: "eea4e52a-5ba7-4a2f-86d5-a3de98703993", order: 34}) unless @coast_guard.military_branch_medals.find_by(medal_id: "eea4e52a-5ba7-4a2f-86d5-a3de98703993").present?
@coast_guard.military_branch_medals.create({medal_id: "eb8a3754-475b-4406-9b54-c869284c0d0b", order: 35}) unless @coast_guard.military_branch_medals.find_by(medal_id: "eb8a3754-475b-4406-9b54-c869284c0d0b").present?
@coast_guard.military_branch_medals.create({medal_id: "af663e72-657f-4a7f-a5ab-54a38a3dcf28", order: 36}) unless @coast_guard.military_branch_medals.find_by(medal_id: "af663e72-657f-4a7f-a5ab-54a38a3dcf28").present?
## China Service
@coast_guard.military_branch_medals.create({medal_id: "a62a86e8-3d20-4283-aaf5-621f79f8a451", order: 37}) unless @coast_guard.military_branch_medals.find_by(medal_id: "a62a86e8-3d20-4283-aaf5-621f79f8a451").present?
@coast_guard.military_branch_medals.create({medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044", order: 38}) unless @coast_guard.military_branch_medals.find_by(medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044").present?
@coast_guard.military_branch_medals.create({medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91", order: 39}) unless @coast_guard.military_branch_medals.find_by(medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91").present?
@coast_guard.military_branch_medals.create({medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744", order: 40}) unless @coast_guard.military_branch_medals.find_by(medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744").present?
@coast_guard.military_branch_medals.create({medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e", order: 41}) unless @coast_guard.military_branch_medals.find_by(medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e").present?
@coast_guard.military_branch_medals.create({medal_id: "6593f000-73ed-4f09-ac27-5093355a639a", order: 42}) unless @coast_guard.military_branch_medals.find_by(medal_id: "6593f000-73ed-4f09-ac27-5093355a639a").present?
@coast_guard.military_branch_medals.create({medal_id: "635b6e2a-38ce-4ba5-8df2-c4e7a4024e4e", order: 43}) unless @coast_guard.military_branch_medals.find_by(medal_id: "635b6e2a-38ce-4ba5-8df2-c4e7a4024e4e").present?
@coast_guard.military_branch_medals.create({medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17", order: 44}) unless @coast_guard.military_branch_medals.find_by(medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17").present?
@coast_guard.military_branch_medals.create({medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5", order: 45}) unless @coast_guard.military_branch_medals.find_by(medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5").present?
@coast_guard.military_branch_medals.create({medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1", order: 46}) unless @coast_guard.military_branch_medals.find_by(medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1").present?
@coast_guard.military_branch_medals.create({medal_id: "63d0d16a-88f2-4478-9076-19ebab3fc9a4", order: 47}) unless @coast_guard.military_branch_medals.find_by(medal_id: "63d0d16a-88f2-4478-9076-19ebab3fc9a4").present?
## Armed Forces Expeditionary
@coast_guard.military_branch_medals.create({medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793", order: 48}) unless @coast_guard.military_branch_medals.find_by(medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793").present?
@coast_guard.military_branch_medals.create({medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0", order: 49}) unless @coast_guard.military_branch_medals.find_by(medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0").present?
@coast_guard.military_branch_medals.create({medal_id: "94110707-3724-4bc2-b42b-76bdeef97375", order: 50}) unless @coast_guard.military_branch_medals.find_by(medal_id: "94110707-3724-4bc2-b42b-76bdeef97375").present?
@coast_guard.military_branch_medals.create({medal_id: "ff3df46f-50fd-477b-8afe-df141a409986", order: 51}) unless @coast_guard.military_branch_medals.find_by(medal_id: "ff3df46f-50fd-477b-8afe-df141a409986").present?
@coast_guard.military_branch_medals.create({medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2", order: 52}) unless @coast_guard.military_branch_medals.find_by(medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2").present?
@coast_guard.military_branch_medals.create({medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca", order: 53}) unless @coast_guard.military_branch_medals.find_by(medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca").present?
@coast_guard.military_branch_medals.create({medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856", order: 54}) unless @coast_guard.military_branch_medals.find_by(medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856").present?
@coast_guard.military_branch_medals.create({medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6", order: 55}) unless @coast_guard.military_branch_medals.find_by(medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6").present?
@coast_guard.military_branch_medals.create({medal_id: "04806fca-98d4-405d-99e0-77cce071f358", order: 56}) unless @coast_guard.military_branch_medals.find_by(medal_id: "04806fca-98d4-405d-99e0-77cce071f358").present?
@coast_guard.military_branch_medals.create({medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d", order: 57}) unless @coast_guard.military_branch_medals.find_by(medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d").present?
@coast_guard.military_branch_medals.create({medal_id: "7503c083-4c06-419e-8014-120f7247c91e", order: 58}) unless @coast_guard.military_branch_medals.find_by(medal_id: "7503c083-4c06-419e-8014-120f7247c91e").present?
## Humanitarian Service
@coast_guard.military_branch_medals.create({medal_id: "1328a960-b79e-4d33-8712-fe45c8509816", order: 59}) unless @coast_guard.military_branch_medals.find_by(medal_id: "1328a960-b79e-4d33-8712-fe45c8509816").present?
@coast_guard.military_branch_medals.create({medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677", order: 60}) unless @coast_guard.military_branch_medals.find_by(medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677").present?
@coast_guard.military_branch_medals.create({medal_id: "653d5664-896e-4c0d-bcf3-ec8a7f78eb29", order: 61}) unless @coast_guard.military_branch_medals.find_by(medal_id: "653d5664-896e-4c0d-bcf3-ec8a7f78eb29").present?
@coast_guard.military_branch_medals.create({medal_id: "2200f2b1-a216-4d44-a828-a290b79a889b", order: 62}) unless @coast_guard.military_branch_medals.find_by(medal_id: "2200f2b1-a216-4d44-a828-a290b79a889b").present?
@coast_guard.military_branch_medals.create({medal_id: "32b4c6a5-1dcc-48f0-b288-a3b96216634f", order: 63}) unless @coast_guard.military_branch_medals.find_by(medal_id: "32b4c6a5-1dcc-48f0-b288-a3b96216634f").present?
@coast_guard.military_branch_medals.create({medal_id: "855955ba-88aa-47ab-9fc6-6383aa65d186", order: 64}) unless @coast_guard.military_branch_medals.find_by(medal_id: "855955ba-88aa-47ab-9fc6-6383aa65d186").present?
@coast_guard.military_branch_medals.create({medal_id: "c4274626-e86f-49a9-8c7f-67a4522c95fc", order: 65}) unless @coast_guard.military_branch_medals.find_by(medal_id: "c4274626-e86f-49a9-8c7f-67a4522c95fc").present?
@coast_guard.military_branch_medals.create({medal_id: "29abab29-a46c-44b6-8f18-6bab5f325386", order: 66}) unless @coast_guard.military_branch_medals.find_by(medal_id: "29abab29-a46c-44b6-8f18-6bab5f325386").present?
@coast_guard.military_branch_medals.create({medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528", order: 67}) unless @coast_guard.military_branch_medals.find_by(medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528").present?
@coast_guard.military_branch_medals.create({medal_id: "aa6ddfef-b557-48e8-a302-8a73e7992aab", order: 68}) unless @coast_guard.military_branch_medals.find_by(medal_id: "aa6ddfef-b557-48e8-a302-8a73e7992aab").present?
## TODO battle participation
# @coast_guard.military_branch_medals.create({medal_id: "", order: 69}) unless @coast_guard.military_branch_medals.find_by(medal_id: "").present?
@coast_guard.military_branch_medals.create({medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3", order: 70}) unless @coast_guard.military_branch_medals.find_by(medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3").present?
@coast_guard.military_branch_medals.create({medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f", order: 71}) unless @coast_guard.military_branch_medals.find_by(medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f").present?
@coast_guard.military_branch_medals.create({medal_id: "3560c0af-293a-4986-824d-e0ded2169568", order: 72}) unless @coast_guard.military_branch_medals.find_by(medal_id: "3560c0af-293a-4986-824d-e0ded2169568").present?
@coast_guard.military_branch_medals.create({medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d", order: 73}) unless @coast_guard.military_branch_medals.find_by(medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d").present?
@coast_guard.military_branch_medals.create({medal_id: "8de6c236-323a-498f-8a93-7e985c703130", order: 74}) unless @coast_guard.military_branch_medals.find_by(medal_id: "8de6c236-323a-498f-8a93-7e985c703130").present?
@coast_guard.military_branch_medals.create({medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1", order: 75}) unless @coast_guard.military_branch_medals.find_by(medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1").present?
@coast_guard.military_branch_medals.create({medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf", order: 76}) unless @coast_guard.military_branch_medals.find_by(medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf").present?
@coast_guard.military_branch_medals.create({medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b", order: 77}) unless @coast_guard.military_branch_medals.find_by(medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b").present?
@coast_guard.military_branch_medals.create({medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32", order: 78}) unless @coast_guard.military_branch_medals.find_by(medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32").present?
@coast_guard.military_branch_medals.create({medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc", order: 79}) unless @coast_guard.military_branch_medals.find_by(medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc").present?
@coast_guard.military_branch_medals.create({medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba", order: 80}) unless @coast_guard.military_branch_medals.find_by(medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba").present?
@coast_guard.military_branch_medals.create({medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c", order: 81}) unless @coast_guard.military_branch_medals.find_by(medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c").present?
@coast_guard.military_branch_medals.create({medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064", order: 82}) unless @coast_guard.military_branch_medals.find_by(medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064").present?
@coast_guard.military_branch_medals.create({medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3", order: 83}) unless @coast_guard.military_branch_medals.find_by(medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3").present?
@coast_guard.military_branch_medals.create({medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1", order: 84}) unless @coast_guard.military_branch_medals.find_by(medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1").present?
@coast_guard.military_branch_medals.create({medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17", order: 85}) unless @coast_guard.military_branch_medals.find_by(medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17").present?
@coast_guard.military_branch_medals.create({medal_id: "c3364472-8f56-4720-b73e-2714afb9b976", order: 86}) unless @coast_guard.military_branch_medals.find_by(medal_id: "c3364472-8f56-4720-b73e-2714afb9b976").present?
@coast_guard.military_branch_medals.create({medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004", order: 87}) unless @coast_guard.military_branch_medals.find_by(medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004").present?
@coast_guard.military_branch_medals.create({medal_id: "389b134e-cfac-46ee-8311-b47833c89d66", order: 88}) unless @coast_guard.military_branch_medals.find_by(medal_id: "389b134e-cfac-46ee-8311-b47833c89d66").present?
@coast_guard.military_branch_medals.create({medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17", order: 89}) unless @coast_guard.military_branch_medals.find_by(medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17").present?
## TODO Vietnam Air Service Medal
# @coast_guard.military_branch_medals.create({medal_id: "", order: 90}) unless @coast_guard.military_branch_medals.find_by(medal_id: "").present?
## TODO Vietnam Naval Service Medal
# @coast_guard.military_branch_medals.create({medal_id: "", order: 91}) unless @coast_guard.military_branch_medals.find_by(medal_id: "").present?
@coast_guard.military_branch_medals.create({medal_id: "b67457fc-1164-420f-a907-e0a04969be02", order: 92}) unless @coast_guard.military_branch_medals.find_by(medal_id: "b67457fc-1164-420f-a907-e0a04969be02").present?


## Army
@army.military_branch_medals.create({medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51", order: 1}) unless @army.military_branch_medals.find_by(medal_id: "dc448992-6b2d-43dc-a5e2-46ef8d879a51").present?
@army.military_branch_medals.create({medal_id: "810839b1-ff8f-4edd-8cfb-0c92f23046bc", order: 2}) unless @army.military_branch_medals.find_by(medal_id: "810839b1-ff8f-4edd-8cfb-0c92f23046bc").present?
@army.military_branch_medals.create({medal_id: "4a65e518-8b46-482e-a670-a5107a87ec88", order: 3}) unless @army.military_branch_medals.find_by(medal_id: "4a65e518-8b46-482e-a670-a5107a87ec88").present?
@army.military_branch_medals.create({medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847", order: 4}) unless @army.military_branch_medals.find_by(medal_id: "75b62b38-2645-4a15-b8fc-401adaa52847").present?
@army.military_branch_medals.create({medal_id: "818b3306-b326-41ba-90e2-740802d28a19", order: 5}) unless @army.military_branch_medals.find_by(medal_id: "818b3306-b326-41ba-90e2-740802d28a19").present?
@army.military_branch_medals.create({medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1", order: 6}) unless @army.military_branch_medals.find_by(medal_id: "321702fd-424f-42bd-8c18-6c008e341fb1").present?
@army.military_branch_medals.create({medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b", order: 7}) unless @army.military_branch_medals.find_by(medal_id: "e11ac826-1ad6-49bf-a48d-81842c12106b").present?
@army.military_branch_medals.create({medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae", order: 8}) unless @army.military_branch_medals.find_by(medal_id: "02a0257e-3d1b-4ce2-bc4d-5e336d5a15ae").present?
@army.military_branch_medals.create({medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad", order: 9}) unless @army.military_branch_medals.find_by(medal_id: "3f5ff443-d148-44e3-9809-eb2b7363daad").present?
@army.military_branch_medals.create({medal_id: "e875e485-6487-4359-9291-eacd65271307", order: 10}) unless @army.military_branch_medals.find_by(medal_id: "e875e485-6487-4359-9291-eacd65271307").present?
@army.military_branch_medals.create({medal_id: "eb803254-124a-4542-8869-5af13a48371f", order: 11}) unless @army.military_branch_medals.find_by(medal_id: "eb803254-124a-4542-8869-5af13a48371f").present?
@army.military_branch_medals.create({medal_id: "c8e28734-abd2-431e-9403-30b24607d89f", order: 12}) unless @army.military_branch_medals.find_by(medal_id: "c8e28734-abd2-431e-9403-30b24607d89f").present?
@army.military_branch_medals.create({medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f", order: 13}) unless @army.military_branch_medals.find_by(medal_id: "c07d974b-478a-4287-b6e1-c1899572ae2f").present?
@army.military_branch_medals.create({medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02", order: 14}) unless @army.military_branch_medals.find_by(medal_id: "8899b5b6-428b-48b7-866d-dad07fdbde02").present?
@army.military_branch_medals.create({medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644", order: 15}) unless @army.military_branch_medals.find_by(medal_id: "355a6eda-a66d-4ae2-88ba-1cec61f9e644").present?
@army.military_branch_medals.create({medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa", order: 16}) unless @army.military_branch_medals.find_by(medal_id: "77f1da0a-ed9b-4e06-b4c4-3d58492f1eaa").present?
@army.military_branch_medals.create({medal_id: "d41dacb4-ec3b-4eef-8aff-c5ab9ed1da04", order: 17}) unless @army.military_branch_medals.find_by(medal_id: "d41dacb4-ec3b-4eef-8aff-c5ab9ed1da04").present?
@army.military_branch_medals.create({medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875", order: 18}) unless @army.military_branch_medals.find_by(medal_id: "662c76f8-bf38-40a3-9280-5da43edf7875").present?
@army.military_branch_medals.create({medal_id: "9e910d60-47b4-47af-a8e9-1f40cff82a3e", order: 19}) unless @army.military_branch_medals.find_by(medal_id: "9e910d60-47b4-47af-a8e9-1f40cff82a3e").present?
@army.military_branch_medals.create({medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0", order: 20}) unless @army.military_branch_medals.find_by(medal_id: "6442fead-2438-44a7-b9e3-eba59155b7a0").present?
@army.military_branch_medals.create({medal_id: "76ebe240-158c-4f0b-bcce-9aab1c41936d", order: 21}) unless @army.military_branch_medals.find_by(medal_id: "76ebe240-158c-4f0b-bcce-9aab1c41936d").present?
@army.military_branch_medals.create({medal_id: "eee8aaa9-d64e-412c-9603-2f79669fa62f", order: 22}) unless @army.military_branch_medals.find_by(medal_id: "eee8aaa9-d64e-412c-9603-2f79669fa62f").present?
@army.military_branch_medals.create({medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044", order: 23}) unless @army.military_branch_medals.find_by(medal_id: "2cb56b5f-1bec-4ebc-9f40-701eb1c4f044").present?
@army.military_branch_medals.create({medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91", order: 24}) unless @army.military_branch_medals.find_by(medal_id: "1fa62ef7-a3c1-41c3-bb3f-9aed74712a91").present?
@army.military_branch_medals.create({medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744", order: 25}) unless @army.military_branch_medals.find_by(medal_id: "c5306516-cfb1-473d-b6d5-5db246dfd744").present?
@army.military_branch_medals.create({medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e", order: 26}) unless @army.military_branch_medals.find_by(medal_id: "a09cf6c0-5518-42fb-bec3-9708fa88a49e").present?
@army.military_branch_medals.create({medal_id: "6593f000-73ed-4f09-ac27-5093355a639a", order: 27}) unless @army.military_branch_medals.find_by(medal_id: "6593f000-73ed-4f09-ac27-5093355a639a").present?
@army.military_branch_medals.create({medal_id: "7477547b-7bce-4a6b-9698-ac0e234588db", order: 28}) unless @army.military_branch_medals.find_by(medal_id: "7477547b-7bce-4a6b-9698-ac0e234588db").present?
@army.military_branch_medals.create({medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17", order: 29}) unless @army.military_branch_medals.find_by(medal_id: "44b353b1-ed63-4f42-b21b-2b772b633c17").present?
@army.military_branch_medals.create({medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5", order: 30}) unless @army.military_branch_medals.find_by(medal_id: "abf9a8c8-ba77-4555-9c76-f3dd598b6bc5").present?
@army.military_branch_medals.create({medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1", order: 31}) unless @army.military_branch_medals.find_by(medal_id: "d70043ba-24a8-4485-bf07-d4059da54ee1").present?
@army.military_branch_medals.create({medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793", order: 32}) unless @army.military_branch_medals.find_by(medal_id: "f24b0f37-f3bd-4022-9a3b-769d3a436793").present?
@army.military_branch_medals.create({medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0", order: 33}) unless @army.military_branch_medals.find_by(medal_id: "70f323c7-e16f-4ef6-bbc5-16fb121171b0").present?
@army.military_branch_medals.create({medal_id: "94110707-3724-4bc2-b42b-76bdeef97375", order: 34}) unless @army.military_branch_medals.find_by(medal_id: "94110707-3724-4bc2-b42b-76bdeef97375").present?
@army.military_branch_medals.create({medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2", order: 35}) unless @army.military_branch_medals.find_by(medal_id: "f8c47751-a51d-4579-bdf2-b93e10394ea2").present?
@army.military_branch_medals.create({medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca", order: 36}) unless @army.military_branch_medals.find_by(medal_id: "1a0c6019-3656-4042-9130-2bcd054f91ca").present?
@army.military_branch_medals.create({medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856", order: 37}) unless @army.military_branch_medals.find_by(medal_id: "a0187e2e-c05d-47b9-a555-76a8336a9856").present?
@army.military_branch_medals.create({medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6", order: 38}) unless @army.military_branch_medals.find_by(medal_id: "153bb4e2-bd87-409e-9949-140100ea2bf6").present?
@army.military_branch_medals.create({medal_id: "04806fca-98d4-405d-99e0-77cce071f358", order: 39}) unless @army.military_branch_medals.find_by(medal_id: "04806fca-98d4-405d-99e0-77cce071f358").present?
@army.military_branch_medals.create({medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d", order: 40}) unless @army.military_branch_medals.find_by(medal_id: "ed29475e-b99d-4b9b-b020-a9b3d9f9820d").present?
@army.military_branch_medals.create({medal_id: "7503c083-4c06-419e-8014-120f7247c91e", order: 41}) unless @army.military_branch_medals.find_by(medal_id: "7503c083-4c06-419e-8014-120f7247c91e").present?
@army.military_branch_medals.create({medal_id: "ff3df46f-50fd-477b-8afe-df141a409986", order: 42}) unless @army.military_branch_medals.find_by(medal_id: "ff3df46f-50fd-477b-8afe-df141a409986").present?
@army.military_branch_medals.create({medal_id: "1328a960-b79e-4d33-8712-fe45c8509816", order: 43}) unless @army.military_branch_medals.find_by(medal_id: "1328a960-b79e-4d33-8712-fe45c8509816").present?
@army.military_branch_medals.create({medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677", order: 44}) unless @army.military_branch_medals.find_by(medal_id: "a06358f7-4afa-49d8-bda7-cfaac9263677").present?
@army.military_branch_medals.create({medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528", order: 45}) unless @army.military_branch_medals.find_by(medal_id: "bb08f24b-6a94-4965-b8ce-b7e1b2d15528").present?
@army.military_branch_medals.create({medal_id: "6669f337-8534-424e-ab4a-9970304dfd29", order: 46}) unless @army.military_branch_medals.find_by(medal_id: "6669f337-8534-424e-ab4a-9970304dfd29").present?
@army.military_branch_medals.create({medal_id: "d0b585ce-0dad-4701-86c3-6f962f1f7fb6", order: 47}) unless @army.military_branch_medals.find_by(medal_id: "d0b585ce-0dad-4701-86c3-6f962f1f7fb6").present?
@army.military_branch_medals.create({medal_id: "69dcaa72-9f25-4063-b089-374e4b24bdbf", order: 48}) unless @army.military_branch_medals.find_by(medal_id: "69dcaa72-9f25-4063-b089-374e4b24bdbf").present?
@army.military_branch_medals.create({medal_id: "b086f70d-1942-4043-897a-8259199ae874", order: 49}) unless @army.military_branch_medals.find_by(medal_id: "b086f70d-1942-4043-897a-8259199ae874").present?
@army.military_branch_medals.create({medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1", order: 50}) unless @army.military_branch_medals.find_by(medal_id: "3f363e12-2cd4-426a-83ce-71afb3017ef1").present?
@army.military_branch_medals.create({medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf", order: 51}) unless @army.military_branch_medals.find_by(medal_id: "d2fce20c-f399-4177-bbe7-bd354a07c3bf").present?
@army.military_branch_medals.create({medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b", order: 52}) unless @army.military_branch_medals.find_by(medal_id: "6e889f7e-3255-4577-9536-9e4cca63e29b").present?
@army.military_branch_medals.create({medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32", order: 53}) unless @army.military_branch_medals.find_by(medal_id: "99f76b1b-2f34-45db-9107-cdcdcef3db32").present?
@army.military_branch_medals.create({medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba", order: 54}) unless @army.military_branch_medals.find_by(medal_id: "00e9c865-068b-4237-baa7-87ebb25f5dba").present?
@army.military_branch_medals.create({medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc", order: 55}) unless @army.military_branch_medals.find_by(medal_id: "d732b694-def7-418c-98a1-c64d92de0ffc").present?
@army.military_branch_medals.create({medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c", order: 56}) unless @army.military_branch_medals.find_by(medal_id: "600a7c2e-46af-43df-9632-d506d3b79b6c").present?
@army.military_branch_medals.create({medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064", order: 57}) unless @army.military_branch_medals.find_by(medal_id: "63b8b799-1832-4a17-8b83-10fa0571b064").present?
@army.military_branch_medals.create({medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3", order: 58}) unless @army.military_branch_medals.find_by(medal_id: "b3582967-4f67-4ef1-8045-5809c4fe71e3").present?
@army.military_branch_medals.create({medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1", order: 59}) unless @army.military_branch_medals.find_by(medal_id: "4c0b54f8-434b-43c2-b5d4-e7ac23482ab1").present?
@army.military_branch_medals.create({medal_id: "1d9f3fb1-888e-4f46-884e-4c0ddafd4d3f", order: 60}) unless @army.military_branch_medals.find_by(medal_id: "1d9f3fb1-888e-4f46-884e-4c0ddafd4d3f").present?
@army.military_branch_medals.create({medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512", order: 61}) unless @army.military_branch_medals.find_by(medal_id: "9a4369db-54ee-4b8e-bf63-7c494300e512").present?
@army.military_branch_medals.create({medal_id: "d8b88a64-1204-4e81-ac08-c93c07913789", order: 62}) unless @army.military_branch_medals.find_by(medal_id: "d8b88a64-1204-4e81-ac08-c93c07913789").present?
@army.military_branch_medals.create({medal_id: "acb24b82-afdf-4f1a-a533-a76565b8aa1c", order: 63}) unless @army.military_branch_medals.find_by(medal_id: "acb24b82-afdf-4f1a-a533-a76565b8aa1c").present?
@army.military_branch_medals.create({medal_id: "f3689298-6b5c-4ab4-a9b0-96f0d49e9c45", order: 64}) unless @army.military_branch_medals.find_by(medal_id: "f3689298-6b5c-4ab4-a9b0-96f0d49e9c45").present?
@army.military_branch_medals.create({medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3", order: 65}) unless @army.military_branch_medals.find_by(medal_id: "e829b999-2645-4bdd-9d89-6f0c3ff446a3").present?
@army.military_branch_medals.create({medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59", order: 66}) unless @army.military_branch_medals.find_by(medal_id: "3cfc863b-d83a-4c6a-97ef-886580ddae59").present?
## TODO battle participation
# @army.military_branch_medals.create({medal_id: "", order: 67}) unless @army.military_branch_medals.find_by(medal_id: "").present?
@army.military_branch_medals.create({medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3", order: 68}) unless @army.military_branch_medals.find_by(medal_id: "dc3c3b15-eb31-4336-8beb-6a90c2cc47f3").present?
@army.military_branch_medals.create({medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f", order: 69}) unless @army.military_branch_medals.find_by(medal_id: "f12c2abe-569c-4809-8653-1b89714ce09f").present?
@army.military_branch_medals.create({medal_id: "3560c0af-293a-4986-824d-e0ded2169568", order: 70}) unless @army.military_branch_medals.find_by(medal_id: "3560c0af-293a-4986-824d-e0ded2169568").present?
@army.military_branch_medals.create({medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d", order: 71}) unless @army.military_branch_medals.find_by(medal_id: "8f89b4cd-a7d4-4835-b0a4-d30239bba39d").present?
@army.military_branch_medals.create({medal_id: "8de6c236-323a-498f-8a93-7e985c703130", order: 72}) unless @army.military_branch_medals.find_by(medal_id: "8de6c236-323a-498f-8a93-7e985c703130").present?
@army.military_branch_medals.create({medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17", order: 73}) unless @army.military_branch_medals.find_by(medal_id: "2cfeb46e-49c7-4261-983e-9c74ae9a7c17").present?
@army.military_branch_medals.create({medal_id: "c3364472-8f56-4720-b73e-2714afb9b976", order: 74}) unless @army.military_branch_medals.find_by(medal_id: "c3364472-8f56-4720-b73e-2714afb9b976").present?
@army.military_branch_medals.create({medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004", order: 75}) unless @army.military_branch_medals.find_by(medal_id: "bf9144b1-3cab-4657-81fc-8fd7023aa004").present?
@army.military_branch_medals.create({medal_id: "389b134e-cfac-46ee-8311-b47833c89d66", order: 76}) unless @army.military_branch_medals.find_by(medal_id: "389b134e-cfac-46ee-8311-b47833c89d66").present?
@army.military_branch_medals.create({medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17", order: 77}) unless @army.military_branch_medals.find_by(medal_id: "f71c925d-9245-4caa-80cf-c9f216089b17").present?
## TODO Vietnam Air Service Medal
# @army.military_branch_medals.create({medal_id: "", order: 78}) unless @army.military_branch_medals.find_by(medal_id: "").present?
## TODO Vietnam Naval Service Medal
# @army.military_branch_medals.create({medal_id: "", order: 79}) unless @army.military_branch_medals.find_by(medal_id: "").present?
@army.military_branch_medals.create({medal_id: "b67457fc-1164-420f-a907-e0a04969be02", order: 80}) unless @army.military_branch_medals.find_by(medal_id: "b67457fc-1164-420f-a907-e0a04969be02").present? end
