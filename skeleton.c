#include <stdio.h>
#include <stdlib.h> 

// struct that will hold the data for one maze file at a time
typedef struct {
    int currentHeight; // height of current maze
    int currentWidth; // width of current maze
    char maze[100][100]; // a maze can have max number of rows and columns 100
    int rowNo; // to track current row positon of the player
    int colNo; // to track current column positon of the player
} mazeFile;

// function definitions

void validMaze(const char *filename){
    // this function will check whether the provided files contain valid mazes. This includes conditions like:
    // whether the maze size is within range
    // whether the maze has unexpected characters
    // whether the maze has missing start or exit, or multiple starts or exits
    // terminates program if 
}

void startGame(const char *filename){
    // this function will start the game by loading the file using fopen, and putting the required values in the variables in the struct.
}

void loadGame(const char *filename){
    // this function will implement the game by taking the inputs from the user or from an input file (as required).
    // the function will run a switch statement with the cases being as follows:
    // - w: change the row position one row above (subtract from rowNo)
    // - a: change the column position one column left (subtract from colNo)
    // - s: change the row position one row below (add to rowNo)
    // - a: change the column position one column right (add to colNo)
    // - m: print out the maze with X (player position), S (start point), E (end point) visible
    // each move will print out a display message stating how the player has moved
}

void endGame(const char *filename){
    // this function will end the game by closing the file handle
}

int main(int argc, char *argv[]) {

    // Check for correct number of command-line arguments (2 in this case: executable plus filename.)
    if (argc != 2) {
        printf("Usage: ./skeleton <filename>\n");
        return 0;
    }
    
    // Open the file. The file is provided as an argument after the executable (argv[1]).
    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        printf("Error: Bad filename.\n");
        return 0;
    }

    validMaze(argv[1]);
    valid

    return 0;
}