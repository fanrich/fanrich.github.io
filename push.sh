message=deploy

# hexo clean && hexo g

# 更新 main
git add .
git config --global core.autocrlf true
git add .
git commit -m "$message"
git push -u -f origin main