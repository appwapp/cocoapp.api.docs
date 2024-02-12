---
description: Documentation et exemples d'intégrations
layout:
  title:
    visible: true
  description:
    visible: true
  tableOfContents:
    visible: false
  outline:
    visible: false
  pagination:
    visible: false
---

# 🥥 Cocoapp API

Cocoapp vous permet d'interagir directement avec son API pour certaines ressources.&#x20;

## Accès

Pour obtenir votre clé d'API, veuillez communiquer votre demande a l'adresse [info@cocoapp.com](mailto:info@cocoapp.com) avec votre les informations suivantes:

* Votre courriel associé a votre compte Cocoapp;
* Votre nom d'espace de travail auquel vous voulez utiliser l'API;
* Une explication de l'utilisation que vous en ferez.

Nous vous répondront dans les délais les plus brefs avec votre clé d'API.

## Utilisation

### Autorisation

Une fois vos accès obtenus, vous n'avez qu'a ajouter votre clé d'API en tant que en-tête `Authorization Bearer` dans tous les requêtes.

### Données et réponses

L'API de Cocoapp suit la spécification [JSON-API](https://jsonapi.org/). Cette spécification est bien répandue et permet un formattage robuste.

L'API accepte seulement le contenu envoyé sous forme de JSON et retourne sa réponse sous forme de JSON aussi.

### En-têtes HTTP requis

<table><thead><tr><th width="207">En-tête HTTP</th><th width="306">Valeur</th><th>Description</th></tr></thead><tbody><tr><td><code>Accept</code></td><td><code>application/vnd.api+json</code></td><td>Format JSON accepté</td></tr><tr><td><code>Authorization</code></td><td><code>Bearer [votre-clé-api]</code></td><td>Token autorisé</td></tr><tr><td><code>Content-Type</code></td><td><code>application/vnd.api+json</code></td><td>Format JSON contenu</td></tr></tbody></table>

## APIs

Cocoapp est séparé en plusieurs APIs, un API principal ainsi qu'un API par connecteur. Plus de détails pour chaque API et leurs requêtes sur SwaggerHub

<table><thead><tr><th width="197">API</th><th width="138">Version</th><th>Resources disponibles</th></tr></thead><tbody><tr><td><a href="https://app.swaggerhub.com/apis/Appwapp/Cocoapp/v1.0.0#/">Core</a></td><td>v1 (1.0.0)</td><td><ul><li>Contacts</li></ul></td></tr><tr><td><a href="https://app.swaggerhub.com/apis-docs/Appwapp/Cocoapp-SMS/1.0.0">SMS</a></td><td>v1 (1.0.0)</td><td><ul><li>Messages SMS (envoi seulement)</li></ul></td></tr></tbody></table>

{% hint style="info" %}
La version de l'API est representée par `v1` dans l'URL, il n'est pas nécessaire de passer la version complète. Lorsqu'une nouvelle version est disponible sous la même version majeure, aucune changement qui brise l'utilisation de l'API ne sera déployé. Tout changement qui peut briser son fonctionnement sera ajouté dans une autre
{% endhint %}
