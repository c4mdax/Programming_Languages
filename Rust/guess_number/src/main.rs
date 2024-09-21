use rand::Rng;

trait Generate{
    fn generate_random(&self, range:i32) -> i32;
}
struct Bot{
    name: String,
}

impl Generate for Bot{
    fn generate_random(&self, range:i32) -> i32{
	let mut rng = rand::thread_rng();
	let mut number = rng.gen_range(0..range);
	println!("{}", number);
	number
    }
}
fn main() {
    let bot = Bot{
	name: String::from("Randomer"),
    };

    let random_number = bot.generate_random(10);
    println!("Hello, I")
    println!("Random number: {}",random_number);
}
