#import "@preview/touying:0.4.2": *
#import "@preview/touying-simpl-hkustgz:0.1.1" as hkustgz-theme

#let s = hkustgz-theme.register()

#let my_logo = image("img/tensorkit.svg", width: 1.5em)

// Global information configuration
#let s = (s.methods.info)(
  self: s,
  title: [Tensor Network Attack on Cryptographic Protocols],
  subtitle: [A paper review],
  authors: [Yusheng Zhao],
  date: datetime.today(),
  institution: [HKUST(GZ)],
  others: (
    (content: my_logo, dx: 1.0em, dy: 0.0em), 
    (content: my_logo, dx: 0.0em, dy: 0.0em),
    (content: my_logo, dx: 0.0em, dy: 0.0em),
  ),
)


// Extract methods
#let (init, slides) = utils.methods(s)
#show: init

// Extract slide functions
#let (slide, empty-slide, title-slide, outline-slide, new-section-slide, ending-slide) = utils.slides(s)
#show: slides.with(title-slide:true)


= Previous work @aizpurua2023hacking  

== New paper 

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

Ok, there's the trend in Table III and Table II, but did they give explaination to why we observe this?


Using MPS to represent probability distribution has two advantages @zhang2018unsupervised: 
1. Stronger learning ability that grows with bond dimension (why? it is because of the vast amount of states representable by MPS with growing bond dimension and the efficient way of contracting MPS for computing probability distribution?)
2. More efficient sampling method (how?)




#ending-slide[
  #bibliography("refs.bib")
]