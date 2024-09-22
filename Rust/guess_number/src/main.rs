use rand::Rng;
use std::io;

trait Generate {
    fn generate_random(&self, range: i32) -> i32;
}

struct Bot {
    name: String,
}

impl Generate for Bot {
    fn generate_random(&self, range: i32) -> i32 {
        let mut rng = rand::thread_rng();
        let number = rng.gen_range(0..range);
        number
    }
}

fn main() {
    let bot = Bot {
        name: String::from("Pepe"),
    };
    
    let welcome_message = "I'm going to think of a number and your job is to guess it in as few questions as possible!";
    let mut input = String::new();
    let mut question_limit = String::new();

    println!("Hello! I'm {}", bot.name);
    println!("{}", welcome_message);  // Imprime el mensaje completo
    println!("First, set the limit for the random number:");

    io::stdin().read_line(&mut input)
        .expect("Error to read your input");
    let number_input: i32 = input.trim().parse().expect("Set a valid number");

    let random_number = bot.generate_random(number_input);

    println!("Good! Now set your question limit:");
    io::stdin().read_line(&mut question_limit)
        .expect("Error to read your input");
    let questions: i32 = question_limit.trim().parse().expect("Set a valid number");

    println!("You have {} questions to guess the number between 0 and {}.", questions, number_input);

    let mut remaining_questions = questions;
    while remaining_questions > 0 {
        let mut guess = String::new();
        println!("Enter your guess:");
        io::stdin().read_line(&mut guess)
            .expect("Error to read your input");
        let guess: i32 = guess.trim().parse().expect("Enter a valid number");

        if guess == random_number {
            println!("Congratulations! You guessed the number!");
            break;
        } else if guess < random_number {
            println!("Too low!");
        } else {
            println!("Too high!");
        }

        remaining_questions -= 1;

        if remaining_questions == 0 {
            println!("You're out of questions! The number was: {}", random_number);
        } else {
            println!("You have {} questions remaining.", remaining_questions);
        }
    }
}
