# ALTEN BST Typst Template

Template Typst pour la rédaction du Bilan Scientifique et Technique (BST) à ALTEN.

## 📋 Table des matières

- [Introduction](#introduction)
- [Installation](#installation)
- [Structure du projet](#structure-du-projet)
- [Comment utiliser cette template](#comment-utiliser-cette-template)
- [Compilation](#compilation)
- [Bonnes pratiques](#bonnes-pratiques)
- [FAQ](#faq)

## Introduction

Cette template Typst est une adaptation de la template LaTeX officielle ALTEN BST. Typst est un système de composition de documents moderne qui offre :

- ✅ **Plus simple** : syntaxe plus intuitive que LaTeX
- ✅ **Plus rapide** : compilation instantanée
- ✅ **Plus moderne** : gestion native des images, tableaux, etc.
- ✅ **Compatible** : format de sortie PDF identique

## Installation

### 1. Installer Typst

**Option A : Installation locale (recommandée)**

- **Windows** : 
  ```bash
  winget install --id Typst.Typst
  ```

- **macOS** :
  ```bash
  brew install typst
  ```

- **Linux** :
  ```bash
  # Téléchargez depuis https://github.com/typst/typst/releases
  # Ou utilisez votre gestionnaire de paquets
  ```

**Option B : Utilisation en ligne**

⚠️ **ATTENTION** : L'utilisation de [typst.app](https://typst.app) (version en ligne) est déconseillée pour les documents confidentiels ALTEN, car vos données seraient stockées sur un serveur externe.

### 2. Installer un éditeur (optionnel mais recommandé)

**VSCode** avec l'extension Typst LSP :
1. Installez [Visual Studio Code](https://code.visualstudio.com/)
2. Installez l'extension "Tinymist Typst" depuis le marketplace VSCode
3. Profitez de l'autocomplétion, de la coloration syntaxique et de la prévisualisation en direct !

## Structure du projet

```
ALTEN_BST_Typst/
│
├── main.typ                    # Fichier principal (point d'entrée)
│
├── Sections/                   # Contenu du document
│   ├── _Explainer.typ         # Guide d'utilisation
│   ├── 0_Abstract.typ         # Résumé
│   ├── 1_Introduction.typ     # Contexte R&D
│   ├── 2_Problem.typ          # Problème scientifique
│   ├── 3_SoTA.typ            # État de l'art
│   ├── 4_Operations.typ       # Opérations menées
│   └── 5_Conclusions.typ      # Conclusions
│
├── Utilities/                  # Fichiers utilitaires
│   ├── style.typ              # Styles et mise en forme
│   ├── cover.typ              # Page de couverture
│   ├── Glossary.typ           # Glossaire
│   └── Bibliography.bib       # Bibliographie (format BibTeX)
│
└── Images/                     # Ressources visuelles
    └── Cover/                  # Logos pour la couverture
        ├── LogoALTEN.png
        └── LogoDIN.png
```

## Comment utiliser cette template

### 1. Personnaliser la page de couverture

Ouvrez `main.typ` et modifiez les variables au début du fichier :

```typst
// Document metadata
#let title = "Votre Titre Ici"
#let subtitle = "Votre Sous-titre"
#let short-title = "Titre Court"
#let year = "2025"
#let department = "Innovation Department - Sophia Antipolis"
```

### 2. Rédiger le contenu

Éditez les fichiers dans le dossier `Sections/` :

- **0_Abstract.typ** : Rédigez votre résumé
- **1_Introduction.typ** : Contexte et questions de recherche
- **2_Problem.typ** : Problème scientifique et verrous
- **3_SoTA.typ** : État de l'art
- **4_Operations.typ** : Travaux réalisés
- **5_Conclusions.typ** : Résultats et perspectives

### 3. Ajouter des images

1. Placez vos images dans le dossier `Images/`
2. Insérez-les dans votre document avec :

```typst
#figure(
  image("../Images/mon-image.png", width: 80%),
  caption: [Votre légende ici]
) <fig:mon-label>
```

3. Référencez-les dans le texte : `@fig:mon-label`

### 4. Gérer la bibliographie

1. **Avec Zotero** :
   - Exportez votre collection au format BibTeX (.bib)
   - Remplacez `Utilities/Bibliography.bib` par votre fichier

2. **Citer dans le texte** :
   ```typst
   Selon @bozdag2018, ...
   Plusieurs études @bozdag2018 @wang2019 montrent que...
   ```

### 5. Utiliser les boîtes de mise en forme

La template propose trois types de boîtes :

```typst
#import "../Utilities/style.typ": definition-box, example-box, attention-box

// Boîte de définition (bleue)
#definition-box[
  Votre contenu ici
]

// Boîte d'exemple (verte)
#example-box[
  Votre exemple ici
]

// Boîte d'attention (jaune/rouge)
#attention-box[
  Attention : information importante
]
```

## Compilation

### En ligne de commande

```bash
# Compiler le document
typst compile main.typ

# Compiler avec surveillance (recompile automatiquement)
typst watch main.typ

# Spécifier le nom du fichier de sortie
typst compile main.typ mon-rapport.pdf
```

### Avec VSCode

1. Ouvrez `main.typ`
2. L'extension Tinymist Typst affiche automatiquement la prévisualisation
3. Le PDF est généré automatiquement à chaque sauvegarde

## Bonnes pratiques

### Labels et références

Utilisez des labels sémantiques pour faciliter les références :

```typst
= Ma Section <sec:ma-section>
== Ma Sous-section <subsec:ma-sous-section>

// Référencer :
Voir @sec:ma-section pour plus de détails.
```

### Formatage du texte

```typst
// Gras
*texte en gras*

// Italique
_texte en italique_

// Code inline
`code`

// Lien
#link("https://example.com")[texte du lien]

// Liste
- Élément 1
- Élément 2

// Liste numérotée
+ Premier
+ Deuxième
```

### Tableaux

```typst
#figure(
  table(
    columns: (auto, auto, auto),
    align: (left, center, right),
    table.header(
      [Colonne 1], [Colonne 2], [Colonne 3]
    ),
    [Ligne 1], [Données], [100%],
    [Ligne 2], [Données], [85%],
  ),
  caption: [Mon tableau]
) <tab:mon-tableau>
```

### Équations mathématiques

```typst
// Inline
La formule $E = m c^2$ montre...

// Block
$ 
  integral_0^infinity e^(-x^2) dif x = sqrt(pi)/2 
$
```

## FAQ

### Comment ajouter une nouvelle section ?

1. Créez un fichier `.typ` dans `Sections/`
2. Ajoutez `#include "Sections/VotreFichier.typ"` dans `main.typ`

### Comment changer la numérotation des sections ?

Dans `Utilities/style.typ`, modifiez :
```typst
set heading(numbering: "1.1.1")  // Actuellement
set heading(numbering: "1.1.1.1")  // Pour 4 niveaux
```

### Où trouver de l'aide sur Typst ?

- [Documentation officielle](https://typst.app/docs)
- [Tutoriel](https://typst.app/docs/tutorial/)
- [Forum communautaire](https://forum.typst.app/)
- [Awesome Typst](https://github.com/qjcg/awesome-typst) - Liste de ressources

### Les citations ne fonctionnent pas ?

Vérifiez que :
1. Votre fichier `.bib` est bien dans `Utilities/Bibliography.bib`
2. Les clés de citation correspondent exactement (sensible à la casse)
3. Le format BibTeX est valide

### Comment personnaliser les couleurs ?

Dans `Utilities/style.typ`, modifiez :
```typst
#let alten-blue = rgb("#0066CC")  // Couleur principale ALTEN
```

## Support

Pour toute question sur cette template :
- Contactez votre Innovation Pilot
- Consultez la section Explainer dans le document généré

## Différences avec la template LaTeX

| Aspect | LaTeX | Typst |
|--------|-------|-------|
| Syntaxe | Complexe (`\command{}`) | Simple (`#command[]`) |
| Compilation | Lente (plusieurs passes) | Instantanée |
| Tableaux | Complexe | Intuitif |
| Images | Nécessite packages | Natif |
| Erreurs | Cryptiques | Claires et précises |
| Courbe d'apprentissage | Raide | Douce |

---

**Version** : 1.0  
**Date** : Février 2026  
**Auteur** : ALTEN Innovation Department
