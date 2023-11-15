# Some remarks for those unfamiliar with the power (magic) of zero-knowledge proofs (ZKPs):
* In this little example the password should be kept secret and is only known by the prover.
* The password hash is known by the prover and the verifier (any untrusted third party).
* The prover generates a proof and sends it to the verifier (this might be a smart contract on L1)
* The magic: The prover can convince the verifier that he knows the secret password without revealing the actual password itself to the verifier. 
* All the necessary "moon math" is abstracted away by the Noir language here.