<h1 align="center">Welcome to DeepGIS 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1.0--alpha-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/Rainlv/DeepGIS/blob/master/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> 开源私有云GIS平台，支持地图标注与云计算

## 安装

```sh
git clone --recursive https://github.com/Rainlv/DeepGIS.git
```

注：由于目前前后端源码通过`git submodule`维护，所以clone的时候需要加上`--recursive`参数同时拉取所有submodules代码

## 使用

需要安装[Docker](https://www.docker.com/)和[docker-compose](https://docs.docker.com/compose/)环境，利用docker-compose启动服务

```sh
cd DeepGIS
docker-compose up
```
如需后台运行可使用`docker-compose up -d`，具体参考[docker-compose](https://docs.docker.com/compose/)命令

等待服务启动完成后
- 可通过 `http://{SERVER_HOST}:{FRONTEND_PORT}` 访问前端页面
- 可通过 `http://{SERVER_HOST}:{GEOSERVER_ADMIN_PORT}/geoserver`访问GeoServer管理页面

> SERVER_HOST和FRONTEND_PORT等为.env文件中的配置项
相关配置可以参考`.env`文件

## Demo

![720](http://qiniu.rainna.xyz/720.gif)

## Author

👤 **Rainnalv**

* Website: http://blog.xiaoi.tk
* Github: [@Rainlv](https://github.com/Rainlv)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br>Feel free to
check [issues page](https://github.com/Rainlv/DeepGIS/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2022 [Rainnalv](https://github.com/Rainlv). <br />
This project is [MIT](https://github.com/Rainlv/DeepGIS/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
