# SVRFClientSwift - the Swift client library for the SVRF API

For more information, please visit [https://github.com/svrf/svrf-api](https://github.com/svrf/svrf-api)

## Getting Started
SVRF's API allows you to supercharge your project or app with the first and largest search engine for immersive experiences. We make it simple for any developer to incorporate highly immersive experiences with all kinds of applications: virtual reality, augmented reality, mixed reality, mobile, and web.
The SVRF API Documentation is available at <https://developers.svrf.com>.

## Installation & Usage
### Install from [CocoaPods](https://cocoapods.org/)
```ruby
pod 'SVRFClientSwift', '~> 1.3.0'
```

## Recommendation
It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started
Please follow the [installation procedure](#installation--usage). You can find code example at [SVRF ARKitFaceFilterDemo](https://github.com/SVRF/svrf-api/blob/master/examples/ARKitFaceFilterDemo/ARKitFaceFilterDemo/SvrfApi.swift)

## Documentation for API Endpoints
All URIs are relative to *https:&#x2F;&#x2F;api.svrf.com&#x2F;v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthenticateAPI* | **authenticate** | **POST** /app/authenticate | Authenticate application
*MediaAPI* | **getById** | **GET** /vr/{id} | Media by ID Endpoint
*MediaAPI* | **getTrending** | **GET** /vr/trending | Trending Endpoint
*MediaAPI* | **search** | **GET** /vr/search | Search Endpoint

## Documentation For Authorization
## XAppToken
- **Type**: API key
- **API key parameter name**: x-app-token
- **Location**: HTTP header

## Author
api@svrf.com
