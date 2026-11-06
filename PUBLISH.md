# 发布到 Chrome 网上应用店

本仓库已准备好上架所需的扩展包与大部分素材。按下面顺序操作即可。

## 0. 你已有的文件

| 文件 | 用途 |
| --- | --- |
| `dist/work-encouragement-extension-v1.5.0.zip` | 上传到商店的扩展包（约 67 KB） |
| `store-assets/store-icon-128.png` | 商店图标 128×128 |
| `store-assets/screenshot-*-1280x800.png` | 必填截图（最多 5 张） |
| `store-assets/promo-small-440x280.png` | 可选小宣传图 |
| `store-assets/promo-marquee-1400x560.png` | 可选大幅宣传图 |
| `store-assets/LISTING.md` | 中英文案草稿 |
| `privacy-policy.md` | 隐私政策正文 |

重新打包：

```bash
./scripts/pack.sh
```

## 1. 注册开发者账号（一次性）

1. 打开 [Chrome Web Store Developer Dashboard](https://chrome.google.com/webstore/devconsole)
2. 使用要作为发布者的 Google 账号登录
3. 支付 **一次性 $5** 注册费并同意开发者协议
4. 完善收款/税务信息（即使用户免费，也可能要求填写）

> 新账号通常最多可发布 2 个扩展；本项目一个足够。

## 2. 公开隐私政策链接（强烈建议先做）

商店 Privacy 页需要可公网访问的政策 URL。推荐两种方式任选：

**A. GitHub 仓库文件（最快）**

把 `privacy-policy.md` 推到 GitHub 后使用例如：

`https://github.com/Susie-ss/work-encouragement-extension/blob/main/privacy-policy.md`

**B. GitHub Pages / 个人站点**

把同一份 Markdown 渲染成 HTML 页面，链接更正式。

## 3. 上传扩展包

1. Dashboard → **Add new item**
2. 选择 `dist/work-encouragement-extension-v1.5.0.zip`
3. 上传成功后进入该 item 的编辑页

包内已排除 `.git`、`docs/`、`README`、源 SVG 等非运行时文件。

## 4. Store Listing（商品详情）

对照 `store-assets/LISTING.md` 填写：

- **名称 / 简介 / 详细说明**（英文为主；可再加简体中文本地化）
- **分类：** Productivity
- **图标：** `store-assets/store-icon-128.png`
- **截图：** 至少 1 张，建议上传全部 5 张 `screenshot-*-1280x800.png`
- **可选：** small / marquee promo、演示视频

截图要求：`1280×800` 或 `640×400`，直角、无多余边框留白（本仓库素材已按 1280×800 生成）。

## 5. Privacy（隐私）

建议按如下声明（需与真实行为一致）：

- **单一用途：** 根据用户自填薪资与工时，在本地展示今日已赚、下班倒计时与收入统计，以提升工作动力。
- **权限说明：**
  - `storage`：保存设置
  - `alarms`：定时刷新徽章
- **是否收集用户数据：** 不向开发者/第三方服务器传输；设置仅存于 Chrome 本地/`sync`
- **是否使用远程代码：** 否
- **隐私政策 URL：** 填入第 2 步的公网链接

## 6. Distribution（分发）

- 价格：Free
- 可见性：Public（或 Unlisted 先自测）
- 国家/地区：按需全选或指定

## 7. 提交审核

1. 各页必填项完成后点 **Submit for Review**
2. 可勾选「审核通过后自动发布」，或延后手动发布
3. 首次审核常见 **数天～1–2 周**，以邮件通知为准

## 8. 审核常见驳回点（本项目对照）

| 风险点 | 本项目状态 |
| --- | --- |
| 必须 Manifest V3 | ✅ 已是 MV3 |
| 权限最小化 | ✅ 仅 `storage` + `alarms` |
| 描述与功能一致 | ✅ 文案已对齐 README |
| 隐私政策可访问且与声明一致 | ⚠️ 需你提供公网 URL |
| 截图尺寸合规 | ✅ `store-assets/` 已生成 |
| 远程代码 / 混淆 | ✅ 无构建混淆、无远程脚本 |
| 单一用途清晰 | ✅ 生产力/激励计时类 |

## 9. 发布后更新

1. 修改代码后升高 `manifest.json` 的 `version`（如 `1.5.1`）
2. 运行 `./scripts/pack.sh`
3. Dashboard → 该扩展 → Package → Upload new package → 再 Submit for Review
