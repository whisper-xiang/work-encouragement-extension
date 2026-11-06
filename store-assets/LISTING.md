# Chrome Web Store 文案草稿（可直接粘贴）

## 英文（主语言，与 `default_locale: en` 一致）

**Name:** Work Encourager  
**Short description**（商店短描述，建议 ≤132 字符，与 `_locales/en` 接近）：

See today’s earnings in real time — salary counter, log-off countdown, overtime multipliers, and weekly/monthly curves.

**Detailed description:**

```
Work Encourager turns your salary into seconds.

Click the toolbar icon to see:
• How much you’ve earned today (updates every second)
• Countdown until log-off (or time until work / overtime so far)
• Work timer that skips lunch break
• Status: working / lunch / overtime / off / day off
• A tiny donkey that changes mood with the clock

Also included:
• Overtime multipliers (weekday evening & weekend)
• Weekly bar chart + monthly cumulative curve
• CSV export (last 60 days)
• Toolbar badge with today’s amount
• English / 中文 UI switch
• 16 currencies with optional exchange rate
• All calculation runs locally — no network permission, no tracking

Configure salary, hours, lunch, workdays, and quotes in Settings. Data stays in chrome.storage.sync on your devices.
```

**Category:** Productivity  
**Language:** English (+ Chinese (Simplified) listing if you localize)

---

## 中文（可选本地化 listing）

**名称:** 上班鼓励器  

**简短描述:**

实时显示今日已赚工资、下班倒计时、加班倍率、周月收入曲线——让上班更有动力。

**详细描述:**

```
上班鼓励器：把工资换算成「秒」。

点开工具栏图标即可看到：
• 今日已赚（按秒滚动）
• 下班倒计时（上班前显示距上班，加班时显示加班时长）
• 自动跳过午休的工作计时器
• 状态：上班 / 午休 / 加班 / 已下班 / 休息日
• 顶部小驴按时间换姿势（犯困 / 吃萝卜 / 拉磨 / 疯跑）

还有：
• 工作日晚间与休息日加班倍率
• 本周柱状图 + 本月累计曲线
• CSV 导出最近 60 天明细
• 工具栏徽章显示今日金额
• 中英一键切换
• 16 种货币，可自定义汇率
• 全部本地计算——无网络权限、不追踪、不上传

在「设置」里配置月薪、工时、午休、工作日与语录。数据保存在 chrome.storage.sync，随 Chrome 账号同步。
```

---

## Privacy 页填写建议

**Single purpose:**  
Help users stay motivated at work by showing real-time estimated earnings, countdown to log-off, and local earning charts based on salary settings they enter.

**Permission justification:**
- `storage`: Save user settings (salary, hours, language, currency, quotes).
- `alarms`: Periodically refresh the toolbar badge with today’s estimated earnings.

**Remote code:** No  
**Collects user data:** 勾选「不收集」或按实际声明：仅本地存储设置，不向开发者服务器传输。  
**Privacy policy URL:** 将仓库中的 `privacy-policy.md` 发布为可公网访问的链接后填入（见 `PUBLISH.md`）。
