pub mod utils;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    dotenvy::dotenv().ok();

    println!("Hello, world!");

    Ok(())
}
