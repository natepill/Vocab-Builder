# Vocab App
Allows people to increase their vocabulary knowledge by playing a simple game to predict a word with a following letter.

## Audience
This app will serve as a hub for vocabulary enthusiasts allowing them to learn and better their word learning.

## Experience
Users will open the app and will start the game by getting a random letter and user has to respond with the following word starting with the letter. Also users will be limited with a time limit to complete the game and then they will be able to view the final score for how many words they attempted in the given time.

# Technical

## Models

* `Score` Code Data model
  * `Name: String`
  * `Score: Int`

* Word API Data Model
  * `word: String`
  * `type: String`
  * `definition: String`

## Views
`WordsTableViewCell:` subclass of `UITableViewCell` to display words

## Controllers
* `HomeViewController`
* `GameViewController`
* `ResultsViewController` 

## Other
* `Timer`
* `API for words`
* `Score Calculator`

# Weekly Milestone/Tasks

### **Monday:**
* API Helper file with connect the API.
* Struct for each word using the data model from “Model”
* Dictionary of arrays for letters
* Check a word to see if it exists in the <Letter> Dictionary based on the retrieved index values from Owais’ randomly generated array of letters
* Array of all the letters
* Generate random array of 26 Letters
* An algorithm to calculate the score 
* Take input from user and add it to a temporary array
* Function that checks if user already inputted that word
* Create Timer and be able to switch to end screen

**Tuesday:**
* Playable App.
* Timer works.
* Letter appears every time user inputs a valid word
* Checks for misspelled words
* Calculate the score based on speed and 

**Wednesday:**

**Thursday:**

**Friday:**


### **Achieved Tasks:** 

**Tuesday:**
* Dictionary of Arrays for letters.
* Logic for checking previously used words and refactored the code.
* Added timer to the Home View and Game View Controller
* Able to communicate with the oxford dictionary API
*  

**Wednesday:**

**Thursday:**

**Friday:**
 
