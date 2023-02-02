
// fn filter(list: Vec<u32>) -> Vec<u32> {
//     // let mut booleans = Vec::<bool>::new();
//     let mut filtered_list = Vec::<u32>::new();
//     for element in list.iter() {
//         if 
//     }
// }
fn is_div(dividend: u32, divisor: u32) -> bool {
    if dividend % divisor == 0 {return true;}
    else {return false;}
}
fn prime_generator(x: u32) -> Vec<u32> {
    // Settings variables
    let mut prime_list = vec![2, 3];
    let mut filtered_prime_list;
    let mut add_two = true;
    let mut current_number = 10_f32;
    filtered_prime_list = prime_list.retain(|&x| x <= (current_number as f32).sqrt() as u32);
    // Handling edge cases
    match x {
        1 => {prime_list.clear();}
        2 => {prime_list.pop();}
        3..=9 => {}
    }

    // Handling cases >= 5
    while current_number <= (x as f32).sqrt() {
        for prime in prime_list.iter().filter(|&&x| x <= current_number.sqrt() as u32) {
            if is_div(current_number as u32, *prime) {
                continue;
            }
            else {
                break;
            }
        }
        
    }
}



fn main() {
    println!("Hello, world!");
}
