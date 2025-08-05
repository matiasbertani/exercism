package chessboard

// Declare a type named File which stores if a square is occupied by a piece - this will be a slice of bools
type File []bool

// Declare a type named Chessboard which contains a map of eight Files, accessed with keys from "A" to "H"
type Chessboard map[string]File

func CountInFile(cb Chessboard, file string) int {
    occupiedSquares := 0
    for _, occupied := range cb[file] {
        if occupied {
        	occupiedSquares++    
        }
    }
	return occupiedSquares
}

func CountInRank(cb Chessboard, rank int) int {
    if rank < 1 || 8 < rank {
        return 0
    }
    occupiedSquares := 0
	for _, file := range cb {
        if file[rank - 1] {
            occupiedSquares++
        }
    }
	return occupiedSquares
}

func CountAll(cb Chessboard) int {
    count := 0
	for _, file := range cb {
        count += len(file)
    }
	return  count
}

func CountOccupied(cb Chessboard) int {
    count := 0
	for file := range cb {
        count += CountInFile(cb, file)
    }
	return count
}
