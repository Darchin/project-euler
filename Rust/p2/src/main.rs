fn main() {
    let mut sum = 0;
    let mut prev_num = 1;
    let mut curr_num = 1;
    let mut next_num = prev_num + curr_num;

    while next_num <= 4000000 {
        if next_num & 1 == 0 {
            sum += next_num;
        }
        prev_num = curr_num;
        curr_num = next_num;
        next_num = prev_num + curr_num;
    }

    println!("Sum is {}", sum);
}
