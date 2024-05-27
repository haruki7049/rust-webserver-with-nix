use axum::{routing::get, Router};

const IP_ADDRESS: &str = "127.0.0.1:8888";

#[tokio::main]
async fn main() {
    let app = Router::new().route("/", get(hello));

    let listener = tokio::net::TcpListener::bind(IP_ADDRESS).await.unwrap();

    println!("Server is up on {}...", IP_ADDRESS);
    axum::serve(listener, app).await.unwrap();
}

async fn hello() -> &'static str {
    "Hello, with Nix!!"
}
