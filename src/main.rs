use rand::Rng;

macro_rules! base_url {
    () => {
        "http://sample.com/search?key={key}&page={page}"
    };
}
fn main() {
    let mut rng = rand::thread_rng();

    let mut x = 1;
    x += rng.gen::<i32>();
    let url = format!(base_url!(), key = "sample_key", page = x);
    println!("{}", url);

    // Copy Semantics
    let s = 1;
    let t = s;

    println!("{}", t);
    println!("{}", s);
}
