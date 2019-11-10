# Java API Compliance Checker

[![Docker Stars](https://img.shields.io/docker/stars/joschi/japi-compliance-checker.svg)][hub]
[![Docker Pulls](https://img.shields.io/docker/pulls/joschi/japi-compliance-checker.svg)][hub]
[![Image Size](https://images.microbadger.com/badges/image/joschi/japi-compliance-checker.svg)][microbadger]
[![Image Version](https://images.microbadger.com/badges/version/joschi/japi-compliance-checker.svg)][microbadger]
[![Image License](https://images.microbadger.com/badges/license/joschi/japi-compliance-checker.svg)][microbadger]


[hub]: https://hub.docker.com/r/joschi/japi-compliance-checker/
[microbadger]: https://microbadger.com/images/joschi/japi-compliance-checker

## What is Java API Compliance Checker?

A tool for checking backward API/ABI compatibility of a Java library.

Homepage: https://lvc.github.io/japi-compliance-checker/


### Example

Use the following command to compare two Java archives:
```
# docker run -v "${PWD}":/workspace --rm joschi/japi-compliance-checker:2.4-1 -lib NAME V1.jar V2.jar
```

The compatibility report will be generated to:
```
${PWD}/compat_reports/NAME/V1_to_V2/compat_report.html  
```

## License

This Docker image is licensed under the MIT license, see [LICENSE](LICENSE).
