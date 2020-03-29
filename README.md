# Docker Gitbook

[![Build Status](https://img.shields.io/travis/com/alvisisme/docker-gitbook?style=flat-square)](https://travis-ci.com/alvisisme/docker-gitbook) ![https://cloud.docker.com/repository/docker/alvisisme/gitbook](https://img.shields.io/docker/pulls/alvisisme/gitbook.svg?style=flat-square)

## 目录

- [背景](#背景)
- [安装](#安装)
- [用法](#用法)
- [维护人员](#维护人员)
- [贡献参与](#贡献参与)
- [许可](#许可)

## 背景

Gitbook 构建环境，gitbook 版本 3.2.3

## 安装

```bash
docker pull alvisisme/gitbook:3.2.3
```

## 用法

```bash
docker run -v $PWD/doc:/book alvisisme/gitbook:3.2.3 gitbook init /book
docker run -v $PWD/doc:/book alvisisme/gitbook:3.2.3 gitbook build /book
```

## 维护人员

[@Alvis Zhao](https://github.com/alvisisme)

## 贡献参与

欢迎提交PR。

## 许可

© 2020 Alvis Zhao
