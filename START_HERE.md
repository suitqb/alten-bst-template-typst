# 🎉 Template Typst ALTEN BST - Prête à l'emploi !

Votre template Typst pour le Bilan Scientifique et Technique est maintenant prête !

## 📦 Contenu du package

### 📄 Fichiers principaux
- **main.typ** - Fichier principal du document (commencez ici !)
- **compile.bat** - Script de compilation pour Windows
- **compile.sh** - Script de compilation pour Linux/macOS

### 📂 Dossiers
- **Sections/** - Contenu de votre BST (7 fichiers .typ à éditer)
- **Utilities/** - Fichiers techniques (style, couverture, biblio, glossaire)
- **Images/** - Vos images et logos ALTEN

### 📚 Documentation
- **README.md** - Guide complet et détaillé
- **QUICKSTART.md** - Démarrage rapide en 5 minutes
- **OVERVIEW.txt** - Vue d'ensemble visuelle de la structure
- **EXAMPLES_ADVANCED.typ** - Exemples avancés (tableaux, figures, équations...)
- **CHANGELOG.md** - Notes de version

## 🚀 Pour commencer immédiatement

### 1. Installation (une seule fois)
```bash
# Windows
winget install --id Typst.Typst

# macOS
brew install typst

# Linux
# Télécharger depuis https://github.com/typst/typst/releases
```

### 2. Première compilation
```bash
# Double-cliquez sur compile.bat (Windows)
# ou exécutez ./compile.sh (Linux/macOS)

# OU en ligne de commande :
typst compile main.typ
```

### 3. Édition
Éditez les fichiers dans `Sections/` avec votre éditeur préféré :
- VSCode (avec extension Typst LSP recommandée)
- Tout autre éditeur de texte

### 4. Prévisualisation en direct
```bash
typst watch main.typ
# Ouvrez main.pdf dans un lecteur PDF
# Il se mettra à jour automatiquement !
```

## 📋 Fichiers à personnaliser

### Obligatoire
1. **main.typ** (lignes 6-10) : titre, sous-titre, année
2. **Sections/0_Abstract.typ** : résumé de votre travail
3. **Sections/1_Introduction.typ** : contexte et objectifs
4. **Sections/2_Problem.typ** : problème scientifique
5. **Sections/3_SoTA.typ** : état de l'art
6. **Sections/4_Operations.typ** : travaux réalisés
7. **Sections/5_Conclusions.typ** : résultats et perspectives

### Optionnel
- **Utilities/Bibliography.bib** : vos références bibliographiques
- **Utilities/Glossary.typ** : termes et acronymes spécifiques
- **Images/** : ajoutez vos images

## 💡 Conseils pour bien démarrer

1. **Lisez d'abord** : Consultez OVERVIEW.txt pour une vue rapide
2. **Commencez petit** : Compilez la template telle quelle pour voir le résultat
3. **Progressez par étapes** : Modifiez d'abord le titre, puis une section
4. **Utilisez les exemples** : EXAMPLES_ADVANCED.typ contient des exemples prêts à l'emploi
5. **Compilez souvent** : Le mode watch est votre ami !

## 🆘 En cas de problème

### Typst n'est pas reconnu
→ Vérifiez l'installation : `typst --version`
→ Redémarrez votre terminal

### Erreur de compilation
→ Lisez le message d'erreur (Typst les rend très clairs)
→ Vérifiez la syntaxe dans le fichier indiqué

### Image non trouvée
→ Vérifiez le chemin : depuis Sections/, utilisez `../Images/`
→ Vérifiez l'extension du fichier (.png, .jpg, etc.)

### Citation non résolue
→ Vérifiez que la clé existe dans Bibliography.bib
→ Attention à la casse (sensible aux majuscules/minuscules)

## 📖 Documentation recommandée

Dans l'ordre de lecture :
1. **OVERVIEW.txt** - Vue d'ensemble rapide (5 min)
2. **QUICKSTART.md** - Premier document (15 min)
3. **README.md** - Guide complet (30 min)
4. **EXAMPLES_ADVANCED.typ** - Cas avancés (quand nécessaire)

## 🎯 Différences clés avec LaTeX

| Aspect | LaTeX | Typst |
|--------|-------|-------|
| Titre de section | `\section{Titre}` | `= Titre` |
| Gras | `\textbf{texte}` | `*texte*` |
| Italique | `\textit{texte}` | `_texte_` |
| Image | `\includegraphics{...}` | `#image("...")` |
| Citation | `\cite{key}` | `@key` |
| Référence | `\ref{label}` | `@label` |
| Compilation | Plusieurs passes | Instantanée |
| Erreurs | Cryptiques | Claires |

## ✅ Checklist de démarrage

- [ ] Typst installé et fonctionnel
- [ ] Template téléchargée et dézippée
- [ ] Première compilation réussie
- [ ] PDF généré et visualisé
- [ ] Titre personnalisé dans main.typ
- [ ] Au moins une section éditée
- [ ] Mode watch testé

## 🌟 Avantages de cette template

✅ **Syntax simple** - Plus facile à apprendre que LaTeX
✅ **Compilation rapide** - Résultats instantanés
✅ **Erreurs claires** - Messages compréhensibles
✅ **Moderne** - Technologie récente et maintenue
✅ **Compatible** - Produit le même résultat que LaTeX
✅ **Modulaire** - Un fichier par section
✅ **Documentée** - Guides complets inclus

## 📞 Support

- Innovation Pilot : Contactez votre pilote d'innovation
- Documentation Typst : https://typst.app/docs
- Forum Typst : https://forum.typst.app/

## 🎓 Bon courage !

Vous avez maintenant tout ce qu'il faut pour réussir votre BST !

N'oubliez pas :
- Compilez régulièrement
- Lisez les messages d'erreur
- Consultez les exemples
- Demandez de l'aide si besoin

**Bonne rédaction ! 📝**

---

*Version 1.0 - Février 2026*  
*ALTEN Innovation Department*
