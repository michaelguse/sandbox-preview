# Sandbox Preview Guide

The [Sandbox Preview Guide](http://www.sandboxpreview.com/) is a website that helps Salesforce customers to identify what __type__ of sandboxes they have in use and to assist in their release planning efforts, if they need/want to change a sandbox from Preview to Non-Preview or viceversa.

## Applcation Overview

The purpose of this website is to provide Salesforce customers with 

* the ability to easily lookup their sandbox org and 
* easily determine if it is a PREVIEW or NON-PREVIEW instance and 
* to determine what they need to do by what date.

### Homepage screenshot

[![Screenshot of SRC Home Page](docs/sandbox_homepage.png)](https://sandbox-preview.herokuapp.com/)

## Background

Today's process to communicate sandbox type information to customers consists of a per release [blog post](https://www.salesforce.com/blog/2018/12/spring-19-release-sandbox-preview-instructions.html) by Salesforce that informs customers about the process and steps required to change a sandbox type. 

The blog post is very informative and has been around for a long time and many users are familiar with it. But during our research phase we realized that the content is not provided in the most intuitive way possible to our customers, which typically requires a customer to re-process the blog post each release period.

## Goals

The goal of this website is to leverage the great information from the blog post, but simplify it for our customers - both internal and external to Salesforce - to consume and process the information. 

### Result page screenshot

![Screenshot of Sandbox Inquiry Result Page](docs/sandbox_result_fullpage.png)

We also incorporated hyperlinks against the [Salesforce Trust website](https://trust.salesforce.com/), to provide our customers with an easy way to find upcoming release windows for the sandbox in question.

![Screenshot of Trust link](docs/sandbox_inquiry_result.png)


