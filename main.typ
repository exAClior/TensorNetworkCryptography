#import "@preview/touying:0.4.2": *
#import "@preview/touying-simpl-hkustgz:0.1.0" as hkustgz-theme

#let s = hkustgz-theme.register()

// Global information configuration
#let s = (s.methods.info)(
  self: s,
  title: [Tensor Network Attack on Cryptographic Protocols],
  subtitle: [A paper review],
  author: [Yusheng Zhao],
  date: datetime.today(),
  institution: [HKUST(GZ)],
)

// Extract methods
#let (init, slides) = utils.methods(s)
#show: init

// Extract slide functions
#let (slide, empty-slide, title-slide, outline-slide, new-section-slide, ending-slide) = utils.slides(s)
#show: slides.with()

// #outline-slide()
= Outline

= Previous work @aizpurua2023hacking

Improved Variational Quantum Attack Algorithm on Cryptographic Protocols
1. Reduced number of qubits and circuit depth
2. Used coordinate transformation to reduce Barren Plateau
3. Generalized this approach to work with symmetric and assymetric key encryption.

Encodes a known ciphertext as the ground state of a classical Hamiltonian.

How can I do encoding without knowing the ground state?
How does secret key correspond to variational parameter for the ground state of this classical Hamiltonian?

= Tensor Network Approach @aizpurua2024hacking

Assumes know the plain text and corresponding cipher text, want to extract the secret key.

What is the benefit of using tensor network? It is not faster! Only fewer iterations. Why should we care about the number of iterations if the total time is longer?

"More complex the cipher and the longer the key, the more compelx the best hacking method is." @aizpurua2024hacking, in what sense is VQAA more complex than MPS approach? 



#bibliography("refs.bib")