// Some initial remarks for those unfamiliar with the power (magic) of zero-knowledge proofs (ZKPs):
// In this example the password should be kept secret and is only known by the prover.
// The password hash is known by the prover and the verifier (any untrusted third party).
// The prover generates a proof and sends it to the verifier (this might be a smart contract on L1)
// The magic: The prover can convince the verifier that he knows the secret password without revealing the actual password itself to the verifier. 
// All the necessary "moon math" is abstracted away by the Noir language here.

use dep::std;

fn main(secret_password: str<4>, secret_password_hash: pub [u8; 32]) {
    // sha256 returns the data type: [u8; 32]
    let y = std::hash::sha256(secret_password.as_bytes());    
    assert(secret_password_hash == y);
}

#[test]
fn test_main() {    
    let secret_password = "noir";
    let secret_password_hash = std::hash::sha256(secret_password.as_bytes());    
    std::println(""); 
    std::println("The secret password is:");
    std::println(secret_password);
    std::println("The secret password hash (hashed via sha256) is:");    
    std::println(secret_password_hash);    
    main(secret_password, secret_password_hash);     
}


