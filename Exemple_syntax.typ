// EXEMPLES AVANCÉS - Typst
// Ce fichier contient des exemples de fonctionnalités avancées de Typst
// Copiez-collez ces exemples dans vos sections selon vos besoins

// ═══════════════════════════════════════════════════════════════════════
// 1. TABLEAUX COMPLEXES
// ═══════════════════════════════════════════════════════════════════════

#figure(
  table(
    columns: (auto, 1fr, auto, auto),
    align: (center, left, center, right),
    stroke: (x, y) => if y == 0 { (bottom: 1pt) } else { none },
    inset: 10pt,
    table.header(
      [test], [*Approche*], [*Avantage*], [*Score*]
    ),
    [1], [Approche A], [✓], [92%],
    [2], [Approche B], [✗], [78%],
    [3], [Approche C], [✓], [88%],
  ),
  caption: [Comparaison des différentes approches]
) <tab:comparison>

// ═══════════════════════════════════════════════════════════════════════
// 2. FIGURES CÔTE À CÔTE
// ═══════════════════════════════════════════════════════════════════════

#figure(
  grid(
    columns: 2,
    gutter: 1em,

  ),
  caption: [Comparaison avant/après]
) <fig:comparison>

// ═══════════════════════════════════════════════════════════════════════
// 3. CODE AVEC COLORATION SYNTAXIQUE
// ═══════════════════════════════════════════════════════════════════════

#figure(
  ```python
  def calculate_metric(data):
      """Calcule la métrique principale."""
      result = sum(data) / len(data)
      return result
  ```,
  caption: [Implémentation de la métrique]
) <code:metric>

// ═══════════════════════════════════════════════════════════════════════
// 4. ÉQUATIONS MATHÉMATIQUES AVANCÉES
// ═══════════════════════════════════════════════════════════════════════

// Équation numérotée
$
  f(x) = sum_(i=0)^n (x^i) / (i!)
$ <eq:series>

// Système d'équations
$
  cases(
    x + y = 5,
    2x - y = 1
  )
$

// Matrice
$
  mat(
    a, b;
    c, d;
  )
$

// ═══════════════════════════════════════════════════════════════════════
// 5. LISTES AVANCÉES
// ═══════════════════════════════════════════════════════════════════════

// Liste avec descriptions personnalisées
#set enum(numbering: "a)")
+ Premier point important
  - Sous-point A
  - Sous-point B
+ Deuxième point
  - Détail 1
  - Détail 2

// Liste de définitions
#grid(
  columns: (auto, 1fr),
  row-gutter: 0.5em,
  column-gutter: 1em,
  [*Terme 1:*], [Définition du terme 1],
  [*Terme 2:*], [Définition du terme 2],
  [*Terme 3:*], [Définition du terme 3],
)

// ═══════════════════════════════════════════════════════════════════════
// 6. BOÎTES PERSONNALISÉES AVANCÉES
// ═══════════════════════════════════════════════════════════════════════

#import "Utilities/style.typ": definition-box, example-box, attention-box

// Boîte avec titre
#block(
  fill: rgb("#E8F4F8"),
  stroke: (left: 3pt + rgb("#0066CC")),
  inset: 10pt,
  radius: 3pt,
  width: 100%,
)[
  *💡 Conseil pratique*

  Voici un conseil important pour votre recherche...
]

// ═══════════════════════════════════════════════════════════════════════
// 7. RÉFÉRENCES CROISÉES AVANCÉES
// ═══════════════════════════════════════════════════════════════════════

// Dans le texte
Comme démontré dans @sec:introduction et illustré par @fig:architecture,
notre approche (voir @tab:results) montre que l'équation @eq:main
permet d'obtenir...

// ═══════════════════════════════════════════════════════════════════════
// 8. NOTES DE BAS DE PAGE
// ═══════════════════════════════════════════════════════════════════════

Ce concept est fondamental#footnote[Voir @smith2024 pour plus de détails]
dans notre approche.

// ═══════════════════════════════════════════════════════════════════════
// 9. GRAPHIQUES ET DIAGRAMMES (avec packages externes)
// ═══════════════════════════════════════════════════════════════════════

// Note: Nécessite l'installation de packages supplémentaires
// Exemple conceptuel - à adapter selon le package utilisé

// Diagramme de flux simple en utilisant des boîtes
#align(center)[
  #grid(
    columns: 1,
    row-gutter: 1em,
    box(fill: luma(230), inset: 8pt, radius: 4pt)[Étape 1: Collecte],
    text(size: 20pt)[↓],
    box(fill: luma(230), inset: 8pt, radius: 4pt)[Étape 2: Traitement],
    text(size: 20pt)[↓],
    box(fill: luma(230), inset: 8pt, radius: 4pt)[Étape 3: Analyse],
  )
]

// ═══════════════════════════════════════════════════════════════════════
// 10. MISE EN PAGE PERSONNALISÉE
// ═══════════════════════════════════════════════════════════════════════

// Page en paysage pour un grand tableau
#page(flipped: true)[
  #figure(
    table(
      columns: 10,
      // ... votre grand tableau ...
    ),
    caption: [Résultats détaillés sur toute la largeur]
  )
]

// Deux colonnes pour une section spécifique
#columns(2)[
  Texte qui sera affiché sur deux colonnes automatiquement.
  Les colonnes s'équilibrent automatiquement.

  Vous pouvez inclure des images, des tableaux, etc.
]

// ═══════════════════════════════════════════════════════════════════════
// 11. ALIGNEMENT ET ESPACEMENT
// ═══════════════════════════════════════════════════════════════════════

// Centrer du contenu
#align(center)[
  *Contenu centré*
]

// Aligner à droite
#align(right)[
  Texte à droite
]

// Espacement vertical
#v(2em)  // 2em d'espace vertical

// Espacement horizontal
#h(1cm)  // 1cm d'espace horizontal

// ═══════════════════════════════════════════════════════════════════════
// 12. TABLEAUX DE DONNÉES AVEC COULEURS
// ═══════════════════════════════════════════════════════════════════════

#let highlight-row(color) = (x, y) => {
  if y == 0 { color } else { white }
}

#figure(
  table(
    columns: 4,
    fill: (x, y) => if calc.rem(y, 2) == 0 { luma(240) } else { white },
    [*Nom*], [*Valeur*], [*Statut*], [*Notes*],
    [Test 1], [85%], [✓], [Bon],
    [Test 2], [92%], [✓], [Excellent],
    [Test 3], [78%], [✗], [À améliorer],
  ),
  caption: [Résultats des tests avec mise en forme]
)

// ═══════════════════════════════════════════════════════════════════════
// 13. CITATIONS MULTIPLES ET VARIÉES
// ═══════════════════════════════════════════════════════════════════════

// Citation simple
Selon @smith2024, cette approche...

// Citations multiples
Plusieurs auteurs @smith2024 @jones2023 @brown2025 suggèrent...

// Citation avec page
Comme mentionné dans @smith2024[p. 42], ...

// ═══════════════════════════════════════════════════════════════════════
// 14. INCLUSION CONDITIONNELLE
// ═══════════════════════════════════════════════════════════════════════

#let show-debug = false

#if show-debug [
  === Section de Debug
  Cette section n'apparaît que si show-debug est true.
]

// ═══════════════════════════════════════════════════════════════════════
// 15. FONCTIONS PERSONNALISÉES
// ═══════════════════════════════════════════════════════════════════════

#let highlight(content, color: yellow) = {
  box(
    fill: color.lighten(80%),
    outset: 2pt,
    radius: 2pt,
    content
  )
}

// Utilisation
Le point #highlight[très important] à retenir est...

// ═══════════════════════════════════════════════════════════════════════
// 16. ALGORITHMES ET PSEUDO-CODE
// ═══════════════════════════════════════════════════════════════════════

#figure(
  box(
    width: 100%,
    fill: luma(250),
    inset: 10pt,
    radius: 4pt,
  )[
    *Algorithm 1:* Calcul de la métrique

    *Input:* Dataset $D$, Paramètre $alpha$

    *Output:* Score $s$

    1. Initialize $s arrow.l 0$
    2. *for* each $x in D$ *do*
    3. #h(2em) $s arrow.l s + f(x, alpha)$
    4. *end for*
    5. *return* $s / |D|$
  ],
  caption: [Algorithme de calcul]
) <algo:metric>

// ═══════════════════════════════════════════════════════════════════════

// Pour plus d'exemples, consultez :
// - Documentation Typst: https://typst.app/docs
// - Awesome Typst: https://github.com/qjcg/awesome-typst
