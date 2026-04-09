# CodeTrainer

🔥 A coding training system based on Spring Boot, MyBatis-Plus, MySQL, and Vue admin resources.  
🚀 Built for question banks, exams, score statistics, discussion modules, and training workflows.  
⭐ Supports admin management, learner records, paper generation, and practice-oriented education scenarios.

> 基于 Spring Boot + MyBatis + MySQL 的编程训练系统，覆盖题库资源、试卷试题、考试记录、成绩统计、论坛互动等功能，并内置前后端资源（管理端 Vue 工程与前台静态页面）。

## 1. 项目定位

`CodeTrainer` 适用于课程训练、考试练习与题库管理场景，当前仓库包含：

- 后端：`springbootx1786`（Spring Boot）
- 管理端前端：`springbootx1786/src/main/resources/admin/admin`（Vue2）
- 前台页面：`springbootx1786/src/main/resources/front/front`（静态页面）
- 数据库脚本：`db.sql`

## 2. 功能模块

- 用户与权限：管理员、普通用户（`users`/`yonghu`）
- 题库资源：`tikuziyuan` 与评论 `discusstikuziyuan`
- 考试管理：试卷 `exampaper`、试题 `examquestion`、考试记录 `examrecord`
- 学习统计：练题统计 `liantitongji`、得分统计 `defentongji`
- 互动与内容：论坛 `forum`、留言 `messages`、新闻 `news`、收藏 `storeup`
- 文件上传下载：`file` 接口

## 3. 技术栈

- 后端：Spring Boot 2.2.2、MyBatis-Plus、Shiro
- 数据库：MySQL 5.7/8.x
- 运行环境：JDK 8
- 前端：Vue 2 + Element UI（管理端），静态 HTML/JS（前台）

## 4. 项目结构

```text
CodeTrainer
├── springbootx1786/
│   ├── src/main/java/com/
│   │   ├── controller/               # 各业务模块控制器
│   │   ├── service/dao/entity/       # 服务、数据访问、实体
│   │   └── SpringbootSchemaApplication.java
│   ├── src/main/resources/
│   │   ├── application.yml
│   │   ├── mapper/*.xml
│   │   ├── admin/admin/              # Vue 管理端源码 + dist
│   │   └── front/front/              # 前台静态页面
│   └── pom.xml
└── db.sql                            # 数据库初始化脚本
```

## 5. 本地运行

### 5.1 环境准备

- JDK 8
- Maven 3.6+
- MySQL 5.7/8.x
- Node.js（仅在你需要重建管理端前端时）

### 5.2 初始化数据库

1. 创建数据库：`springbootx1786`
2. 导入 [db.sql](db.sql)
3. 按本地环境修改 [application.yml](springbootx1786/src/main/resources/application.yml)

### 5.3 启动后端

```bash
cd springbootx1786
mvn spring-boot:run
```

默认端口与上下文：`http://localhost:8080/springbootx1786`

### 5.4 动态 SQL 白名单配置（安全）

为降低通用接口中的动态 SQL 注入风险，项目已将白名单改为配置化加载。

- 代码位置：[CommonController.java](springbootx1786/src/main/java/com/controller/CommonController.java)
- 实现方式：
  - 从 `@Value("${common.safe-sql.allowed-tables:...}")` 读取表名单
  - 在 `@PostConstruct` 中解析为 `Set`
  - 保留标识符正则校验逻辑（仅允许安全表名/字段名）
- 结果：后续新增允许的业务表时，不需要改代码，只需改配置

配置入口：

- 文件：[application.yml](springbootx1786/src/main/resources/application.yml)
- 配置项：`common.safe-sql.allowed-tables`
- 环境变量覆盖：`SAFE_SQL_ALLOWED_TABLES`

变更提交：

- commit: `262dba0`
- branch: `main`

使用方式：

1. 直接在 `application.yml` 中修改逗号分隔白名单；
2. 或在部署环境设置 `SAFE_SQL_ALLOWED_TABLES=config,defentongji,...,新表名`。

### 5.5 管理端前端（可选重建）

```bash
cd springbootx1786/src/main/resources/admin/admin
npm ci
npm run serve
# 生产构建
npm run build
```

构建说明：

- `npm run build` 产物位于 `springbootx1786/src/main/resources/admin/admin/dist`
- 若仅做后端联调，可跳过前端重建，直接使用仓库内静态资源

## 6. 示例账号（来自 db.sql）

- 管理员：`abo / abo`
- 普通用户示例：`用户1 / 123456`（其余同类账号见脚本）

## 7. 常见问题

- 启动后 404：确认访问路径带有上下文 `/springbootx1786`
- 页面静态资源不显示：确认 `spring.resources.static-locations` 配置有效
- 数据库连接失败：检查 MySQL 驱动、时区、账号密码

## 8. 开发建议

- 将数据库密码改为环境变量注入
- 清理仓库中的演示上传文件，避免仓库体积增长
- 增加最小化单元测试与接口测试

## 12.1 贡献建议

欢迎通过 Issue / PR 提交：

- 模块文档与接口说明补全
- 前端构建链升级（Vue2 依赖维护）
- 鉴权与权限控制增强
- 数据库迁移脚本规范化

## 12.2 许可说明

本仓库采用 MIT License，详见 [LICENSE](LICENSE)。
