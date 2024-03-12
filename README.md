# Project 3 - Trivia

Submitted by: Samir Hassan

Trivia is an app that displays a question and 4 choices. Similar to most trivia games, the User can keep track of their score as they play the game and stay aware of their correct and wrong answers. Currently, the questions are static and therefore are hard-coded. 

Time spent: 4 hours spent in total

## Required Features

The following **required** functionality is completed:

- [X] User can view the current question and 4 different answers
- [X] User can view the next question after tapping an answer
- [X] User can answer at least 3 different questions


The following **optional** features are implemented:

- [ ] User can use the vertical orientation of the app on any device
- [X] User can track the question they are on and how many questions are left
- [X] User can see how many questions they got correct after answering all questions
- [X] User should be able to restart the game after they've finished answering all questions

The following **additional** features are/will be implemented:

- [X] User can track their score after each questions is answered
- [X] User knows if they answered a question right or wrong immediately
- [ ] I want to add a Launch Screen feature
- [ ] I want to add a launch the app on phone feature
- [ ] I want to add a better question textbox such that the font doesn't have to be very small
- [ ] I want to keep track of the score on the top right-hand corner or somewhere on the screen to make the popups less text

## Video Walkthrough

[Guide]](https://www.loom.com/share/4b09e6f344b047dd99bb1a107ee9a4d1?sid=3be7fc91-7c09-4844-ae6a-ab41e167bae3) .

## Notes

Initially, I was having a terrible time with autolayout. It was very difficult getting the constraints to work for each label/button. Stack View helped as well as the Swift autosuggestions. I also realized I couldn't apply more than one constraint as they would get me conflicting constraints. After a while, I got used to the constraints and did the method of Aligning it within the container as well as aliging it according to the leading and trailing. It also helped when I had one reference point and built a view off that reference point. Not everything has to/can be inside a Stack View.

I even had a hard time choosing which label to use or which button to use. For next time, the question should be displayed within a Label I believe instead of a UIText. I was having trouble getting the longer questions to break out into multiple lines and I could not find a setting that did that for the UIText. With a Label, if I sized it with constraints properly the text would've automatically flowed to the next line. And I could've added a white background and such to distinguish this specific Question label against other labels.

Another issue I had was with functionally thinking about how to separate the question data from the ViewController. Although it could've worked, I don't think it'd make much sense to hard-code all the questions into the ViewController file. Therefore, I made a separate file and structured it accordingly. Then, I used this instance within the TriviaViewController to call upon my different questions, their answer choices, and the type, etc. 



## License

    Copyright 2024 Samir Hassan

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
