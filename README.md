Ash’s Sudoku Application

https://github.com/ashleybridges01/sudoku_term_app

Software development plan

The Sudoku game is a terminal based program that presents the user options to select from various Sudoku boards to solve. The game will display puzzles organised by difficulty to the user on request.

The game will allow for user input directly from the terminal, changing values on the board via a key. On successful completion of the board a “You win!” message will be displayed.

The application is a fun terminal port of a classic number game. I am a fan of Sudoku puzzles and decided it would be a fun project idea to build. In regard to user benefits the application alerts when the puzzle is successfully solved as well as includes a help function to assist where stuck.

The target audience for this application is Sudoku enthusiasts with a particular benefit for those looking to build confidence solving puzzles. Users who wish for puzzles curated by difficulty and an inbuilt help function to assist where stuck will enjoy this application. 

A user will load the application via the Terminal and input commands as prompted, selecting difficulty and areas of the board to be changed. A quit and help option are included. The game ends when either the current board is solved, or the user selects to exit.
Error handling is included to streamline user inputs and make it simple to use.

Features:

1)	The sudoku game presents a board to the via printing to the terminal. The board allows for user input via a key. An input of A1 will change the top left hand most corner of the board. Boards are chosen on application start-up menu via a dropdown selection. Users can select a number from 1-9 to input in the grid sections.  

If required, the user can quit the application by pressing “q” when prompted.

2)	Error methods to assist with user input. Game selection only displays via a dropdown box for user selection and to limit user input errors,

Once game is started if a wrong input is given, e.g. j8, an “invalid input” message is displayed, and the user is prompted to try again.

Input values to the grid are limited to 1-9 in order to disallow negative numbers or numbers > 9 in line with sudoku rules.

3)	Help methods included when requested via inputting “h”.  Help methods come in two different options. One will highlight correct numbers on the board in green, the other will assist by filling in one extra number on the board.

4)	A “You win!” message is displayed upon successful board completion.
