#!/usr/bin/env sh
# 參考連結:https://cli.vuejs.org/zh/guide/deployment.html#github-pages
# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下
cd dist

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f https://github.com/PeterCHEN-JIANRONG/vue3-BS5-template.git master:gh-pages

cd -