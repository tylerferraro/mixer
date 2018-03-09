# API

This document maps the client api to it's respective Mixer API calls.

TODO: ToC


## Achievements [link](https://dev.mixer.com/rest.html#achievements)

| Method Name | Mixer API Endpoint |
| ----------- | ------------------ |
| all         | GET /achievements  |


## Broadcasts [link](https://dev.mixer.com/rest.html#broadcasts)

| Method Name        | Mixer API Endpoint                   |
| ------------------ | ------------------------------------ |
| current            | GET /broadcasts/current              |
| find(id)           | GET /broadcasts/:id                  |
| manifest(id, type) | GET /broadcasts/:id/manifest.(:type) |


## Channels [link](https://dev.mixer.com/rest.html#channels)

| Method Name | Mixer API Endpoint         |
| ----------- | ------------------         |
| all         | GET /channels              |
| find(id)    | GET /channels/(:id|:token) |
