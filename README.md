# sf-sandbox-preview

A barebones Node.js app using [Express 4](http://expressjs.com/) with [Nunjucks](https://mozilla.github.io/nunjucks/) templating engine and typeahead javascript libraries.

This node and heroku portions of the application were cloned from the [Getting Started with Node on Heroku](https://devcenter.heroku.com/articles/getting-started-with-nodejs) article.

## Applcation Overview

The purpose of this app is to provide Salesforce customers with

* the ability to easily lookup their sandbox org and
* easily determine if it is a PREVIEW or NON-PREVIEW instance and
* to determine what they need to do by what date.

Today's process consists of a [blog post](https://www.salesforce.com/blog/2017/08/salesforce-winter-18-sandbox-preview-instructions.html) by Salesforce that informs customers about the process involved. It is not the most intuitive process and the goal of this application to leverage the same information but simlify it for our customers to consume and process the information.

## Running Locally

Make sure you have [Node.js](http://nodejs.org/) and the [Heroku CLI](https://cli.heroku.com/) installed.

```sh
$ git clone git@github.com:michaelguse/sandbox-preview.git # or clone your own fork
$ cd sandbox-preview
$ npm install
$ npm start
```

Your app should now be running on [localhost:5000](http://localhost:5000/).
