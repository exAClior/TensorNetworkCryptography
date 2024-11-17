# Review on "Hacking Cryptographic Protocols with Tensor Network Attacks"

I follow chapter 34 of Patrick Winston's book "Make it Clear" to write this
review.

In this work, the authors propose to use tensor networks on classical computers
to attack cryptographic protocols. They focus on known-plaintext attacks, where
the attacker has access to a few samples of plaintext and their corresponding
ciphertext pairs. The goal is to find the encryption key used to generate these
pairs.

The authors compare their methods against two baselines: brute force search and
their previously proposed Variational Quantum Attack Algorithm (VQAA). 

The core of their two proposed methods uses parameterized tensor networks to
generate probability distributions over possible encryption keys. By sampling
from these distributions, they aim to identify the most likely encryption key.

The first method builds on Zhang et al.'s work, "Unsupervised Generative Modeling Using Matrix Product States", on Matrix Product States (MPS)
for unsupervised learning. While this method applies MPS to cryptography, it
does not introduce new algorithmic innovations to the MPS framework itself.

The second method employs a tensor network simulator based on the authors'
previous work, again without significant algorithmic advances.

While the experimental results are presented clearly, the paper lacks deeper
analysis of several critical aspects:
1. How can one understand that CNOT gates play a special role in the performance of algorithms?
2. Why is it surprising that larger bond dimension parameters improve performance of your algorithm for larger-size keys?
3. What are the theoretical limitations of these approaches?

These missing analyses make the paper feel more like an experimental report
rather than a comprehensive research contribution. While the application of
tensor networks to cryptographic attacks is interesting, the authors should
provide more theoretical insights and analysis of their experimental results to
strengthen their contribution to the field.
