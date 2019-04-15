// Represent each player as a dictionary collection with String Keys and corresponding values
let joeSmith: [String: String] = ["name": "Joe Smith", "height": "42.0", "isExperienced": "true", "guardians": "Jim and Jan Smith"]
let jillTanner: [String: String] = ["name": "Jill Tanner", "height": "36.0", "isExperienced": "true", "guardians": "Clara Tanner"]
let billBon: [String: String] = ["name": "Bill Bon", "height": "43.0", "isExperienced": "true", "guardians": "Sara and Jenny Bon"]
let evaGordon: [String: String] = ["name": "Eva Gordon", "height": "45.0", "isExperienced": "false", "guardians": "Wendy and Mike Gordon"]
let mattGill: [String: String] = ["name": "Matt Gill", "height": "40.0", "isExperienced": "false", "guardians": "Charles and Sylvia Gill"]
let kimmyStein: [String: String] = ["name": "Kimmy Stein", "height": "41.0", "isExperienced": "false", "guardians": "Bill and Hilary Stein"]
let sammyAdams: [String: String] = ["name": "Sammy Adams", "height": "45.0", "isExperienced": "false", "guardians": "Jeff Adams"]
let karlSaygan: [String: String] = ["name": "Karl Saygan", "height": "42.0", "isExperienced": "true", "guardians": "Heather Bledsoe"]
let suzaneGreenberg: [String: String] = ["name": "Suzane Greenberg", "height": "44.0", "isExperienced": "true", "guardians": "Henrietta Dumas"]
let salDali: [String: String] = ["name": "Sal Dali", "height": "41.0", "isExperienced": "false", "guardians": "Gala Dali"]
let joeKavalier: [String: String] = ["name": "Joe Kavalier", "height": "39.0", "isExperienced": "false", "guardians": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: String] = ["name": "Ben Finkelstein", "height": "44.0", "isExperienced": "false", "guardians": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: String] = ["name": "Diego Soto", "height": "41.0", "isExperienced": "false", "guardians": "Robin and Sariko Soto"]
let chloeAlaska: [String: String] = ["name": "Chloe Alaska", "height": "47.0", "isExperienced": "false", "guardians": "David and Jamie Alaska"]
let arnoldWillis: [String: String] = ["name": "Arnold Willis", "height": "43.0", "isExperienced": "false", "guardians": "Claire Willis"]
let phillipHelm: [String: String] = ["name": "Phillip Helm", "height": "44.0", "isExperienced": "false", "guardians": "Thomas Helm and Eva Jones"]
let lesClay: [String: String] = ["name": "Les Clay", "height": "42.0", "isExperienced": "true", "guardians": "Wynonna Brown"]
let herschelKrustofski: [String: String] = ["name": "Herschel Krustofski", "height": "45.0", "isExperienced": "false", "guardians": "Hyman and Rachel Krustofski"]

var experiencedPlayers: [[String: String]] = [] //Dictionary to store experienced player details
var inexperiencedPlayers: [[String: String]] = [] // Dictionary to store inexperienced player details

// Create variables to store team members
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []



// Create a single collection called players and add each player to the collection
var players = [[String:String]]()
players = [joeSmith,jillTanner,billBon,evaGordon,mattGill,kimmyStein,sammyAdams,karlSaygan,suzaneGreenberg,salDali,joeKavalier,benFinkelstein,diegoSoto,chloeAlaska,arnoldWillis,phillipHelm,lesClay,herschelKrustofski]


// Split experienced / inexperienced team members
for player in players {
    if player["isExperienced"] == "true"{
        experiencedPlayers.append(player)
    }
    else {
        inexperiencedPlayers.append(player)
    }
}


// Distribute team members based upon experience equally amongst teams
for player in experiencedPlayers {
    if teamDragons.count < teamSharks.count || teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count || teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

for player in inexperiencedPlayers {
    if teamDragons.count < teamSharks.count || teamDragons.count < teamRaptors.count {
        teamDragons.append(player)
    } else if teamSharks.count < teamDragons.count || teamSharks.count < teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

// Function to generate letters to guardians
func printLettersToGuardians(forTeamMember teamMember: [String:String],representingTeam team: String, notificationDate notifyDate: String)-> String{
    let teamMemberGuardians = teamMember["guardians"]!
    let teamMemberName = teamMember["name"]!
    //let teamMemberName = teamMember["name"]
    let formattedLetterContents = "Dear \(teamMemberGuardians).\n\(teamMemberName) has been chosen to represent the \(team) team in this years youth soccer league.\nThe date of the teams first practice has been scheduled for \(notifyDate)\nHere's to another funfilled season!\nYour's sincerely\nCoach Swift\n"
   return formattedLetterContents
}

// Variable to store letters collection
var letters: [String] = []

// Generate Letters to guardians and store in the letters collection
for teamDragonMember in teamDragons {
    let generatedLetter: String = (printLettersToGuardians(forTeamMember: teamDragonMember,representingTeam:  "Dragons",notificationDate: "March 17, 1pm"))
    letters.append(generatedLetter)
}

for teamSharkMember in teamSharks {
    letters.append(printLettersToGuardians(forTeamMember: teamSharkMember,representingTeam:  "Sharks",notificationDate: "March 17, 3pm"))
}

for teamRaptorMember in teamRaptors{
    letters.append(printLettersToGuardians(forTeamMember: teamRaptorMember,representingTeam:  "Raptors",notificationDate: "March 18, 1pm"))
}

// Print the letter contents to the console
var counter = 0
while counter < letters.count{
    print(letters[counter])
    counter += 1
}

