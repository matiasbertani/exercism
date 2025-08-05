class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age < 60? 15: 10
  end

  def watch_scary_movie?
    @age < 18? false: true
  end

  def claim_free_popcorn!
    @member? "🍿": (raise NotMovieClubMemberError)
  end

end
