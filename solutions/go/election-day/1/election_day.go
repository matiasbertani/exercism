package electionday

import "fmt"

func NewVoteCounter(initialVotes int) *int {
	var counter *int
    counter = &initialVotes
    return counter
}

func VoteCount(counter *int) int {
    if counter != nil {
    	return *counter
    }
	return 0
}

func IncrementVoteCount(counter *int, increment int) {
    if counter != nil {
		*counter += increment
    }
}

func NewElectionResult(candidateName string, votes int) *ElectionResult {
    var ptrElectionResult *ElectionResult
    e := ElectionResult {
        Name: candidateName,
        Votes: votes,
    }
    ptrElectionResult = &e
	return ptrElectionResult
}

func DisplayResult(result *ElectionResult) string {
	return fmt.Sprintf("%s (%d)", result.Name, result.Votes)
}

func DecrementVotesOfCandidate(results map[string]int, candidate string) {
	results[candidate] -= 1
}
