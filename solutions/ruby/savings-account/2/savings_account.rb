module SavingsAccount
  def self.interest_rate(balance)
    case 
      when balance < 0 then 3.213
      when balance < 1000 then 0.5
      when balance < 5000 then 1.621
      else 2.475
    end
  end

  def self.annual_balance_update(balance)
    balance + interest_rate(balance)/100 * balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    until current_balance >= desired_balance
      years += 1
      current_balance = annual_balance_update(current_balance)
    end
    years
  end
end
