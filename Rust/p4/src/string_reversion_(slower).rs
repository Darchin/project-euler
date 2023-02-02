use std::time::{Instant};
fn main() {
    let mut k = 0;
    let mut max = 0;
    let mut num;
    let mut i = 999;
    let now = Instant::now();

    while i >= 900 {
        for j in (900..=(999-k)).rev() {
            num = i * j;
            if num < max {continue}
            else if num.to_string().chars().rev().collect::<String>().parse::<i64>().unwrap() == num {
                if num > max {max = num;}
            }
        }
        k += 1;
        i -= 1;
    }
    println!("Largest Palindrome is {}", max);
    println!("{}", now.elapsed().as_micros());
}