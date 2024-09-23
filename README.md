# Site web du club Saveurs de génie utilisant le thème hugo [Eventre](https://github.com/themefisher/eventre/)

## Dépendances

* [Hugo](https://gohugo.io/)
* [node js](https://nodejs.org/en/download/)
* **Gulp :** Installer Gulp globalement sur votre poste

```sh
npm install --global gulp-cli
```

## Développement locale

* Installer les librairies

```sh
npm install
```

* Exécuter localement

```sh
npm run dev
```

Ensuite, il ouvrira un aperçu du modèle dans votre navigateur par défaut,
surveillera les modifications apportées aux fichiers sources et rechargera le
navigateur en direct lorsque les modifications seront enregistrées.

## Deploiement

Le déploiement de cette application est automatisé via GitHub Actions. Le flux
de travail définit deux scénarios principaux :

1. **Construction et étiquetage lors d'un merge sur `master` :**

    * Lorsqu'un changement est fusionné dans la branche master, GitHub Actions
      déclenche une construction de Docker.
    * Une nouvelle version de l'application est générée en utilisant la
      convention de versionnement sémantique (par exemple **`v1.0.1`**).
    * L'image est ensuite poussée vers le registre Docker Hub avec deux
      étiquettes : latest et la version générée (par exemple **`v1.0.1`**).

2. **Construction lors d'une nouvelle release :**

Lorsqu'une nouvelle release est créée manuellement sur GitHub, une autre
construction de Docker est déclenchée. L'image est poussée vers Docker Hub avec
l'étiquette correspondant à la version de la release (par exemple **`v1.1.0`**).

## Mettre à jour le contenu

* Assurer vous toujours d'avoir votre repository local à jour avec un ```git
  pull```.[](url)

TODO
