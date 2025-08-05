export function totalBirdCount(birdsPerDay) {
  let count = 0;
  for (let i=0; i < birdsPerDay.length; i++){
    count += birdsPerDay[i];
  }
  return  count;
}

export function birdsInWeek(birdsPerDay, week) {
  let startDay = (week - 1) * 7 ;
  return totalBirdCount(birdsPerDay.slice(startDay, startDay + 7));
}

export function fixBirdCountLog(birdsPerDay) {
  for (let i=0; i < birdsPerDay.length; i += 2) birdsPerDay[i]++ ;
  return birdsPerDay;
}
