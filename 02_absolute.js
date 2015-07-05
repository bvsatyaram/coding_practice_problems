// Write a function that takes a number
// as argument and returns the absolute value
// of the number as the output.
function absolute(a) {
  if(a >= 0) {
    return a;
  } else {
    return -a;
  }
}

console.log(absolute(2));
console.log(absolute(-3));