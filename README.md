## A little example demonstrating the power (magic) of zero-knowledge proofs (ZKPs) utilized and abstracted away by Noir:
* In this little example the password should be kept secret and is only known by the prover.
* The password hash is known by the prover and the verifier (any untrusted third party).
* The prover generates a proof and sends it to the verifier (this might be a smart contract on L1)
* The magic: By leveraging the unique properties of ZKPs the prover can convince the verifier that he knows the secret password without revealing the actual password itself to the verifier. 
* All the necessary "moon math" is abstracted away by the Noir language here.

The test can be called via: 
```bash
nargo test --show-output
```

The Prover.toml file contains the secret password and its corresponding sha256 hash. In a real world example this secret password is oc kept secret.
The proof is then generated via:
```bash
nargo prove
```
And the proof can be verified via:
```bash
nargo verify
```
