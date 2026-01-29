# Log Analyzer (日志分析工具)

一个用 C 语言编写的命令行日志分析工具，用于解析和分析 Nginx/Apache 访问日志。

## 🎯 项目目标

这是一个 C 语言学习项目，旨在通过实践掌握：
- 文件 I/O 操作
- 字符串解析
- 数据结构（哈希表）
- 命令行参数处理
- 内存管理

## ✨ 功能特性

- [x] 解析标准日志格式（Combined Log Format）
- [x] 统计总访问量、独立 IP 数
- [x] 统计 HTTP 状态码分布
- [x] 找出访问量最高的 Top N URL
- [x] 找出访问量最高的 Top N IP

## 🔧 编译

```bash
make
make clean
```

## 🚀 使用方法

```bash
./bin/loganalyzer sample/access.log
./bin/loganalyzer -n 20 sample/access.log
./bin/loganalyzer --help
```

## 📄 License

MIT License