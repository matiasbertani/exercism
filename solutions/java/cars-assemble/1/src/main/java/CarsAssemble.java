public class CarsAssemble {

    final int CAR_PRODUCED_PER_HOUR = 221;

    public double productionRatePerHour(int speed) {
        double succesRate;
        if (speed < 5) {
            succesRate = 1;
        } else if (speed < 9) {
            succesRate = 0.9;
        } else if (speed < 10) {
            succesRate = 0.8;
        }
        else {
            succesRate = 0.77;
        }
        return succesRate * speed * CAR_PRODUCED_PER_HOUR;
    }

    public int workingItemsPerMinute(int speed) {
        return (int) productionRatePerHour(speed) / 60;
    }
}
