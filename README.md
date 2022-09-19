<br>
<h3 align="center">
<p align="center"><a href="https://cryptowarp.io" target="_blank" rel="noopener noreferrer"><img width="100" src="https://cryptowarp.io/images/logo-100.png" alt="cryptowarp.io logo"></a></p>
<b>Cryptowarp.io</b>   REST API <b></b> <br>Bearer Authentication examples
</h3>
<p align="center">
    <a href="https://cryptowarp.io"><img src="https://img.shields.io/badge/built%20with-love-brightgreen?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABmJLR0QA/wD/AP+gvaeTAAAEfElEQVRoge2XTWhcVRiGnzNJQZBCUoNK0TS2lRIHI9KFiKBWSC1BSgjRShUpCMYu3BlGXHSuu8SVoLiIG0WDSIvWhSJplMSNLroo1pBoKW0tGo2hrRhBaeZ7Xcydyf05dzKTTHZzmMv9O3PO+7z3/e6ZgVZrtVZrtVbbRHP1dFo5/HqfsGEc/UjdSF2SljFdlvja3OqnnV++da6RiZcefvFBM4ZMesJJPbJwTOkXM01hduru85PnNwVwY3B0zza1jQuGACcTyJCEJDCtHUszYEHnmbdna425+MhLB1zJijI9hoTC8ZAojy8EhAOfKrm2Qs8PH15qGGBl8LWDSJ+A60hNsCYaWeRYkpN9RNvNV3ZMT/wVHe/648c6/vu3/R2k5zIMSOzLDKDrmDuya/7jM3UDlMXzBVJ7agLPpFGwcP+zww12ffvuPMDiQyP3Obd6Wsa9vidY/g5ABoS0ak4Du+dPpiBSADcGR/e0K3dWosPjcMJ181yrQv0NDCM5mZ2UtN37BP2CERGw8v1rLre6/56F05ejetuTANuUGzdTI7HxA0jbMfs8vHbLBlyPwADSjtKqGweOZD6BlcOv9sly5yS5dGyMhMMpB7NgN+F6sp9w9O29+NmP3idQMve0k7l6HE5fM4/DPtdDMSRhSLmeBsZhDANVgFwsP6b+qigzFN2UOE9tyt6U3Mxz3+J9zEINUQhDKj2ZWQMy20XCNX9EbAOxIRGTmnmvFbPuWgCdjcXGH5EyoDcCCbEZELVhb8sEwPSHpO6069kF3BTX63kbUR3v96jkWA0Im01lO5lX7xapg5iISGHb2tssHRFbu++Jacwg02wmgJner12o6YImInzterI4IwVaBfYUdqxP2C8B64wPoppTK/Gfjx6fWfuh5S/glCvrFV48Av5+ZH2P6BwzvYtfHciuAcDdLL1sOc5iujWrWGsuSLEsZwhedw0o94uaA/yTc3Y8qTeXvND13cQCJY3Esx3f0u/nSGZjWTYPrCVqwteP0KhQvMCwkX2/TS2sCwBwx/fvTcrsRO0FqZ7FqPG8R2Gh+sRO5BenJn1aa/6h+XX/CwWMsS1YjKrjVcVWo0VUOM4U9C5NvZGlcd2/lFcfeL4AjGVmtu7izOhXgQ330fP1xNcFAHD1/qMF1YDIdj5xnlh5s1xH4LS++LoBAK7kjxaQjdV85dUbswpouI+f1y++IQCAK73PFkwWfxKVybPynohZVGjSdRBO1C2+YQCAS/ueKSgJ0QTXw+Mg34D4DQEAXNw7XAAba5br5Y8F+aXphsRvGADgwu6hwMmKDfwMCE+TwgGzIL/cuPhNAQBc6BkMJCv6aiIdl4w3jmnD4jcNAPBT91MBopjpuld45d7mxEMTAADm7xoIXAWiIg5qvuebIR6aBAAwv3MgQCpmF2nlnKaJhyYCAMzvPBRgFLPFC0TTxEOTAQDm7jwUOFnR4zrQXPGwBQAAc7cfDEDFyAKFMwvy175pqnjYIgCAua7+EdCoypO8mV+entiquVqt1Vqt1Vptw+1/f/8C1qtN/YgAAAAASUVORK5CYII="></a>
    &nbsp;
</p>


## What is cryptowarp.io?
cryptowarp.io is a service that provides analysis of cryptocurrency prices using advanced artificial intelligence algorithms. It offers deep insights into the countless possibilities for the next price movement without any financial advice.

  
## About the examples.
These examples demonstrate how to create a request to the REST API endpoint in different programming languages by providing the required authentication bearer token. The examples are overly simplistic and serve only as a demonstration of how to authenticate the client and access the data.

  
## What is Bearer Authentication?
Bearer authentication is an HTTP authentication scheme that uses security tokens called bearer tokens. The name "Bearer authentication" can be read as "give access to the person who has this token." The bearer token is a cryptic string, usually generated by the server in response to a login request. The client must send this token in the Authorization header when making requests to a protected REST API data endpoint:

```http
Authorization: Bearer <token>
```


## What is Access Token / Bearer Token?
A token that is sent to the server to access the protected data. The Access token provides secure and temporary access to cryptowarp.io APIs and is used by the connected clients to request the data. Each token is a long-lived token.


## How to clone the examples?
To clone the examples, use the following command in a terminal.


Create a new directory:
```bash
mkdir criptowarpio_examples
```

Change the directory path that you are working in:
```bash
cd criptowarpio_examples
```

Clone the repo:
```bash
git clone <repository url>
```

### Start exploring

