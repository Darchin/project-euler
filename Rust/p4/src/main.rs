use std::time::Instant;
fn reverse_int(mut x: u64) -> u64 {
    let mut remainder: u8;
    let mut reverse: u64 = 0;

    while x != 0 {
        remainder = (x % 10) as u8;
        reverse = reverse * 10 + remainder as u64;
        x /= 10;
    }
    reverse
}
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
            else if reverse_int(num) == num {
                if num > max {max = num;}
            }
        }
        k += 1;
        i -= 1;
    }
    println!("Largest Palindrome is {}", max);
    println!("{}", now.elapsed().as_micros());
}