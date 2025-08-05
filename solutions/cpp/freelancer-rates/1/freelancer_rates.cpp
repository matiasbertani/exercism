#include <cmath>

double daily_rate(double hourly_rate) {
    return hourly_rate * 8;
}

double apply_discount(double before_discount, double discount) {
    return before_discount * (1 - discount / 100.0);
}

int monthly_rate(double hourly_rate, double discount) {
    double monthly_without_discount = daily_rate(hourly_rate) * 22;
    double monthly = apply_discount(monthly_without_discount, discount);
    return ceil(monthly);
}

int days_in_budget(int budget, double hourly_rate, double discount) {
    return budget / apply_discount(daily_rate(hourly_rate), discount);
}