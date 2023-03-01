# odoo 16 中文版专业版翻译，广州尚鹏 https://www.Sunpop.cn
---------------------------------------

## 从 13版本迁入16版本，包括社区版和企业版中文翻译
### 2023-02-28
从 transifex 中初始化，操作指令优化为 powershell 脚本

网站文档见下，基本操作 16 和 13 是一样的
https://www.sunpop.cn/odoo16_chinese_translate_transifex_profession/

## 概述
odoo16 在功能、性能、界面都有极大的更新，在可预见的将来必然会蓬勃发展。
小结一些十分明显的亮点包括
1. 中国化会计，包括了会计所模式，更符合中国习惯
2. 仓储物流增强，扫码功能全覆盖，打包和物流相关功能更加增强
3. 智能网站建设，按向导选择好行业，几下点击网站即出。囊括线上电商、在线教育
4. 供应链增强，销售仓储采购生产，直接内置链式追踪
5. 全新报表中心，将所有报表与分析整合在一起，操作Excel化
6. 界面体验，执行速度全面提升
7. 技术层面，数据库，Python，前端OWL都使用新版新框架，传统ERP也能保持技术最新迭代
8. 开发很爽，低代码拖拉实现功能，继承优化处理高级细节
9. 核心业务逻辑保持，不断迭代优化，保证了技术价值可持续沉淀

更多有关 odoo16 的在功能、性能、界面上各种功能增强，请参阅我们的odoo16专题，
https://www.sunpop.cn/?s=odoo16
广州尚鹏是 odoo 官方合作伙伴，亦可审核 Transifex 上的中文化翻译。
为推动 odoo 中文化的发展，同时为保证自有商业客户的正常使用，建立此开源代码仓库repo进行 odoo16 中文化翻译。

## 翻译规范
新调整，更多参考天猫淘宝。
企业内部使用 odoo 对标 SAP 系统，第二规范主要参考 SAP。
第三规范参考 MRPII 规范。在ref目录有相关文档。
1. 天猫淘宝用语
2. SAP 术语
3. MRPII 术语
4. 行业标准术语

## 如何贡献 odoo16 翻译
odoo16 官方翻译主要通过 transifex.com ，由于 transifex 上的使用方便和审核效率问题，我们同时也建立了这个仓库，力争更快更精确的实现 odoo16 中文化。

## odoo16 翻译生效说明
此 repo 是人工合并，人工 push 到 tx，每次的 push 我们会直接在 tx 上马上审核，故会比其它第三方的翻译优先级更高。
然后 odoo 官方定期同步 tx 上的翻译，一般是一周。故传递到 odoo16 的企业版及社区版时，更新会有所延迟。

### 方法一：通过 transifex.com
1. 注册登录
http://www.transifex.com
2. 加入 odoo 中国团队
https://www.transifex.com/odoo/teams/
3. 参与 odoo16 翻译
总览： https://www.transifex.com/odoo/odoo-16/dashboard/
模块翻译： https://www.transifex.com/odoo/odoo-16/translate/#zh_CN
po下载与上传： https://www.transifex.com/odoo/odoo-16/language/zh_CN/

### 方法二：通过我们的 github 贡献翻译
仓库地址：
https://github.com/guohuadeng/odoo16-cn
更新提交：使用 git PR(pull request)，参考
https://www.jianshu.com/p/d921828bf623
建议：在此 repo 上提 issue

## 文件夹说明
├─ref    参考文档
├─source    通过 .tx 获取的odoo的 PO 翻译文档，并更新，可直接用于 odoo16
├─source_ent    同上，企业版

## 获取最新 .po 文件，更新后发布至 transifex
https://developers.transifex.com/docs/using-the-client

1. 安装 tx 客户端，当前tx_client版本已更新，必须要用新的 cli
参考 https://github.com/transifex/cli
curl -o- https://raw.githubusercontent.com/transifex/cli/master/install.sh | bash

2. 进行 tx 初始化，需要输入token，参考 https://help.transifex.com/en/
```
tx init
```
3. 取最新的 po，先进入 /source
```
cd source
tx pull -l zh_CN --mode reviewed
cd ..\source_ent
tx pull -l zh_CN --mode reviewed
```
4. 查看下载的 po 文件并更改，在 ./source 目录下，即可看到相关的 odoo 翻译文件

5. 推送翻译文件至 tx，参考 https://docs.transifex.com/transifex-github-integrations/github-tx-client
```
tx push -t
```



