#!/bin/bash

# compiling the skeleton file 
gcc skeleton.c -o ./skeleton


#       TESTS FOR CHECKING ARGUMENTS

echo
echo -e "------- Argument Tests -------"

## 1. test passes if no arguments generates a prompt telling the usage/syntax of the executable, if number of arguments isn't correct.
echo -n "Testing for situation with no arguments - " 
./skeleton > tmp 
if grep -q "Usage: ./skeleton <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


#       FILE HANDLING TESTS

echo
echo -e "------- File Handling Tests -------"

## 2. this tests will check whether the code is able to open the file (PASS) or not (FAIL): 
echo -n "Testing whether program can open a file successfully - "
./skeleton fakeName.txt > tmp
if grep -q "Error: Bad filename." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


#       VALID MAZE TESTS

echo
echo -e "------- Valid Maze Tests -------"

## 3. test passes if program can detect if a maze has less than 5 columns
echo -n "Testing for valid maze: less than 5 columns - "
./skeleton MazeFiles/InvalidMazes/LessMaze.txt > tmp
if grep -q "Error: Insufficient number of columns." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 4. test passes if program can detect if a maze has more than 100 columns
echo -n "Testing for valid maze: more than 100 columns - "
./skeleton MazeFiles/InvalidMazes/LessMaze.txt > tmp
if grep -q "Error: Too large number of columns." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 5. test passes if program can detect if a maze has less than 5 rows
echo -n "Testing for valid maze: less than 5 rows - "
./skeleton MazeFiles/InvalidMazes/LessMaze.txt > tmp
if grep -q "Error: Insufficient number of rows." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 6. test passes if program can detect if a maze has more than 100 rows
echo -n "Testing for valid maze: more than 100 rows - "
./skeleton MazeFiles/InvalidMazes/LessMaze.txt > tmp
if grep -q "Error: Too large number of rows." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 7. test passes if program can detect missing starting point in a maze
echo -n "Testing for valid maze: Starting point does not exist - "
./skeleton MazeFiles/InvalidMazes/MissingSMaze.txt > tmp
if grep -q "Error: Maze file does not have starting point." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 8. test passes if program can detect missing exit point in a maze
echo -n "Testing for valid maze: Exit point does not exist - "
./skeleton MazeFiles/InvalidMazes/MultipleEMaze.txt > tmp
if grep -q "Error: Maze file does not have Exit point." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 9. test passes if program can detect multiple start point in a maze
echo -n "Testing for valid maze: multiple start points - "
./skeleton MazeFiles/InvalidMazes/MultipleSMaze.txt > tmp
if grep -q "Error: Maze file has multiple start points." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 10. test passes if program can detect multiple exit point in a maze
echo -n "Testing for valid maze: multiple exit points - "
./skeleton MazeFiles/InvalidMazes/MultipleEMaze.txt > tmp
if grep -q "Error: Maze file has multiple exit points." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 11. test passes if program can detect if maze has unexpected characters
echo -n "Testing for valid maze: maze contains unexpected characters - "
./skeleton MazeFiles/InvalidMazes/UnexpectedCharMaze.txt > tmp
if grep -q "Error: Maze file has unexpected characters in it." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


#       USER INPUT TESTS

echo
echo -e "------- User Input Tests -------"

## 12. test passes if program displays confirmation for when user moves one step up.
echo -n "Testing for display message when user moves up - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "You have moved one step up." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 13. test passes if program displays confirmation for when user moves one step left.
echo -n "Testing for display message when user moves left - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "You have moved one step left." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 14. test passes if program displays confirmation for when user moves one step left.
echo -n "Testing for display message when user moves down - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "You have moved one step down." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 15. test passes if program displays confirmation for when user moves one step right.
echo -n "Testing for display message when user moves right - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "You have moved one step right." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 16. test passes if program displays Oops! message when player tries to walk into wall.
echo -n "Testing for display message informing user when walking into a wall - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "Oops! You can't walk into a wall." tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 17. test passes if program displays Oops! message when player tries to go off top edge.
echo -n "Testing for display message when user tries to move off top edge - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "Oops! You can't walk off the top edge!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 18. test passes if program displays Oops! message when player tries to go off left edge.
echo -n "Testing for display message when user tries to move off left edge - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "Oops! You can't walk off the left edge!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 19. test passes if program displays Oops! message when player tries to go off bottom edge.
echo -n "Testing for display message when user tries to move off bottom edge - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "Oops! You can't walk off the bottom edge!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 20. test passes if program displays Oops! message when player tries to go off right edge.
echo -n "Testing for display message when user tries to move off right edge - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "Oops! You can't walk off the right edge!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 21. test passes if program displays welcome message on the start of the game loop.
echo -n "Testing for display welcome message at the start of game - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "Welcome to the Maze!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 22. test passes if program displays congratulations message when user reaches exit of the maze.
echo -n "Testing for display congratulations message at the end of the game - "
./skeleton MazeFiles/ValidMazes/ValidMaze.txt > tmp
if grep -q "Congratulations, you have solved the maze!" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi


#       VALID INPUT FILE TESTS

echo
echo -e "------- Valid Input File Tests -------"

## 23. test passes if program can detect that input file has unexpected characters
echo -n "Testing for valid input file: file contains unexpected characters - "
./skeleton InputFiles/InvalidInput/UnexpectedCharInp.txt > tmp
if grep -q "Error: Input file contains unexpected characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

## 24. test passes if program can detect that input file has blank space
echo -n "Testing for valid input file: file contains blank space - "
./skeleton InputFiles/InvalidInput/BlankInp.txt > tmp
if grep -q "Error: Input file contains blank spaces" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# removing the tmp file at the end
rm -f tmp