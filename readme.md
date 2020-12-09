# 常用软件安装

日常常用软件记录成一键脚本

## 使用

```bash
./install.sh

```

## brew使用技巧

### 查询软件包

```bash
brew search wps
```

### 安装软件

```bash
# 源码方式安装 （类似下载源码后，执行./configure && make && make install）
brew install

# 二进制包安装方式 （下载好编译好的.dmg,pkg)
brew install cask
```

## 切换源

```bash
# 默认源
./repo_github.sh

# 中国科技大学源
./repo_ustc.sh
```
