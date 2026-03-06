// ALTEN BST (Bilan Scientifique et Technique) Template
// Main document file

// Import utilities
#import "Utilities/cover.typ": make-cover
#import "./Utilities/style.typ": apply-style
// Document metadata
#let title = "VLM & graphe de contexte pour la prédiction d'intention piéton"
#let subtitle = "Revue de littérature"
#let short-title = "test"
#let year = "Fevrier 2026"
#let department = "Innovation Department - Quentin Balezeau"

// Apply document style
#show: apply-style.with(
  title: title,
  short-title: short-title
)

// Cover page
#make-cover(
  title: title,
  subtitle: subtitle,
  year: year,
  department: department
)

// Table of contents
#pagebreak()
#outline(
  title: "Contents",
  depth: 3,
  indent: auto
)

// Explainer section (non-numbered)
#pagebreak()
#include "Sections/Synthèse.typ"

// Bibliography
#pagebreak()
#bibliography("Utilities/Bibliography.bib", style: "ieee")
