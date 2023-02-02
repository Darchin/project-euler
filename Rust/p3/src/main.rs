use std::time::{Instant};
use std::io;

fn main() {
    let mut factors = Vec::<u64>::new();
    factors.push(1);

    let mut add_two = true;
    
    println!("Enter a number: ");
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read input");
    
    let mut num = input.trim().parse::<u64>().unwrap();
    drop(input);
    let mut div: u64 = 5;

    let now = Instant::now();

    if num & 1 == 0 {
        factors.push(2);
        while num & 1 == 0 {
            num >>= 1;
        }
    }

    if num % 3 == 0 {
        factors.push(3);
        while num % 3 == 0 {
            num /= 3;
        }
    }


    while num != 1 {
        if num % div == 0 {
            factors.push(div);
            while num % div == 0 {
                num /= div;
            }
        }
        if add_two {
            div += 2;
            add_two = false;
        }
        else {
            div += 4;
            add_two = true;
        }
    }

    println!("{:?}", factors);
    println!("{}", now.elapsed().as_micros());
}
