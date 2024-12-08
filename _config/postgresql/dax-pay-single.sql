/*
 Navicat Premium Data Transfer

 Source Server         : 本地PG
 Source Server Type    : PostgreSQL
 Source Server Version : 140005 (140005)
 Source Host           : localhost:5432
 Source Catalog        : daxpay
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140005 (140005)
 File Encoding         : 65001

*/


-- ----------------------------
-- Table structure for base_dict
-- ----------------------------
DROP TABLE IF EXISTS "public"."base_dict";
CREATE TABLE "public"."base_dict" (
  "id" int8 NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "group_tag" varchar(50) COLLATE "pg_catalog"."default",
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "enable" bool,
  "deleted" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."base_dict"."id" IS '主键';
COMMENT ON COLUMN "public"."base_dict"."name" IS '名称';
COMMENT ON COLUMN "public"."base_dict"."group_tag" IS '分类标签';
COMMENT ON COLUMN "public"."base_dict"."code" IS '编码';
COMMENT ON COLUMN "public"."base_dict"."remark" IS '备注';
COMMENT ON COLUMN "public"."base_dict"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."base_dict"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."base_dict"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."base_dict"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."base_dict"."version" IS '版本号';
COMMENT ON COLUMN "public"."base_dict"."enable" IS '是否启用';
COMMENT ON COLUMN "public"."base_dict"."deleted" IS '删除标志';
COMMENT ON TABLE "public"."base_dict" IS '字典表';

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO "public"."base_dict" VALUES (1823688893108133888, '支付订单关闭类型', '支付', 'close_type', '', 1811365615815487488, '2024-08-14 19:51:29.275426', 1811365615815487488, '2024-08-14 19:51:29.277016', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823688398549360640, '支付通道', '支付', 'channel', '', 1811365615815487488, '2024-08-14 19:49:31.363417', 1811365615815487488, '2024-08-14 19:56:44.841238', 1, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823696159936946176, '证件类型', '基础信息', 'id_type', '', 1811365615815487488, '2024-08-14 20:20:21.822676', 1811365615815487488, '2024-08-14 20:20:21.824229', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823708720229117952, '签名方式', '支付', 'sign_type', '', 1811365615815487488, '2024-08-14 21:10:16.430774', 1811365615815487488, '2024-08-14 21:10:16.433984', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823928239337771008, '商户状态', '支付', 'merchant_status', '', 1811365615815487488, '2024-08-15 11:42:33.863751', 1811365615815487488, '2024-08-15 11:42:33.865868', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823928536063807488, '商户应用状态', '支付', 'mch_app_status', '', 1811365615815487488, '2024-08-15 11:43:44.608309', 1811365615815487488, '2024-08-15 11:43:44.60988', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823969170598400000, '客户通知内容类型', '支付', 'notify_content_type', '', 1811365615815487488, '2024-08-15 14:25:12.636886', 1811365615815487488, '2024-08-15 15:48:34.51576', 2, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823969966421446656, '商户消息通知类型', '支付', 'merchant_notify_type', '', 1811365615815487488, '2024-08-15 14:28:22.375016', 1811365615815487488, '2024-08-15 15:48:43.031616', 1, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1823991280205041664, '业务操作类型', '审计日志', 'log_business_type', '', 0, '2024-08-15 15:53:03.977005', 0, '2024-08-15 15:53:03.978035', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1824277928167870464, '支付订单的退款状态', '支付', 'pay_refund_status', '', 1811365615815487488, '2024-08-16 10:52:06.177341', 1811365615815487488, '2024-08-16 10:52:06.179417', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1824285303885008896, '支付方式', '支付', 'pay_method', '', 1811365615815487488, '2024-08-16 11:21:24.685429', 1811365615815487488, '2024-08-16 11:21:24.686997', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1824050661785407488, '支付订单状态', '支付', 'pay_status', '', 0, '2024-08-15 19:49:01.649012', 1811365615815487488, '2024-08-16 11:24:05.396307', 1, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1824277760341184512, '支付订单分账状态', '支付', 'pay_alloc_status', '支付订单的分账状态', 1811365615815487488, '2024-08-16 10:51:26.166066', 1811365615815487488, '2024-08-16 14:42:42.689952', 1, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1824287281285435392, '退款状态枚举', '支付', 'refund_status', '', 1811365615815487488, '2024-08-16 11:29:16.134278', 1811365615815487488, '2024-08-16 15:03:53.495862', 7, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1824342698652971008, '交易流水记录类型', '支付', 'trade_flow_type', '', 1811365615815487488, '2024-08-16 15:09:28.666504', 1811365615815487488, '2024-08-16 15:09:34.017606', 1, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1824791500966486016, '交易类型', '支付', 'trade_type', '', 1811365615815487488, '2024-08-17 20:52:51.47629', 1811365615815487488, '2024-08-17 20:52:51.532979', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1825134996013670400, '转账状态', '支付', 'transfer_status', '', 1811365615815487488, '2024-08-18 19:37:47.076212', 1811365615815487488, '2024-08-18 19:37:47.137228', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1825135068277334016, '转账接收方类型', '支付', 'transfer_payee_type', '', 1811365615815487488, '2024-08-18 19:38:04.304349', 1811365615815487488, '2024-08-18 19:38:04.306948', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1825174702763966464, '支付回调处理状态', '支付', 'callback_status', '', 1811365615815487488, '2024-08-18 22:15:33.902812', 1811365615815487488, '2024-08-18 22:15:33.90384', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1825408039604842496, '消息发送类型', '支付', 'notice_send_type', '', 1811365615815487488, '2024-08-19 13:42:45.740594', 1811365615815487488, '2024-08-19 13:42:45.742689', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1826059944274382848, '对账差异类型', '支付', 'reconcile_discrepancy_type', '', 1811365615815487488, '2024-08-21 08:53:11.927052', 1811365615815487488, '2024-08-21 08:53:11.931319', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1826061072412135424, '对账结果', '支付', 'reconcile_result', '', 1811365615815487488, '2024-08-21 08:57:40.895007', 1811365615815487488, '2024-08-21 08:57:40.897049', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1826143914542350336, '交易状态', '支付', 'trade_status', '', 1811365615815487488, '2024-08-21 14:26:52.000272', 1811365615815487488, '2024-08-21 14:26:52.005675', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1843536439208931328, '分账接收方类型', '支付', 'alloc_receiver_type', '', 1811365615815487488, '2024-10-08 14:18:33.016439', 1811365615815487488, '2024-10-08 14:18:33.017572', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1843536733108006912, '分账关系类型', '支付', 'alloc_relation_type', '', 1811365615815487488, '2024-10-08 14:19:43.086847', 1811365615815487488, '2024-10-08 14:29:32.826875', 1, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1840650057641713664, '码牌类型', '支付', 'cashier_code_type', '', 1811365615815487488, '2024-09-30 15:09:06', 1811365615815487488, '2024-11-21 09:09:19', 2, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1862094405423972352, '收银台聚合支付类型', '支付', 'checkout_aggregate', '', 1811365615815487488, '2024-11-28 19:21:17', 1811365615815487488, '2024-11-28 19:22:05', 1, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1862784043394342912, '收银台支付调起方式', '支付', 'checkout_call_type', '', 1811365615815487488, '2024-11-30 17:01:39', 1811365615815487488, '2024-11-30 17:01:39', 0, 't', 'f');
INSERT INTO "public"."base_dict" VALUES (1864134865629839360, '收银台类型', '支付', 'checkout_type', '', 1811365615815487488, '2024-12-04 10:29:21', 1811365615815487488, '2024-12-04 10:29:21', 0, 't', 'f');

-- ----------------------------
-- Table structure for base_dict_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."base_dict_item";
CREATE TABLE "public"."base_dict_item" (
  "id" int8 NOT NULL,
  "dict_id" int8 NOT NULL,
  "dict_code" varchar(50) COLLATE "pg_catalog"."default",
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "sort_no" int4,
  "enable" bool,
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."base_dict_item"."id" IS '主键';
COMMENT ON COLUMN "public"."base_dict_item"."dict_id" IS '字典ID';
COMMENT ON COLUMN "public"."base_dict_item"."dict_code" IS '字典编码';
COMMENT ON COLUMN "public"."base_dict_item"."code" IS '字典项编码';
COMMENT ON COLUMN "public"."base_dict_item"."name" IS '名称';
COMMENT ON COLUMN "public"."base_dict_item"."sort_no" IS '字典项排序';
COMMENT ON COLUMN "public"."base_dict_item"."enable" IS '是否启用';
COMMENT ON COLUMN "public"."base_dict_item"."remark" IS '备注';
COMMENT ON COLUMN "public"."base_dict_item"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."base_dict_item"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."base_dict_item"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."base_dict_item"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."base_dict_item"."version" IS '版本号';
COMMENT ON COLUMN "public"."base_dict_item"."deleted" IS '删除标志';
COMMENT ON TABLE "public"."base_dict_item" IS '字典项';

-- ----------------------------
-- Records of base_dict_item
-- ----------------------------
INSERT INTO "public"."base_dict_item" VALUES (1823688758965903360, 1823688398549360640, 'channel', 'union_pay', '云闪付', 5, 't', '', 1811365615815487488, '2024-08-14 19:50:57.293338', 1811365615815487488, '2024-08-14 19:50:57.294914', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823696988228100096, 1823696159936946176, 'id_type', 'IDCard', '身份证', 1, 't', '', 1811365615815487488, '2024-08-14 20:23:39.302492', 1811365615815487488, '2024-08-14 20:23:39.304061', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823697045249662976, 1823696159936946176, 'id_type', 'passport', '护照', 2, 't', '', 1811365615815487488, '2024-08-14 20:23:52.897578', 1811365615815487488, '2024-08-14 20:23:52.89914', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823697185523965952, 1823696159936946176, 'id_type', 'ForeignGreenCard', '外国人绿卡', 4, 't', '', 1811365615815487488, '2024-08-14 20:24:26.341242', 1811365615815487488, '2024-08-14 20:24:26.342281', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823697128431099904, 1823696159936946176, 'id_type', 'MilitaryID', '军人证', 3, 't', '', 1811365615815487488, '2024-08-14 20:24:12.729636', 1811365615815487488, '2024-08-14 20:24:33.016577', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823709978780364800, 1823708720229117952, 'sign_type', 'hmac_sha256', 'HMAC_SHA256', 1, 't', '', 1811365615815487488, '2024-08-14 21:15:16.491026', 1811365615815487488, '2024-08-14 21:15:16.493648', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823710019247009792, 1823708720229117952, 'sign_type', 'md5', 'MD5', 2, 't', '', 1811365615815487488, '2024-08-14 21:15:26.139263', 1811365615815487488, '2024-08-14 21:15:26.140825', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823710059575242752, 1823708720229117952, 'sign_type', 'sm3', 'SM3', 3, 't', '', 1811365615815487488, '2024-08-14 21:15:35.754963', 1811365615815487488, '2024-08-14 21:15:35.756536', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823928285231845376, 1823928239337771008, 'merchant_status', 'enable', '启用', 1, 't', '', 1811365615815487488, '2024-08-15 11:42:44.805431', 1811365615815487488, '2024-08-15 11:42:44.807006', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823928325820125184, 1823928239337771008, 'merchant_status', 'disabled', '禁用', 2, 't', '', 1811365615815487488, '2024-08-15 11:42:54.482892', 1811365615815487488, '2024-08-15 11:42:54.484445', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823928584776454144, 1823928536063807488, 'mch_app_status', 'enable', '启用', 1, 't', '', 1811365615815487488, '2024-08-15 11:43:56.222637', 1811365615815487488, '2024-08-15 11:43:56.2242', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823928622999146496, 1823928536063807488, 'mch_app_status', 'disabled', '禁用', 2, 't', '', 1811365615815487488, '2024-08-15 11:44:05.335689', 1811365615815487488, '2024-08-15 11:44:05.337294', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823969227796123648, 1823969170598400000, 'notify_content_type', 'pay', '支付订单变动通知', 1, 't', '', 1811365615815487488, '2024-08-15 14:25:26.273922', 1811365615815487488, '2024-08-15 14:25:26.276032', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823969260352311296, 1823969170598400000, 'notify_content_type', 'refund', '退款订单变动通知', 2, 't', '', 1811365615815487488, '2024-08-15 14:25:34.035515', 1811365615815487488, '2024-08-15 14:25:34.037117', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823969294699466752, 1823969170598400000, 'notify_content_type', 'transfer', '转账订单变动通知', 3, 't', '', 1811365615815487488, '2024-08-15 14:25:42.224889', 1811365615815487488, '2024-08-15 14:25:42.226456', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823970069660045312, 1823969966421446656, 'merchant_notify_type', 'none', '不启用', 0, 't', '', 1811365615815487488, '2024-08-15 14:28:46.98963', 1811365615815487488, '2024-08-15 14:28:46.991208', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823970114547486720, 1823969966421446656, 'merchant_notify_type', 'http', 'HTTP', 1, 't', '', 1811365615815487488, '2024-08-15 14:28:57.6917', 1811365615815487488, '2024-08-15 14:28:57.692751', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823970397553954816, 1823969966421446656, 'merchant_notify_type', 'websocket', 'WebSocket', 2, 't', '', 1811365615815487488, '2024-08-15 14:30:05.165149', 1811365615815487488, '2024-08-15 14:30:05.166201', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823970441921302528, 1823969966421446656, 'merchant_notify_type', 'mq', '消息队列', 3, 'f', '', 1811365615815487488, '2024-08-15 14:30:15.74388', 1811365615815487488, '2024-08-15 15:41:11.358752', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823991809660424192, 1823991280205041664, 'log_business_type', 'add', '新增', 1, 't', '', 0, '2024-08-15 15:55:10.209099', 0, '2024-08-15 15:55:10.210152', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992621597986816, 1823991280205041664, 'log_business_type', 'update', '修改', 2, 't', '', 0, '2024-08-15 15:58:23.790857', 0, '2024-08-15 15:58:34.534328', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992712492748800, 1823991280205041664, 'log_business_type', 'delete', '删除', 3, 't', '', 0, '2024-08-15 15:58:45.461362', 0, '2024-08-15 15:58:45.462464', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992755463393280, 1823991280205041664, 'log_business_type', 'grant', '授权', 4, 't', '', 0, '2024-08-15 15:58:55.70643', 0, '2024-08-15 15:58:55.707474', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992808680722432, 1823991280205041664, 'log_business_type', 'export', '导出', 5, 't', '', 0, '2024-08-15 15:59:08.394231', 0, '2024-08-15 15:59:08.395306', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992851131273216, 1823991280205041664, 'log_business_type', 'import', '导入', 6, 't', '', 0, '2024-08-15 15:59:18.515719', 0, '2024-08-15 15:59:18.516751', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992894504570880, 1823991280205041664, 'log_business_type', 'force', '强退', 7, 't', '', 0, '2024-08-15 15:59:28.856243', 0, '2024-08-15 15:59:28.857426', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992935814270976, 1823991280205041664, 'log_business_type', 'clean', '清空数据', 8, 't', '', 0, '2024-08-15 15:59:38.705444', 0, '2024-08-15 15:59:38.706503', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823992995331444736, 1823991280205041664, 'log_business_type', 'other', '其它', 9, 't', '', 0, '2024-08-15 15:59:52.895664', 0, '2024-08-15 15:59:52.896179', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823688520268062720, 1823688398549360640, 'channel', 'ali_pay', '支付宝(直连)', 1, 't', '支付宝 - 直连商户', 1811365615815487488, '2024-08-14 19:50:00.383209', 0, '2024-08-15 19:45:52.133311', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1823688680352063488, 1823688398549360640, 'channel', 'wechat_pay', '微信支付(直连)', 3, 't', '', 1811365615815487488, '2024-08-14 19:50:38.551335', 0, '2024-08-15 19:46:22.364663', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824277977388027904, 1824277928167870464, 'pay_refund_status', 'no_refund', '未退款', 1, 't', '', 1811365615815487488, '2024-08-16 10:52:17.912141', 1811365615815487488, '2024-08-16 10:52:17.913687', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824278014436315136, 1824277928167870464, 'pay_refund_status', 'refunding', '退款中', 2, 't', '', 1811365615815487488, '2024-08-16 10:52:26.745134', 1811365615815487488, '2024-08-16 10:52:26.746691', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824278055448219648, 1824277928167870464, 'pay_refund_status', 'partial_refund', '部分退款', 3, 't', '', 1811365615815487488, '2024-08-16 10:52:36.523227', 1811365615815487488, '2024-08-16 10:52:36.525303', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824278092886577152, 1824277928167870464, 'pay_refund_status', 'refunded', '全部退款', 4, 't', '', 1811365615815487488, '2024-08-16 10:52:45.44961', 1811365615815487488, '2024-08-16 10:52:45.451171', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824285613860851712, 1824285303885008896, 'pay_method', 'wap', 'wap支付', 1, 't', '', 1811365615815487488, '2024-08-16 11:22:38.589166', 1811365615815487488, '2024-08-16 11:22:38.591274', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824285656248487936, 1824285303885008896, 'pay_method', 'app', '应用支付', 2, 't', '', 1811365615815487488, '2024-08-16 11:22:48.695658', 1811365615815487488, '2024-08-16 11:22:48.696706', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824285688691429376, 1824285303885008896, 'pay_method', 'web', 'web支付', 3, 't', '', 1811365615815487488, '2024-08-16 11:22:56.430664', 1811365615815487488, '2024-08-16 11:22:56.431781', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824285724460453888, 1824285303885008896, 'pay_method', 'qrcode', '扫码支付', 4, 't', '', 1811365615815487488, '2024-08-16 11:23:04.958598', 1811365615815487488, '2024-08-16 11:23:04.95963', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824285781570097152, 1824285303885008896, 'pay_method', 'barcode', '付款码', 5, 't', '', 1811365615815487488, '2024-08-16 11:23:18.575096', 1811365615815487488, '2024-08-16 11:23:18.576136', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824285824247140352, 1824285303885008896, 'pay_method', 'jsapi', '小程序支付', 6, 't', '', 1811365615815487488, '2024-08-16 11:23:28.74936', 1811365615815487488, '2024-08-16 11:23:28.750936', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824050709768245248, 1824050661785407488, 'pay_status', 'progress', '支付中', 1, 't', '', 0, '2024-08-15 19:49:13.08964', 0, '2024-08-15 19:49:13.090167', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824050788306587648, 1824050661785407488, 'pay_status', 'close', '支付关闭', 3, 't', '', 0, '2024-08-15 19:49:31.814754', 0, '2024-08-15 19:49:31.815791', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824050865460809728, 1824050661785407488, 'pay_status', 'cancel', '支付撤销', 4, 't', '', 0, '2024-08-15 19:49:50.209986', 0, '2024-08-15 19:49:50.211016', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824287549255323648, 1824287281285435392, 'refund_status', 'close', '退款关闭', 3, 't', '', 1811365615815487488, '2024-08-16 11:30:20.023606', 1811365615815487488, '2024-08-16 11:30:20.025187', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824050750083895296, 1824050661785407488, 'pay_status', 'success', '支付成功', 2, 't', '', 0, '2024-08-15 19:49:22.701746', 1811365615815487488, '2024-08-16 11:24:17.998592', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824050900651020288, 1824050661785407488, 'pay_status', 'fail', '支付失败', 5, 't', '', 0, '2024-08-15 19:49:58.599133', 1811365615815487488, '2024-08-16 11:24:23.458659', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824050942044606464, 1824050661785407488, 'pay_status', 'timeout', '支付超时', 6, 't', '', 0, '2024-08-15 19:50:08.468537', 1811365615815487488, '2024-08-16 11:24:46.91709', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824277802141618176, 1824277760341184512, 'pay_alloc_status', 'waiting', '待分账', 0, 't', '', 1811365615815487488, '2024-08-16 10:51:36.130124', 1811365615815487488, '2024-08-16 10:51:36.132199', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824287582604234752, 1824287281285435392, 'refund_status', 'fail', '退款失败', 4, 't', '', 1811365615815487488, '2024-08-16 11:30:27.975006', 1811365615815487488, '2024-08-16 11:30:27.976048', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824277833028472832, 1824277760341184512, 'pay_alloc_status', 'allocation', '已分账', 1, 't', '', 1811365615815487488, '2024-08-16 10:51:43.494007', 1811365615815487488, '2024-08-16 10:51:43.49503', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824342766219014144, 1824342698652971008, 'trade_flow_type', 'pay', '支付', 1, 't', '', 1811365615815487488, '2024-08-16 15:09:44.773758', 1811365615815487488, '2024-08-16 15:09:44.775326', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824355204762988544, 1824342698652971008, 'trade_flow_type', 'refund', '退款', 2, 't', '', 1811365615815487488, '2024-08-16 15:59:10.355171', 1811365615815487488, '2024-08-16 15:59:10.357981', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824355244650819584, 1824342698652971008, 'trade_flow_type', 'transfer', '转账', 3, 't', '', 1811365615815487488, '2024-08-16 15:59:19.863146', 1811365615815487488, '2024-08-16 15:59:19.864715', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824287473090957312, 1824287281285435392, 'refund_status', 'progress', '退款中', 1, 't', '', 1811365615815487488, '2024-08-16 11:30:01.864717', 1811365615815487488, '2024-08-16 14:41:25.615219', 3, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824287508851593216, 1824287281285435392, 'refund_status', 'success', '退款成功', 2, 't', '', 1811365615815487488, '2024-08-16 11:30:10.390503', 1811365615815487488, '2024-08-16 14:42:12.062594', 2, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824791684567949312, 1824791500966486016, 'trade_type', 'pay', '支付', 1, 't', '', 1811365615815487488, '2024-08-17 20:53:35.248127', 1811365615815487488, '2024-08-17 20:53:35.250234', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824791718273376256, 1824791500966486016, 'trade_type', 'refund', '退款', 2, 't', '', 1811365615815487488, '2024-08-17 20:53:43.284373', 1811365615815487488, '2024-08-17 20:53:43.286467', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1824791757586587648, 1824791500966486016, 'trade_type', 'transfer', '转账', 3, 't', '', 1811365615815487488, '2024-08-17 20:53:52.657076', 1811365615815487488, '2024-08-17 20:53:52.658634', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825135534352588800, 1825134996013670400, 'transfer_status', 'progress', '转账中', 1, 't', '', 1811365615815487488, '2024-08-18 19:39:55.425814', 1811365615815487488, '2024-08-18 19:39:55.426857', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825135567118491648, 1825134996013670400, 'transfer_status', 'success', '转账成功', 2, 't', '', 1811365615815487488, '2024-08-18 19:40:03.237571', 1811365615815487488, '2024-08-18 19:40:03.23965', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825135606624641024, 1825134996013670400, 'transfer_status', 'close', '转账关闭', 3, 't', '', 1811365615815487488, '2024-08-18 19:40:12.656436', 1811365615815487488, '2024-08-18 19:40:12.658005', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825135653311438848, 1825134996013670400, 'transfer_status', 'fail', '转账失败', 4, 't', '', 1811365615815487488, '2024-08-18 19:40:23.787206', 1811365615815487488, '2024-08-18 19:40:23.788928', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825174775472226304, 1825174702763966464, 'callback_status', 'success', '成功', 1, 't', '', 1811365615815487488, '2024-08-18 22:15:51.237972', 1811365615815487488, '2024-08-18 22:15:51.239535', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825174809592889344, 1825174702763966464, 'callback_status', 'fail', '失败', 2, 't', '', 1811365615815487488, '2024-08-18 22:15:59.372735', 1811365615815487488, '2024-08-18 22:15:59.374281', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825174854148980736, 1825174702763966464, 'callback_status', 'ignore', '忽略', 3, 't', '', 1811365615815487488, '2024-08-18 22:16:09.995547', 1811365615815487488, '2024-08-18 22:16:09.997194', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825174898629574656, 1825174702763966464, 'callback_status', 'exception', '异常', 4, 't', '', 1811365615815487488, '2024-08-18 22:16:20.600541', 1811365615815487488, '2024-08-18 22:16:20.602111', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825174939188494336, 1825174702763966464, 'callback_status', 'not_found', '未找到', 5, 't', '', 1811365615815487488, '2024-08-18 22:16:30.270155', 1811365615815487488, '2024-08-18 22:16:30.271194', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825349495736041472, 1823688893108133888, 'close_type', 'close', '关闭', 1, 't', '', 1811365615815487488, '2024-08-19 09:50:07.795169', 1811365615815487488, '2024-08-19 09:50:07.800044', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825349620168458240, 1823688893108133888, 'close_type', 'cancel', '撤销', 2, 't', '', 1811365615815487488, '2024-08-19 09:50:37.461827', 1811365615815487488, '2024-08-19 09:50:37.463384', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825408094978043904, 1825408039604842496, 'notice_send_type', 'auto', '自动发送', 0, 't', '', 1811365615815487488, '2024-08-19 13:42:58.942888', 1811365615815487488, '2024-08-19 13:42:58.944443', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825408129895624704, 1825408039604842496, 'notice_send_type', 'manual', '手动发送', 1, 't', '', 1811365615815487488, '2024-08-19 13:43:07.267986', 1811365615815487488, '2024-08-19 13:43:07.269622', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826059984439037952, 1826059944274382848, 'reconcile_discrepancy_type', 'consistent', '一致', 1, 't', '', 1811365615815487488, '2024-08-21 08:53:21.501721', 1811365615815487488, '2024-08-21 08:53:21.503286', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826060020057067520, 1826059944274382848, 'reconcile_discrepancy_type', 'local_not_exists', '本地订单不存在', 2, 't', '', 1811365615815487488, '2024-08-21 08:53:29.993418', 1811365615815487488, '2024-08-21 08:53:29.995625', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826060059160563712, 1826059944274382848, 'reconcile_discrepancy_type', 'remote_not_exists', '远程订单不存在', 3, 't', '', 1811365615815487488, '2024-08-21 08:53:39.317457', 1811365615815487488, '2024-08-21 08:53:39.319039', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826061121699401728, 1826061072412135424, 'reconcile_result', 'consistent', '一致', 1, 't', '', 1811365615815487488, '2024-08-21 08:57:52.645403', 1811365615815487488, '2024-08-21 08:57:52.647474', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826061151613177856, 1826061072412135424, 'reconcile_result', 'inconsistent', '不一致', 0, 't', '', 1811365615815487488, '2024-08-21 08:57:59.777037', 1811365615815487488, '2024-08-21 08:57:59.779755', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826143984713056256, 1826143914542350336, 'trade_status', 'success', '成功', 1, 't', '', 1811365615815487488, '2024-08-21 14:27:08.727788', 1811365615815487488, '2024-08-21 14:27:08.730433', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826144018259099648, 1826143914542350336, 'trade_status', 'fail', '失败', 2, 't', '', 1811365615815487488, '2024-08-21 14:27:16.725384', 1811365615815487488, '2024-08-21 14:27:16.728032', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826144059224866816, 1826143914542350336, 'trade_status', 'closed', '关闭', 3, 't', '', 1811365615815487488, '2024-08-21 14:27:26.492306', 1811365615815487488, '2024-08-21 14:27:26.494438', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826144095107137536, 1826143914542350336, 'trade_status', 'revoked', '撤销', 4, 't', '', 1811365615815487488, '2024-08-21 14:27:35.047073', 1811365615815487488, '2024-08-21 14:27:35.049164', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826060094858285056, 1826059944274382848, 'reconcile_discrepancy_type', 'not_match', '订单信息不一致', 4, 't', '', 1811365615815487488, '2024-08-21 08:53:47.827207', 1811365615815487488, '2024-08-21 15:04:30.959401', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826521714671509504, 1826143914542350336, 'trade_status', 'progress', '执行中', 0, 't', '', 1811365615815487488, '2024-08-22 15:28:06.569615', 1811365615815487488, '2024-08-22 15:28:06.575032', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1826523501021388800, 1826143914542350336, 'trade_status', 'exception', '异常', 5, 't', '', 1811365615815487488, '2024-08-22 15:35:12.466889', 1811365615815487488, '2024-08-22 15:35:12.469054', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843536477700059136, 1843536439208931328, 'alloc_receiver_type', 'merchant_no', '商户号', 1, 't', '', 1811365615815487488, '2024-10-08 14:18:42.192646', 1811365615815487488, '2024-10-08 14:18:42.192646', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843536514106617856, 1843536439208931328, 'alloc_receiver_type', 'user_id', '用户ID', 2, 't', '', 1811365615815487488, '2024-10-08 14:18:50.872964', 1811365615815487488, '2024-10-08 14:18:50.872964', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843536649184178176, 1843536439208931328, 'alloc_receiver_type', 'login_name', '登录账号', 4, 't', '', 1811365615815487488, '2024-10-08 14:19:23.077681', 1811365615815487488, '2024-10-08 14:19:23.077681', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843537848650264576, 1843536733108006912, 'alloc_relation_type', 'service_provider', '服务商', 1, 't', '', 1811365615815487488, '2024-10-08 14:24:09.052332', 1811365615815487488, '2024-10-08 14:24:09.052332', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843537879457427456, 1843536733108006912, 'alloc_relation_type', 'store', '门店', 2, 't', '', 1811365615815487488, '2024-10-08 14:24:16.397907', 1811365615815487488, '2024-10-08 14:24:16.397907', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843537914530197504, 1843536733108006912, 'alloc_relation_type', 'staff', '员工', 3, 't', '', 1811365615815487488, '2024-10-08 14:24:24.759309', 1811365615815487488, '2024-10-08 14:24:24.759309', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843537960604626944, 1843536733108006912, 'alloc_relation_type', 'store_owner', '店主', 4, 't', '', 1811365615815487488, '2024-10-08 14:24:35.744274', 1811365615815487488, '2024-10-08 14:24:35.744274', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843538006360289280, 1843536733108006912, 'alloc_relation_type', 'partner', '合作伙伴', 5, 't', '', 1811365615815487488, '2024-10-08 14:24:46.653982', 1811365615815487488, '2024-10-08 14:24:46.653982', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843538042037039104, 1843536733108006912, 'alloc_relation_type', 'headquarter', '总部', 6, 't', '', 1811365615815487488, '2024-10-08 14:24:55.159964', 1811365615815487488, '2024-10-08 14:24:55.159964', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843538107178774528, 1843536733108006912, 'alloc_relation_type', 'brand', '品牌方', 7, 't', '', 1811365615815487488, '2024-10-08 14:25:10.690626', 1811365615815487488, '2024-10-08 14:25:10.690626', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843538156054999040, 1843536733108006912, 'alloc_relation_type', 'distributor', '分销商', 8, 't', '', 1811365615815487488, '2024-10-08 14:25:22.344519', 1811365615815487488, '2024-10-08 14:25:22.344519', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843538204528570368, 1843536733108006912, 'alloc_relation_type', 'user', '用户', 9, 't', '', 1811365615815487488, '2024-10-08 14:25:33.900176', 1811365615815487488, '2024-10-08 14:25:33.900176', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843538242730291200, 1843536733108006912, 'alloc_relation_type', 'supplier', '供应商', 10, 't', '', 1811365615815487488, '2024-10-08 14:25:43.008972', 1811365615815487488, '2024-10-08 14:25:43.008972', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843538293854662656, 1843536733108006912, 'alloc_relation_type', 'custom', '自定义', 11, 't', '', 1811365615815487488, '2024-10-08 14:25:55.19713', 1811365615815487488, '2024-10-08 14:25:55.19713', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825171779002728448, 1825135068277334016, 'transfer_payee_type', 'login_name', '登录账号', 4, 't', '', 1811365615815487488, '2024-08-18 22:03:56.823151', 1811365615815487488, '2024-10-08 17:52:07.717985', 3, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1840650104185905152, 1840650057641713664, 'cashier_type', 'wechat_pay', '微信收银台', 1, 't', '', 1811365615815487488, '2024-09-30 15:09:17.120403', 1811365615815487488, '2024-09-30 15:09:17.120403', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1840650136427520000, 1840650057641713664, 'cashier_type', 'alipay', '支付宝收银台', 2, 't', '', 1811365615815487488, '2024-09-30 15:09:24.807694', 1811365615815487488, '2024-09-30 15:09:24.807694', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825171656562606080, 1825135068277334016, 'transfer_payee_type', 'user_id', '用户ID', 2, 't', '', 1811365615815487488, '2024-08-18 22:03:27.631478', 1811365615815487488, '2024-10-08 17:50:20.130589', 2, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1825171693782859776, 1825135068277334016, 'transfer_payee_type', 'open_id', 'OpenId', 1, 't', '', 1811365615815487488, '2024-08-18 22:03:36.505827', 1811365615815487488, '2024-10-08 17:51:28.00028', 3, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1843536564304048128, 1843536439208931328, 'alloc_receiver_type', 'open_id', 'OpenId', 0, 't', '', 1811365615815487488, '2024-10-08 14:19:02.84085', 1811365615815487488, '2024-10-08 17:51:46.206937', 3, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862094703940976640, 1862094405423972352, 'checkout_aggregate', 'wechat_pay', '微信支付', 1, 't', '', 1811365615815487488, '2024-11-28 19:22:28', 1811365615815487488, '2024-12-04 11:36:17', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862094738430738432, 1862094405423972352, 'checkout_aggregate', 'alipay', '支付宝', 2, 't', '', 1811365615815487488, '2024-11-28 19:22:36', 1811365615815487488, '2024-11-28 19:22:36', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862784096733306880, 1862784043394342912, 'checkout_call_type', 'qr_code', '扫码支付', 1, 't', '', 1811365615815487488, '2024-11-30 17:01:52', 1811365615815487488, '2024-11-30 17:02:56', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862784137904594944, 1862784043394342912, 'checkout_call_type', 'bar_code', '条码支付', 2, 't', '', 1811365615815487488, '2024-11-30 17:02:02', 1811365615815487488, '2024-11-30 17:02:53', 1, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862784218108076032, 1862784043394342912, 'checkout_call_type', 'link', '跳转链接', 3, 't', '', 1811365615815487488, '2024-11-30 17:02:21', 1811365615815487488, '2024-11-30 17:02:21', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862784251175968768, 1862784043394342912, 'checkout_call_type', 'mini_app', '小程序支付', 4, 't', '', 1811365615815487488, '2024-11-30 17:02:29', 1811365615815487488, '2024-11-30 17:02:29', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862784292565360640, 1862784043394342912, 'checkout_call_type', 'aggregate', '聚合支付', 5, 't', '', 1811365615815487488, '2024-11-30 17:02:39', 1811365615815487488, '2024-11-30 17:02:39', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1862784325809414144, 1862784043394342912, 'checkout_call_type', 'app', 'APP支付', 6, 't', '', 1811365615815487488, '2024-11-30 17:02:47', 1811365615815487488, '2024-11-30 17:02:47', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1864134907958755328, 1864134865629839360, 'checkout_type', 'h5', 'H5', 0, 't', '', 1811365615815487488, '2024-12-04 10:29:31', 1811365615815487488, '2024-12-04 10:29:31', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1864134948614144000, 1864134865629839360, 'checkout_type', 'pc', 'PC', 1, 't', '', 1811365615815487488, '2024-12-04 10:29:40', 1811365615815487488, '2024-12-04 10:29:40', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1864134981908529152, 1864134865629839360, 'checkout_type', 'mini_app', '小程序', 3, 't', '', 1811365615815487488, '2024-12-04 10:29:48', 1811365615815487488, '2024-12-04 10:29:48', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1864135083783979008, 1864134865629839360, 'checkout_type', 'aggregate', '聚合支付', 4, 't', '', 1811365615815487488, '2024-12-04 10:30:13', 1811365615815487488, '2024-12-04 10:30:13', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1864140869360779264, 1862784043394342912, 'checkout_call_type', 'jsapi', 'JSAPI', 7, 't', '', 1811365615815487488, '2024-12-04 10:53:12', 1811365615815487488, '2024-12-04 10:53:12', 0, 'f');
INSERT INTO "public"."base_dict_item" VALUES (1864182908966182912, 1824050661785407488, 'pay_status', 'wait', '待支付', 0, 't', '', 1811365615815487488, '2024-12-04 13:40:15', 1811365615815487488, '2024-12-04 13:40:15', 0, 'f');

-- ----------------------------
-- Table structure for base_param
-- ----------------------------
DROP TABLE IF EXISTS "public"."base_param";
CREATE TABLE "public"."base_param" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "param_key" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(20) COLLATE "pg_catalog"."default",
  "enable" bool NOT NULL,
  "internal" bool NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."base_param"."id" IS '主键';
COMMENT ON COLUMN "public"."base_param"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."base_param"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."base_param"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."base_param"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."base_param"."version" IS '版本号';
COMMENT ON COLUMN "public"."base_param"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."base_param"."name" IS '参数名称';
COMMENT ON COLUMN "public"."base_param"."param_key" IS '参数键名';
COMMENT ON COLUMN "public"."base_param"."value" IS '参数值';
COMMENT ON COLUMN "public"."base_param"."type" IS '参数类型';
COMMENT ON COLUMN "public"."base_param"."enable" IS '启用状态';
COMMENT ON COLUMN "public"."base_param"."internal" IS '内置参数';
COMMENT ON COLUMN "public"."base_param"."remark" IS '备注';
COMMENT ON TABLE "public"."base_param" IS '系统参数';

-- ----------------------------
-- Records of base_param
-- ----------------------------
INSERT INTO "public"."base_param" VALUES (1811338448851234812, 0, '2024-07-11 17:55:13.904818', 0, '2024-07-11 17:55:13.904818', 0, 'f', 'cs', 'cs', 'cs', NULL, 't', 'f', '124123123123123');

-- ----------------------------
-- Table structure for iam_client
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_client";
CREATE TABLE "public"."iam_client" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "internal" bool NOT NULL,
  "remark" varchar(250) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."iam_client"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_client"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."iam_client"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."iam_client"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."iam_client"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."iam_client"."version" IS '版本号';
COMMENT ON COLUMN "public"."iam_client"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."iam_client"."code" IS '编码';
COMMENT ON COLUMN "public"."iam_client"."name" IS '名称';
COMMENT ON COLUMN "public"."iam_client"."internal" IS '是否系统内置';
COMMENT ON COLUMN "public"."iam_client"."remark" IS '备注';
COMMENT ON TABLE "public"."iam_client" IS '认证终端';

-- ----------------------------
-- Records of iam_client
-- ----------------------------
INSERT INTO "public"."iam_client" VALUES (1810614511481892864, 0, '2024-07-09 17:58:33.786446', 0, '2024-07-09 17:58:33.788447', 0, 'f', 'dax-pay', '管理端', 't', NULL);

-- ----------------------------
-- Table structure for iam_perm_code
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_perm_code";
CREATE TABLE "public"."iam_perm_code" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "pid" int8,
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "remark" varchar(300) COLLATE "pg_catalog"."default",
  "leaf" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."iam_perm_code"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_perm_code"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."iam_perm_code"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."iam_perm_code"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."iam_perm_code"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."iam_perm_code"."version" IS '版本号';
COMMENT ON COLUMN "public"."iam_perm_code"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."iam_perm_code"."pid" IS '父ID';
COMMENT ON COLUMN "public"."iam_perm_code"."code" IS '权限码';
COMMENT ON COLUMN "public"."iam_perm_code"."name" IS '名称';
COMMENT ON COLUMN "public"."iam_perm_code"."remark" IS '备注';
COMMENT ON COLUMN "public"."iam_perm_code"."leaf" IS '是否为叶子结点';
COMMENT ON TABLE "public"."iam_perm_code" IS '权限码';

-- ----------------------------
-- Records of iam_perm_code
-- ----------------------------

-- ----------------------------
-- Table structure for iam_perm_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_perm_menu";
CREATE TABLE "public"."iam_perm_menu" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "pid" int8,
  "client_code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(100) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "hidden" bool NOT NULL,
  "hide_children_menu" bool NOT NULL,
  "component" varchar(300) COLLATE "pg_catalog"."default",
  "path" varchar(300) COLLATE "pg_catalog"."default",
  "redirect" varchar(300) COLLATE "pg_catalog"."default",
  "sort_no" float4,
  "root" bool NOT NULL,
  "keep_alive" bool,
  "target_outside" bool,
  "full_screen" bool,
  "remark" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."iam_perm_menu"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_perm_menu"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."iam_perm_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."iam_perm_menu"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."iam_perm_menu"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."iam_perm_menu"."version" IS '版本号';
COMMENT ON COLUMN "public"."iam_perm_menu"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."iam_perm_menu"."pid" IS '父id';
COMMENT ON COLUMN "public"."iam_perm_menu"."client_code" IS '关联终端code';
COMMENT ON COLUMN "public"."iam_perm_menu"."title" IS '菜单标题';
COMMENT ON COLUMN "public"."iam_perm_menu"."name" IS '路由名称';
COMMENT ON COLUMN "public"."iam_perm_menu"."icon" IS '菜单图标';
COMMENT ON COLUMN "public"."iam_perm_menu"."hidden" IS '是否隐藏';
COMMENT ON COLUMN "public"."iam_perm_menu"."hide_children_menu" IS '是否隐藏子菜单';
COMMENT ON COLUMN "public"."iam_perm_menu"."component" IS '组件';
COMMENT ON COLUMN "public"."iam_perm_menu"."path" IS '访问路径';
COMMENT ON COLUMN "public"."iam_perm_menu"."redirect" IS '菜单跳转地址(重定向)';
COMMENT ON COLUMN "public"."iam_perm_menu"."sort_no" IS '菜单排序';
COMMENT ON COLUMN "public"."iam_perm_menu"."root" IS '是否是一级菜单';
COMMENT ON COLUMN "public"."iam_perm_menu"."keep_alive" IS '是否缓存页面';
COMMENT ON COLUMN "public"."iam_perm_menu"."target_outside" IS '是否为外部打开';
COMMENT ON COLUMN "public"."iam_perm_menu"."full_screen" IS '是否全屏打开';
COMMENT ON COLUMN "public"."iam_perm_menu"."remark" IS '描述';
COMMENT ON TABLE "public"."iam_perm_menu" IS '菜单权限';

-- ----------------------------
-- Records of iam_perm_menu
-- ----------------------------
INSERT INTO "public"."iam_perm_menu" VALUES (1810914501286580224, 0, '2024-07-10 13:50:36.93111', 0, '2024-07-10 13:50:36.93111', 0, 'f', 1810909511121862656, 'dax-pay', '请求权限', 'PermPathList', '', 'f', 'f', 'iam/perm/path/PermPathList', '/system/permission/path', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1810915172140339200, 0, '2024-07-10 13:53:16.872895', 0, '2024-07-10 13:53:53.635198', 1, 'f', 1810909511121862656, 'dax-pay', '权限码', 'PermCodeList', '', 'f', 'f', 'iam/perm/code/PermCodeList', '/system/permission/code', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1811336128809766912, 0, '2024-07-11 17:46:00.76599', 0, '2024-07-11 17:46:36.625626', 1, 'f', 1810910433264762880, 'dax-pay', '系统参数', 'SystemParamList', '', 'f', 'f', '/baseapi/param/SystemParamList', '/system/config/param', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1811283778967441408, 0, '2024-07-11 14:17:59.588051', 0, '2024-07-11 17:47:27.793518', 1, 'f', 1810910433264762880, 'dax-pay', '终端管理', 'ClientList', '', 'f', 'f', '/iam/client/ClientList', '/system/config/client', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1811283512855629824, 0, '2024-07-11 14:16:56.144236', 0, '2024-07-11 17:47:35.591847', 1, 'f', 1810910433264762880, 'dax-pay', '数据字典', 'DictList', '', 'f', 'f', '/baseapi/dict/DictList', '/system/config/dict', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1811360392644521984, 0, '2024-07-11 19:22:25.715575', 0, '2024-07-11 19:22:25.718122', 0, 'f', 1810909853691641856, 'dax-pay', '用户管理', 'UserList', '', 'f', 'f', '/iam/user/UserList', '/system/user/info', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1811667984159715328, 1811365615815487488, '2024-07-12 15:44:41.247497', 1811365615815487488, '2024-07-12 15:44:41.252052', 0, 'f', 1810864706127790080, 'dax-pay', '审计日志', 'SystemLog', '', 'f', 'f', 'Layout', '/system/log', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1811671741266243584, 1811365615815487488, '2024-07-12 15:59:37.00905', 1811365615815487488, '2024-07-12 15:59:37.011126', 0, 'f', 1811667984159715328, 'dax-pay', '登录日志', 'LoginLogList', '', 'f', 'f', '/baseapi/log/login/LoginLogList', '/system/log/login', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1811672495767007232, 1811365615815487488, '2024-07-12 16:02:36.895766', 1811365615815487488, '2024-07-12 16:35:41.627109', 1, 'f', 1811667984159715328, 'dax-pay', '操作日志', 'OperateLogList', '', 'f', 'f', '/baseapi/log/operate/OperateLogList', '/system/log/operate', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1810871795650891776, 0, '2024-07-10 11:00:55.113616', 0, '2024-07-10 11:13:07.675214', 7, 'f', 1810864706127790080, 'dax-pay', '菜单管理', 'MenuList', '', 'f', 'f', '/iam/perm/menu/MenuList', '/system/menu', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1810909853691641856, 0, '2024-07-10 13:32:08.855417', 0, '2024-07-10 13:35:45.759284', 1, 'f', 1810864706127790080, 'dax-pay', '用户信息', 'UserAuth', '', 'f', 'f', 'Layout', '/system/user', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1810910433264762880, 0, '2024-07-10 13:34:27.036666', 0, '2024-07-10 13:35:56.758501', 1, 'f', 1810864706127790080, 'dax-pay', '系统配置', 'SystemConfig', '', 'f', 'f', 'Layout', '/system/config', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1810911232921423872, 0, '2024-07-10 13:37:37.692104', 0, '2024-07-10 13:37:37.693108', 0, 'f', 1810909511121862656, 'dax-pay', '角色管理', 'RoleList', '', 'f', 'f', 'iam/role/RoleList.vue', '/system/permission/role', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1810864706127790080, 0, '2024-07-10 10:32:44.838967', 1811365615815487488, '2024-07-13 21:17:09.975339', 5, 'f', NULL, 'dax-pay', '系统管理', 'System', 'ant-design:setting-outlined', 'f', 'f', 'Layout', '/system', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812114224679284736, 1811365615815487488, '2024-07-13 21:17:53.274452', 1811365615815487488, '2024-07-13 21:18:00.886679', 1, 'f', NULL, 'dax-pay', '订单管理', 'PayOrder', 'ant-design:wallet-outlined', 'f', 'f', 'Layout', '/pay/order', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812114959231938560, 1811365615815487488, '2024-07-13 21:20:48.405236', 1811365615815487488, '2024-07-13 21:20:48.407298', 0, 'f', NULL, 'dax-pay', '对账管理', 'Reconcile', 'ant-design:arrows-alt-outlined', 'f', 'f', 'Layout', '/pay/reconcile', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812115247342874624, 1811365615815487488, '2024-07-13 21:21:57.096469', 1811365615815487488, '2024-07-13 21:25:06.069746', 4, 'f', NULL, 'dax-pay', '关于', '', 'ant-design:info-circle-outlined', 'f', 'f', 'Layout', '/about', '/about/index', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812113823376666624, 1811365615815487488, '2024-07-13 21:16:17.597391', 1811365615815487488, '2024-07-13 21:27:13.912267', 2, 'f', NULL, 'dax-pay', '支付配置', 'PayConfig', 'ant-design:property-safety-twotone', 'f', 'f', 'Layout', '/pay/config', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812116972585938944, 1811365615815487488, '2024-07-13 21:28:48.426928', 1811365615815487488, '2024-07-13 21:28:48.429631', 0, 'f', 1812113823376666624, 'dax-pay', '商户管理', '', '', 'f', 'f', 'Layout', '/pay/config/merchant', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812114725651148800, 1811365615815487488, '2024-07-13 21:19:52.715548', 1811365615815487488, '2024-10-07 17:29:38.645989', 2, 'f', NULL, 'dax-pay', '分账管理', 'Allocation', 'ant-design:sliders-twotone', 'f', 'f', 'Layout', '/pay/allocation', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812116779807338496, 1811365615815487488, '2024-07-13 21:28:02.464593', 1811365615815487488, '2024-07-17 14:13:02.263915', 1, 'f', 1812113823376666624, 'dax-pay', '基础数据', '', '', 'f', 'f', 'Layout', '/pay/config/base', '', -2, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812114347454951424, 1811365615815487488, '2024-07-13 21:18:22.547038', 1811365615815487488, '2024-07-24 18:53:38.947244', 2, 'f', NULL, 'dax-pay', '交易记录', 'PayRecord', 'ant-design:container-outlined', 'f', 'f', 'Layout', '/pay/record', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812114603047448576, 1811365615815487488, '2024-07-13 21:19:23.484406', 1811365615815487488, '2024-07-24 19:28:09.132339', 1, 'f', NULL, 'dax-pay', '商户通知', 'PayNotic', 'ant-design:notification-twotone', 'f', 'f', 'Layout', '/pay/notice', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1813782811271446528, 1811365615815487488, '2024-07-18 11:48:15.321777', 1811365615815487488, '2024-08-14 19:30:02.876775', 1, 'f', 1813456708833087488, 'dax-pay', '平台配置', 'PlatformConfig', '', 'f', 'f', '/daxpay/admin/config/platform/PlatformConfig', '/pay/config/basic/platfom', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812118417951485952, 1811365615815487488, '2024-07-13 21:34:33.029042', 1811365615815487488, '2024-08-27 16:13:38.870687', 2, 'f', 1812116779807338496, 'dax-pay', '支付方式', 'MethodConstList', '', 'f', 'f', '/daxpay/common/constant/method/MethodConstList', '/pay/config/base/method', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812118635229016064, 1811365615815487488, '2024-07-13 21:35:24.831252', 1811365615815487488, '2024-08-27 16:13:42.461047', 2, 'f', 1812116779807338496, 'dax-pay', '接口信息', 'ApiConstList', '', 'f', 'f', '/daxpay/common/constant/api/ApiConstList', '/pay/config/base/api', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1820432075829538816, 1811365615815487488, '2024-08-05 20:10:03.528744', 1811365615815487488, '2024-08-27 16:13:47.256843', 2, 'f', 1812116779807338496, 'dax-pay', '订阅通知', 'NotifyConstList', '', 'f', 'f', '/daxpay/common/constant/notify/NotifyConstList', '/pay/config/base/notify', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812117498400665600, 1811365615815487488, '2024-07-13 21:30:53.790933', 1811365615815487488, '2024-08-27 19:10:41.603861', 1, 'f', 1812116972585938944, 'dax-pay', '应用信息', 'MchAppList', '', 'f', 'f', '/daxpay/common/merchant/app/MchAppList', '/pay/config/merchant/app', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1814602527895957504, 1811365615815487488, '2024-07-20 18:05:30.994059', 1811365615815487488, '2024-08-27 19:10:46.604373', 2, 'f', 1812114224679284736, 'dax-pay', '支付订单', 'PayOrderList', '', 'f', 'f', '/daxpay/common/order/pay/PayOrderList', '/pay/order/pay', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1814602684720984064, 1811365615815487488, '2024-07-20 18:06:08.382006', 1811365615815487488, '2024-08-27 19:10:52.224647', 2, 'f', 1812114224679284736, 'dax-pay', '退款订单', 'RefundOrderList', '', 'f', 'f', '/daxpay/common/order/refund/RefundOrderList', '/pay/order/refund', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1814602840971390976, 1811365615815487488, '2024-07-20 18:06:45.63523', 1811365615815487488, '2024-08-27 19:11:12.990464', 2, 'f', 1812114224679284736, 'dax-pay', '转账订单', 'TransferOrderList', '', 'f', 'f', '/daxpay/common/order/transfer/TransferOrderList', '/pay/order/transfer', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1816064154722365440, 1811365615815487488, '2024-07-24 18:53:29.993277', 1811365615815487488, '2024-08-27 19:11:37.433279', 5, 'f', 1812114347454951424, 'dax-pay', '回调记录', 'TradeCallbackRecordList', '', 'f', 'f', '/daxpay/common/record/callback/TradeCallbackRecordList', '/pay/record/callback', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1816064344661422080, 1811365615815487488, '2024-07-24 18:54:15.268228', 1811365615815487488, '2024-08-27 19:11:43.063961', 2, 'f', 1812114347454951424, 'dax-pay', '交易流水', 'TradeFlowRecordList', '', 'f', 'f', '/daxpay/common/record/flow/TradeFlowRecordList', '/pay/record/flow', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1820467440233127936, 1811365615815487488, '2024-08-05 22:30:35.05958', 1811365615815487488, '2024-08-27 19:12:08.408597', 2, 'f', 1812114603047448576, 'dax-pay', '订阅消息', 'NotifyTaskList', '', 'f', 'f', '/daxpay/common/notice/notify/NotifyTaskList', '/pay/notice/notify', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1820467523628474368, 1811365615815487488, '2024-08-05 22:30:54.941602', 1811365615815487488, '2024-08-27 19:12:15.437882', 2, 'f', 1812114603047448576, 'dax-pay', '回调消息', 'CallbackTaskList', '', 'f', 'f', '/daxpay/common/notice/callback/CallbackTaskList', '/pay/notice/callback', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1822975425229004800, 1811365615815487488, '2024-08-12 20:36:25.279489', 1811365615815487488, '2024-08-12 20:36:25.282711', 0, 'f', 1810864706127790080, 'dax-pay', '文件存储', '', '', 'f', 'f', 'Layout', '/system/file', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1813456708833087488, 1811365615815487488, '2024-07-17 14:12:26.440633', 1811365615815487488, '2024-09-20 11:05:46.469139', 4, 'f', 1812113823376666624, 'dax-pay', '基础配置', '', '', 'f', 'f', 'Layout', '/pay/config/basic', '', -1, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1822975777026252800, 1811365615815487488, '2024-08-12 20:37:49.152472', 1811365615815487488, '2024-08-12 20:37:49.154031', 0, 'f', 1822975425229004800, 'dax-pay', '存储平台', 'FilePlatformList', '', 'f', 'f', '/baseapi/file/platform/FilePlatformList', '/system/file/platform', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1822975970266226688, 1811365615815487488, '2024-08-12 20:38:35.224183', 1811365615815487488, '2024-08-12 20:38:35.226288', 0, 'f', 1822975425229004800, 'dax-pay', '文件管理', 'FileUploadList', '', 'f', 'f', '/baseapi/file/upload/FileUploadList', '/system/file/info', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1824779750208679936, 1811365615815487488, '2024-08-17 20:06:09.875297', 1811365615815487488, '2024-10-08 19:25:43.362002', 2, 'f', 1812114725651148800, 'dax-pay', '分账单', '', '', 'f', 'f', '', '/pay/reconcile/order', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812118306328473600, 1811365615815487488, '2024-07-13 21:34:06.415311', 1811365615815487488, '2024-08-27 16:13:34.678515', 4, 'f', 1812116779807338496, 'dax-pay', '支付通道', 'ChannelConstList', '', 'f', 'f', '/daxpay/common/constant/channel/ChannelConstList', '/pay/config/base/channel', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1816064593371066368, 1811365615815487488, '2024-07-24 18:55:14.565671', 1811365615815487488, '2024-08-27 19:11:47.317719', 4, 'f', 1812114347454951424, 'dax-pay', '关闭记录(支付)', 'PayCloseRecordList', '', 'f', 'f', '/daxpay/common/record/close/PayCloseRecordList', '/pay/record/close', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1824779945365450752, 1811365615815487488, '2024-08-17 20:06:56.404481', 1811365615815487488, '2024-08-27 19:11:51.292144', 2, 'f', 1812114347454951424, 'dax-pay', '同步记录', 'TradeSyncRecordList', '', 'f', 'f', '/daxpay/common/record/sync/TradeSyncRecordList', '/pay/record/sync', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1820468413097746432, 1811365615815487488, '2024-08-05 22:34:27.007057', 1811365615815487488, '2024-08-27 19:12:34.654805', 2, 'f', 1812114959231938560, 'dax-pay', '差异记录', 'ReconcileDiscrepancyList', '', 'f', 'f', '/daxpay/common/reconcile/discrepancy/ReconcileDiscrepancyList', '/pay/reconcile/discrepancy', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1820467934552825856, 1811365615815487488, '2024-08-05 22:32:32.913035', 1811365615815487488, '2024-08-27 19:12:40.133331', 2, 'f', 1812114959231938560, 'dax-pay', '对账单', 'ReconcileStatementList', '', 'f', 'f', '/daxpay/common/reconcile/statement/ReconcileStatementList', '/pay/reconcile/statement', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1810909511121862656, 0, '2024-07-10 13:30:47.186592', 0, '2024-07-10 13:48:12.256695', 6, 'f', 1810864706127790080, 'dax-pay', '权限管理', 'Permission', '', 'f', 'f', 'Layout', '/system/permission', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1812115119471128576, 1811365615815487488, '2024-07-13 21:21:26.609834', 1811365615815487488, '2024-09-18 11:40:28.3431', 3, 'f', NULL, 'dax-pay', '演示模块', 'Demo', 'ant-design:appstore-twotone', 'f', 'f', 'Layout', '/pay/demo', '', 0, 't', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1837381440350912512, 1811365615815487488, '2024-09-21 14:40:46.934676', 1811365615815487488, '2024-09-21 14:40:46.934676', 0, 'f', 1810910433264762880, 'dax-pay', '延时队列', 'DelayQuery', '', 'f', 'f', '/baseapi/delay/DelayQuery', '/system/config/delay', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1836248839544733696, 1811365615815487488, '2024-09-18 11:40:13.861746', 1811365615815487488, '2024-09-25 14:46:38.017375', 1, 'f', 1812115119471128576, 'dax-pay', '交易调试', 'DevelopTrade', '', 'f', 'f', '/daxpay/common/develop/trade/DevelopTrade', '/pay/demo/develop', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1838832057238274048, 1811365615815487488, '2024-09-25 14:45:00.952476', 1811365615815487488, '2024-09-25 14:46:49.48474', 1, 'f', 1812115119471128576, 'dax-pay', '认证调试', 'ChannelAuth', '', 'f', 'f', '/daxpay/common/develop/auth/ChannelAuth', '/pay/demo/channelAuth', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1824779695900831744, 1811365615815487488, '2024-08-17 20:05:56.927619', 1811365615815487488, '2024-10-08 19:21:37.604842', 2, 'f', 1812114725651148800, 'dax-pay', '分账组管理', 'AllocationGroupList', '', 't', 'f', '/daxpay/common/allocation/group/AllocationGroupList', '/pay/allocation/group', '', 0, 'f', 't', 'f', 'f', NULL);
INSERT INTO "public"."iam_perm_menu" VALUES (1824779660136001536, 1811365615815487488, '2024-08-17 20:05:48.400494', 1811365615815487488, '2024-10-08 19:21:44.305611', 5, 'f', 1812114725651148800, 'dax-pay', '接收方', 'AllocationReceiverList', '', 't', 'f', '/daxpay/common/allocation/receiver/AllocationReceiverList', '/pay/allocation/receiver', '', 0, 'f', 't', 'f', 'f', NULL);

-- ----------------------------
-- Table structure for iam_perm_path
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_perm_path";
CREATE TABLE "public"."iam_perm_path" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "parent_code" varchar(50) COLLATE "pg_catalog"."default",
  "client_code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "leaf" bool NOT NULL,
  "path" varchar(200) COLLATE "pg_catalog"."default",
  "method" varchar(10) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."iam_perm_path"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_perm_path"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."iam_perm_path"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."iam_perm_path"."parent_code" IS '上级编码';
COMMENT ON COLUMN "public"."iam_perm_path"."client_code" IS '终端编码';
COMMENT ON COLUMN "public"."iam_perm_path"."code" IS '标识编码(模块、分组标识)';
COMMENT ON COLUMN "public"."iam_perm_path"."name" IS '名称(请求路径、模块、分组名称)';
COMMENT ON COLUMN "public"."iam_perm_path"."leaf" IS '叶子节点';
COMMENT ON COLUMN "public"."iam_perm_path"."path" IS '请求路径';
COMMENT ON COLUMN "public"."iam_perm_path"."method" IS '请求类型, 为全大写单词';
COMMENT ON TABLE "public"."iam_perm_path" IS '请求权限(url)';

-- ----------------------------
-- Records of iam_perm_path
-- ----------------------------

-- ----------------------------
-- Table structure for iam_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_role";
CREATE TABLE "public"."iam_role" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "pid" int8,
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "internal" bool,
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."iam_role"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_role"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."iam_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."iam_role"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."iam_role"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."iam_role"."version" IS '版本号';
COMMENT ON COLUMN "public"."iam_role"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."iam_role"."pid" IS '父级Id';
COMMENT ON COLUMN "public"."iam_role"."code" IS '编码';
COMMENT ON COLUMN "public"."iam_role"."name" IS '名称';
COMMENT ON COLUMN "public"."iam_role"."internal" IS '是否系统内置';
COMMENT ON COLUMN "public"."iam_role"."remark" IS '备注';
COMMENT ON TABLE "public"."iam_role" IS '角色';

-- ----------------------------
-- Records of iam_role
-- ----------------------------
INSERT INTO "public"."iam_role" VALUES (1810203792869191680, 0, '2024-07-08 14:46:30.838451', 0, '2024-07-08 14:46:30.838451', 0, 'f', NULL, 'admin', '管理员', 'f', '');

-- ----------------------------
-- Table structure for iam_role_code
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_role_code";
CREATE TABLE "public"."iam_role_code" (
  "id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "code_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."iam_role_code"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_role_code"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."iam_role_code"."code_id" IS '权限码';
COMMENT ON TABLE "public"."iam_role_code" IS '角色权限码关联关系';

-- ----------------------------
-- Records of iam_role_code
-- ----------------------------

-- ----------------------------
-- Table structure for iam_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_role_menu";
CREATE TABLE "public"."iam_role_menu" (
  "id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "client_code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."iam_role_menu"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_role_menu"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."iam_role_menu"."client_code" IS '终端编码';
COMMENT ON COLUMN "public"."iam_role_menu"."menu_id" IS '菜单id';
COMMENT ON TABLE "public"."iam_role_menu" IS '角色菜单关联关系';

-- ----------------------------
-- Records of iam_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for iam_role_path
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_role_path";
CREATE TABLE "public"."iam_role_path" (
  "id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "client_code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "path_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."iam_role_path"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_role_path"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."iam_role_path"."client_code" IS '终端编码';
COMMENT ON COLUMN "public"."iam_role_path"."path_id" IS '请求资源id';
COMMENT ON TABLE "public"."iam_role_path" IS '角色路径关联关系';

-- ----------------------------
-- Records of iam_role_path
-- ----------------------------

-- ----------------------------
-- Table structure for iam_user_expand_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_user_expand_info";
CREATE TABLE "public"."iam_user_expand_info" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "sex" varchar(10) COLLATE "pg_catalog"."default",
  "avatar" varchar(300) COLLATE "pg_catalog"."default",
  "birthday" date,
  "last_login_time" timestamp(0),
  "register_time" timestamp(6),
  "current_login_time" timestamp(6),
  "initial_password" bool,
  "expire_password" bool,
  "last_change_password_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."iam_user_expand_info"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_user_expand_info"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."iam_user_expand_info"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."iam_user_expand_info"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."iam_user_expand_info"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."iam_user_expand_info"."version" IS '版本号';
COMMENT ON COLUMN "public"."iam_user_expand_info"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."iam_user_expand_info"."sex" IS '性别';
COMMENT ON COLUMN "public"."iam_user_expand_info"."avatar" IS '头像图片url';
COMMENT ON COLUMN "public"."iam_user_expand_info"."birthday" IS '生日';
COMMENT ON COLUMN "public"."iam_user_expand_info"."last_login_time" IS '上次登录时间';
COMMENT ON COLUMN "public"."iam_user_expand_info"."register_time" IS '注册时间';
COMMENT ON COLUMN "public"."iam_user_expand_info"."current_login_time" IS '本次登录时间';
COMMENT ON COLUMN "public"."iam_user_expand_info"."initial_password" IS '是否初始密码';
COMMENT ON COLUMN "public"."iam_user_expand_info"."expire_password" IS '密码是否过期';
COMMENT ON COLUMN "public"."iam_user_expand_info"."last_change_password_time" IS '上次修改密码时间';
COMMENT ON TABLE "public"."iam_user_expand_info" IS '用户扩展信息';

-- ----------------------------
-- Records of iam_user_expand_info
-- ----------------------------
INSERT INTO "public"."iam_user_expand_info" VALUES (1811365615815487488, 0, '2024-07-11 19:43:11.023201', 0, '2024-07-11 19:43:11.023201', 0, 'f', NULL, NULL, NULL, NULL, '2024-07-11 19:43:11.021597', NULL, 'f', 'f', NULL);

-- ----------------------------
-- Table structure for iam_user_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_user_info";
CREATE TABLE "public"."iam_user_info" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "account" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "phone" varchar(50) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "administrator" bool NOT NULL,
  "status" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."iam_user_info"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_user_info"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."iam_user_info"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."iam_user_info"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."iam_user_info"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."iam_user_info"."version" IS '版本号';
COMMENT ON COLUMN "public"."iam_user_info"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."iam_user_info"."name" IS '名称';
COMMENT ON COLUMN "public"."iam_user_info"."account" IS '账号';
COMMENT ON COLUMN "public"."iam_user_info"."password" IS '密码';
COMMENT ON COLUMN "public"."iam_user_info"."phone" IS '手机号';
COMMENT ON COLUMN "public"."iam_user_info"."email" IS '邮箱';
COMMENT ON COLUMN "public"."iam_user_info"."administrator" IS '是否管理员';
COMMENT ON COLUMN "public"."iam_user_info"."status" IS '账号状态';
COMMENT ON TABLE "public"."iam_user_info" IS '用户核心信息';

-- ----------------------------
-- Records of iam_user_info
-- ----------------------------
INSERT INTO "public"."iam_user_info" VALUES (1811365615815487488, 0, '2024-07-11 19:43:11.013754', 0, '2024-07-11 19:43:32.925167', 1, 'f', '超级管理员', 'bootx', '$2a$10$knt/I7FYX9YpWYfjv4ChhuOhiYGf3/fCvrHxm51pis.OnNPBDvSeC', '13333333333', 'bootx@bootx.cn', 't', 'normal');

-- ----------------------------
-- Table structure for iam_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."iam_user_role";
CREATE TABLE "public"."iam_user_role" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."iam_user_role"."id" IS '主键';
COMMENT ON COLUMN "public"."iam_user_role"."user_id" IS '用户';
COMMENT ON COLUMN "public"."iam_user_role"."role_id" IS '角色';
COMMENT ON TABLE "public"."iam_user_role" IS '用户角色关联关系';

-- ----------------------------
-- Records of iam_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for pay_alloc_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_alloc_detail";
CREATE TABLE "public"."pay_alloc_detail" (
  "id" int8 NOT NULL,
  "allocation_id" int8 NOT NULL,
  "receiver_id" int8 NOT NULL,
  "receiver_no" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "rate" int4 NOT NULL,
  "amount" int4 NOT NULL,
  "receiver_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "receiver_account" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "receiver_name" varchar(100) COLLATE "pg_catalog"."default",
  "result" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "error_code" varchar(10) COLLATE "pg_catalog"."default",
  "error_msg" varchar(150) COLLATE "pg_catalog"."default",
  "finish_time" timestamp(6),
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_alloc_detail"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_alloc_detail"."allocation_id" IS '分账订单ID';
COMMENT ON COLUMN "public"."pay_alloc_detail"."receiver_id" IS '接收者ID';
COMMENT ON COLUMN "public"."pay_alloc_detail"."receiver_no" IS '分账接收方编号';
COMMENT ON COLUMN "public"."pay_alloc_detail"."rate" IS '分账比例(万分之多少)';
COMMENT ON COLUMN "public"."pay_alloc_detail"."amount" IS '分账金额';
COMMENT ON COLUMN "public"."pay_alloc_detail"."receiver_type" IS '分账接收方类型';
COMMENT ON COLUMN "public"."pay_alloc_detail"."receiver_account" IS '接收方账号';
COMMENT ON COLUMN "public"."pay_alloc_detail"."receiver_name" IS '接收方姓名';
COMMENT ON COLUMN "public"."pay_alloc_detail"."result" IS '分账结果';
COMMENT ON COLUMN "public"."pay_alloc_detail"."error_code" IS '错误代码';
COMMENT ON COLUMN "public"."pay_alloc_detail"."error_msg" IS '错误原因';
COMMENT ON COLUMN "public"."pay_alloc_detail"."finish_time" IS '分账完成时间';
COMMENT ON COLUMN "public"."pay_alloc_detail"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_alloc_detail"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_alloc_detail"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_alloc_detail"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_alloc_detail"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_alloc_detail"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_alloc_detail"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_alloc_detail" IS '分账订单明细';

-- ----------------------------
-- Records of pay_alloc_detail
-- ----------------------------

-- ----------------------------
-- Table structure for pay_alloc_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_alloc_group";
CREATE TABLE "public"."pay_alloc_group" (
  "id" int8 NOT NULL,
  "group_no" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "default_group" bool,
  "total_rate" numeric(5,2),
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_alloc_group"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_alloc_group"."group_no" IS '分账组编码';
COMMENT ON COLUMN "public"."pay_alloc_group"."name" IS '名称';
COMMENT ON COLUMN "public"."pay_alloc_group"."channel" IS '通道';
COMMENT ON COLUMN "public"."pay_alloc_group"."default_group" IS '默认分账组';
COMMENT ON COLUMN "public"."pay_alloc_group"."total_rate" IS '总分账比例(百分之多少)';
COMMENT ON COLUMN "public"."pay_alloc_group"."remark" IS '备注';
COMMENT ON COLUMN "public"."pay_alloc_group"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_alloc_group"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_alloc_group"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_alloc_group"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_alloc_group"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_alloc_group"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_alloc_group"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_alloc_group" IS '分账组';

-- ----------------------------
-- Records of pay_alloc_group
-- ----------------------------

-- ----------------------------
-- Table structure for pay_alloc_group_receiver
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_alloc_group_receiver";
CREATE TABLE "public"."pay_alloc_group_receiver" (
  "id" int8 NOT NULL,
  "group_id" int8 NOT NULL,
  "receiver_id" int8 NOT NULL,
  "rate" numeric(5,2),
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."group_id" IS '分账组ID';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."receiver_id" IS '接收者ID';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."rate" IS '分账比例(百分之多少)';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_alloc_group_receiver"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_alloc_group_receiver" IS '分账接收组关系';

-- ----------------------------
-- Records of pay_alloc_group_receiver
-- ----------------------------

-- ----------------------------
-- Table structure for pay_alloc_receiver
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_alloc_receiver";
CREATE TABLE "public"."pay_alloc_receiver" (
  "id" int8 NOT NULL,
  "receiver_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "receiver_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "receiver_account" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "receiver_name" varchar(100) COLLATE "pg_catalog"."default",
  "relation_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "relation_name" varchar(50) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "deleted" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."pay_alloc_receiver"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."receiver_no" IS '分账接收方编号';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."channel" IS '所属通道';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."receiver_type" IS '分账接收方类型';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."receiver_account" IS '接收方账号';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."receiver_name" IS '接收方姓名';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."relation_type" IS '分账关系类型';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."relation_name" IS '关系名称';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_alloc_receiver"."deleted" IS '删除标志';
COMMENT ON TABLE "public"."pay_alloc_receiver" IS '分账接收方';

-- ----------------------------
-- Records of pay_alloc_receiver
-- ----------------------------

-- ----------------------------
-- Table structure for pay_alloc_transaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_alloc_transaction";
CREATE TABLE "public"."pay_alloc_transaction" (
  "id" int8 NOT NULL,
  "alloc_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "biz_alloc_no" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "out_alloc_no" varchar(150) COLLATE "pg_catalog"."default",
  "order_id" int8 NOT NULL,
  "order_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "biz_order_no" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "out_order_no" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "amount" int4 NOT NULL,
  "description" varchar(150) COLLATE "pg_catalog"."default",
  "status" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "result" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "finish_time" timestamp(6),
  "notify_url" varchar(200) COLLATE "pg_catalog"."default",
  "attach" varchar(500) COLLATE "pg_catalog"."default",
  "req_time" timestamp(6),
  "client_ip" varchar(64) COLLATE "pg_catalog"."default",
  "error_code" varchar(10) COLLATE "pg_catalog"."default",
  "error_msg" varchar(2048) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_alloc_transaction"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."alloc_no" IS '分账单号';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."biz_alloc_no" IS '商户分账单号';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."out_alloc_no" IS '通道分账号';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."order_id" IS '支付订单ID';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."order_no" IS '支付订单号';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."biz_order_no" IS '商户支付订单号';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."out_order_no" IS '通道支付订单号';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."title" IS '支付标题';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."channel" IS '所属通道';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."amount" IS '总分账金额';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."description" IS '分账描述';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."status" IS '状态';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."result" IS '处理结果';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."finish_time" IS '分账完成时间';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."notify_url" IS '异步通知地址';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."attach" IS '商户扩展参数';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."req_time" IS '请求时间，传输时间戳';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."client_ip" IS '支付终端ip';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_alloc_transaction"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_alloc_transaction" IS '分账订单';

-- ----------------------------
-- Records of pay_alloc_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for pay_api_const
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_api_const";
CREATE TABLE "public"."pay_api_const" (
  "id" int8 NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "api" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "enable" bool,
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_api_const"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_api_const"."code" IS '编码';
COMMENT ON COLUMN "public"."pay_api_const"."name" IS '接口名称';
COMMENT ON COLUMN "public"."pay_api_const"."api" IS '接口地址';
COMMENT ON COLUMN "public"."pay_api_const"."enable" IS '是否启用';
COMMENT ON COLUMN "public"."pay_api_const"."remark" IS '备注';
COMMENT ON TABLE "public"."pay_api_const" IS '支付接口常量';

-- ----------------------------
-- Records of pay_api_const
-- ----------------------------

-- ----------------------------
-- Table structure for pay_cashier_code_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_cashier_code_config";
CREATE TABLE "public"."pay_cashier_code_config" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "code" varchar(32) COLLATE "pg_catalog"."default",
  "template_code" varchar(32) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "enable" bool NOT NULL,
  "deleted" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."pay_cashier_code_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."name" IS '码牌名称';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."code" IS '码牌code';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."template_code" IS '模板编号';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."remark" IS '备注';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."enable" IS '是否启用';
COMMENT ON COLUMN "public"."pay_cashier_code_config"."deleted" IS '删除标志';
COMMENT ON TABLE "public"."pay_cashier_code_config" IS '收银码牌配置';

-- ----------------------------
-- Records of pay_cashier_code_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_cashier_code_type_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_cashier_code_type_config";
CREATE TABLE "public"."pay_cashier_code_type_config" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "cashier_code_id" int8 NOT NULL,
  "type" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "channel" varchar(32) COLLATE "pg_catalog"."default",
  "pay_method" varchar(32) COLLATE "pg_catalog"."default",
  "allocation" bool NOT NULL,
  "auto_allocation" bool NOT NULL,
  "deleted" bool NOT NULL
)
;
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."cashier_code_id" IS '码牌ID';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."type" IS '收银台类型';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."pay_method" IS '支付方式';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."allocation" IS '是否开启分账';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."auto_allocation" IS '自动分账';
COMMENT ON COLUMN "public"."pay_cashier_code_type_config"."deleted" IS '删除标志';
COMMENT ON TABLE "public"."pay_cashier_code_type_config" IS '各类型码牌配置';

-- ----------------------------
-- Records of pay_cashier_code_type_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_channel_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_channel_config";
CREATE TABLE "public"."pay_channel_config" (
  "id" int8 NOT NULL,
  "channel" varchar(255) COLLATE "pg_catalog"."default",
  "out_mch_no" varchar(32) COLLATE "pg_catalog"."default",
  "out_app_id" varchar(32) COLLATE "pg_catalog"."default",
  "enable" bool,
  "ext" text COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."pay_channel_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_channel_config"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_channel_config"."out_mch_no" IS '通道商户号';
COMMENT ON COLUMN "public"."pay_channel_config"."out_app_id" IS '通道APPID';
COMMENT ON COLUMN "public"."pay_channel_config"."enable" IS '是否启用';
COMMENT ON COLUMN "public"."pay_channel_config"."ext" IS '扩展存储';
COMMENT ON COLUMN "public"."pay_channel_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_channel_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_channel_config"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_channel_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_channel_config"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_channel_config"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_channel_config"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_channel_config" IS '通道支付配置';

-- ----------------------------
-- Records of pay_channel_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_channel_const
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_channel_const";
CREATE TABLE "public"."pay_channel_const" (
  "id" int8 NOT NULL,
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "enable" bool,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "allocatable" bool
)
;
COMMENT ON COLUMN "public"."pay_channel_const"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_channel_const"."code" IS '通道编码';
COMMENT ON COLUMN "public"."pay_channel_const"."name" IS '通道名称';
COMMENT ON COLUMN "public"."pay_channel_const"."enable" IS '是否启用';
COMMENT ON COLUMN "public"."pay_channel_const"."remark" IS '备注';
COMMENT ON COLUMN "public"."pay_channel_const"."allocatable" IS '是否支持分账';
COMMENT ON TABLE "public"."pay_channel_const" IS '支付通道常量';

-- ----------------------------
-- Records of pay_channel_const
-- ----------------------------
INSERT INTO "public"."pay_channel_const" VALUES (30000, 'union_pay', '云闪付', 't', NULL, 't');
INSERT INTO "public"."pay_channel_const" VALUES (10000, 'ali_pay', '支付宝(直连商户)', 't', NULL, 't');
INSERT INTO "public"."pay_channel_const" VALUES (20000, 'wechat_pay', '微信支付(直连商户)', 't', NULL, 't');

-- ----------------------------
-- Table structure for pay_channel_reconcile_trade
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_channel_reconcile_trade";
CREATE TABLE "public"."pay_channel_reconcile_trade" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "reconcile_id" int8,
  "trade_type" varchar(32) COLLATE "pg_catalog"."default",
  "trade_no" varchar(32) COLLATE "pg_catalog"."default",
  "out_trade_no" varchar(100) COLLATE "pg_catalog"."default",
  "amount" numeric(13,2),
  "trade_status" varchar(32) COLLATE "pg_catalog"."default",
  "trade_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."reconcile_id" IS '关联对账单ID';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."trade_type" IS '交易类型';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."trade_no" IS '本地交易号';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."out_trade_no" IS '通道交易号';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."amount" IS '交易金额';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."trade_status" IS '交易状态';
COMMENT ON COLUMN "public"."pay_channel_reconcile_trade"."trade_time" IS '交易时间';
COMMENT ON TABLE "public"."pay_channel_reconcile_trade" IS '通道对账交易明细';

-- ----------------------------
-- Records of pay_channel_reconcile_trade
-- ----------------------------

-- ----------------------------
-- Table structure for pay_checkout_aggregate_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_checkout_aggregate_config";
CREATE TABLE "public"."pay_checkout_aggregate_config" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "type" varchar(32) COLLATE "pg_catalog"."default",
  "channel" varchar(32) COLLATE "pg_catalog"."default",
  "pay_method" varchar(32) COLLATE "pg_catalog"."default",
  "auto_launch" bool
)
;
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."type" IS '聚合支付类型';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."channel" IS '通道';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."pay_method" IS '支付方式';
COMMENT ON COLUMN "public"."pay_checkout_aggregate_config"."auto_launch" IS '自动拉起支付';
COMMENT ON TABLE "public"."pay_checkout_aggregate_config" IS '收银台聚合支付配置';

-- ----------------------------
-- Records of pay_checkout_aggregate_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_checkout_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_checkout_config";
CREATE TABLE "public"."pay_checkout_config" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "name" varchar(55) COLLATE "pg_catalog"."default",
  "aggregate_show" bool,
  "h5_auto_upgrade" bool
)
;
COMMENT ON COLUMN "public"."pay_checkout_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_checkout_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_checkout_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_checkout_config"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_checkout_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_checkout_config"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_checkout_config"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_checkout_config"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_checkout_config"."name" IS '收银台名称';
COMMENT ON COLUMN "public"."pay_checkout_config"."aggregate_show" IS 'PC收银台是否同时显示聚合收银码';
COMMENT ON COLUMN "public"."pay_checkout_config"."h5_auto_upgrade" IS 'h5收银台自动升级聚合支付';
COMMENT ON TABLE "public"."pay_checkout_config" IS '收银台配置';

-- ----------------------------
-- Records of pay_checkout_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_checkout_group_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_checkout_group_config";
CREATE TABLE "public"."pay_checkout_group_config" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "type" varchar(32) COLLATE "pg_catalog"."default",
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "sort_no" numeric(10,2)
)
;
COMMENT ON COLUMN "public"."pay_checkout_group_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."type" IS '类型';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."name" IS '名称';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."icon" IS '图标';
COMMENT ON COLUMN "public"."pay_checkout_group_config"."sort_no" IS '排序';
COMMENT ON TABLE "public"."pay_checkout_group_config" IS '收银台类目配置';

-- ----------------------------
-- Records of pay_checkout_group_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_checkout_item_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_checkout_item_config";
CREATE TABLE "public"."pay_checkout_item_config" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "group_id" int8,
  "channel" varchar(32) COLLATE "pg_catalog"."default",
  "pay_method" varchar(32) COLLATE "pg_catalog"."default",
  "name" varchar(50) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "sort_no" numeric(10,2),
  "call_type" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_checkout_item_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."group_id" IS '分组配置ID';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."channel" IS '通道';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."pay_method" IS '支付方式';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."name" IS '名称';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."icon" IS '图标';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."sort_no" IS '排序';
COMMENT ON COLUMN "public"."pay_checkout_item_config"."call_type" IS '调用方式';
COMMENT ON TABLE "public"."pay_checkout_item_config" IS '收银台配置项';

-- ----------------------------
-- Records of pay_checkout_item_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_close_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_close_record";
CREATE TABLE "public"."pay_close_record" (
  "id" int8 NOT NULL,
  "order_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "biz_order_no" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "close_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "closed" bool NOT NULL,
  "error_code" varchar(10) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default",
  "client_ip" varchar(64) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_close_record"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_close_record"."order_no" IS '支付订单号';
COMMENT ON COLUMN "public"."pay_close_record"."biz_order_no" IS '商户支付订单号';
COMMENT ON COLUMN "public"."pay_close_record"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_close_record"."close_type" IS '关闭类型';
COMMENT ON COLUMN "public"."pay_close_record"."closed" IS '是否关闭成功';
COMMENT ON COLUMN "public"."pay_close_record"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_close_record"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_close_record"."client_ip" IS '支付终端ip';
COMMENT ON COLUMN "public"."pay_close_record"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_close_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_close_record"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_close_record" IS '支付关闭记录';

-- ----------------------------
-- Records of pay_close_record
-- ----------------------------

-- ----------------------------
-- Table structure for pay_mch_app
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_mch_app";
CREATE TABLE "public"."pay_mch_app" (
  "id" int8 NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "app_name" varchar(255) COLLATE "pg_catalog"."default",
  "sign_type" varchar(255) COLLATE "pg_catalog"."default",
  "sign_secret" varchar(255) COLLATE "pg_catalog"."default",
  "req_sign" bool,
  "limit_amount" numeric(10,4),
  "status" varchar(255) COLLATE "pg_catalog"."default",
  "notify_type" varchar(255) COLLATE "pg_catalog"."default",
  "notify_url" varchar(255) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "order_timeout" int2
)
;
COMMENT ON COLUMN "public"."pay_mch_app"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_mch_app"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_mch_app"."app_name" IS '应用名称';
COMMENT ON COLUMN "public"."pay_mch_app"."sign_type" IS '签名方式';
COMMENT ON COLUMN "public"."pay_mch_app"."sign_secret" IS '签名秘钥';
COMMENT ON COLUMN "public"."pay_mch_app"."req_sign" IS '是否对请求进行验签';
COMMENT ON COLUMN "public"."pay_mch_app"."limit_amount" IS '支付限额(元)';
COMMENT ON COLUMN "public"."pay_mch_app"."status" IS '应用状态';
COMMENT ON COLUMN "public"."pay_mch_app"."notify_type" IS '异步消息通知类型';
COMMENT ON COLUMN "public"."pay_mch_app"."notify_url" IS '通知地址';
COMMENT ON COLUMN "public"."pay_mch_app"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_mch_app"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_mch_app"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_mch_app"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_mch_app"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_mch_app"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_mch_app"."order_timeout" IS '订单默认超时时间(分钟)';
COMMENT ON TABLE "public"."pay_mch_app" IS '商户应用';

-- ----------------------------
-- Records of pay_mch_app
-- ----------------------------

-- ----------------------------
-- Table structure for pay_merchant_callback_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_merchant_callback_record";
CREATE TABLE "public"."pay_merchant_callback_record" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "task_id" int8,
  "req_count" int4,
  "success" bool,
  "send_type" varchar(30) COLLATE "pg_catalog"."default",
  "error_code" varchar(50) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."task_id" IS '任务ID';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."req_count" IS '请求次数';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."success" IS '发送是否成功';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."send_type" IS '发送类型, 自动发送, 手动发送';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_merchant_callback_record"."error_msg" IS '错误信息';
COMMENT ON TABLE "public"."pay_merchant_callback_record" IS '客户回调消息发送记录';

-- ----------------------------
-- Records of pay_merchant_callback_record
-- ----------------------------

-- ----------------------------
-- Table structure for pay_merchant_callback_task
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_merchant_callback_task";
CREATE TABLE "public"."pay_merchant_callback_task" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "trade_id" int8,
  "trade_no" varchar(32) COLLATE "pg_catalog"."default",
  "trade_type" varchar(20) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "success" bool,
  "next_time" timestamp(6),
  "send_count" int4,
  "delay_count" int4,
  "latest_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "url" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."trade_id" IS '本地交易ID';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."trade_no" IS '本地交易号';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."trade_type" IS '通知类型';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."content" IS '消息内容';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."success" IS '是否发送成功';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."next_time" IS '发送次数';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."send_count" IS '延迟次数';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."delay_count" IS '下次发送时间';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."latest_time" IS '最后发送时间';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_merchant_callback_task"."url" IS '发送地址';
COMMENT ON TABLE "public"."pay_merchant_callback_task" IS '客户回调通知消息任务';

-- ----------------------------
-- Records of pay_merchant_callback_task
-- ----------------------------

-- ----------------------------
-- Table structure for pay_merchant_notify_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_merchant_notify_config";
CREATE TABLE "public"."pay_merchant_notify_config" (
  "id" int8 NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "subscribe" bool,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."code" IS '通知类型';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."subscribe" IS '是否订阅';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_merchant_notify_config"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_merchant_notify_config" IS '商户应用消息通知配置';

-- ----------------------------
-- Records of pay_merchant_notify_config
-- ----------------------------

-- ----------------------------
-- Table structure for pay_merchant_notify_const
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_merchant_notify_const";
CREATE TABLE "public"."pay_merchant_notify_const" (
  "id" int8 NOT NULL,
  "code" varchar(60) COLLATE "pg_catalog"."default",
  "name" varchar(80) COLLATE "pg_catalog"."default",
  "description" varchar(300) COLLATE "pg_catalog"."default",
  "enable" bool
)
;
COMMENT ON COLUMN "public"."pay_merchant_notify_const"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_merchant_notify_const"."code" IS '通道编码';
COMMENT ON COLUMN "public"."pay_merchant_notify_const"."name" IS '通道名称';
COMMENT ON COLUMN "public"."pay_merchant_notify_const"."description" IS '描述';
COMMENT ON COLUMN "public"."pay_merchant_notify_const"."enable" IS '是否启用';
COMMENT ON TABLE "public"."pay_merchant_notify_const" IS '商户订阅通知类型';

-- ----------------------------
-- Records of pay_merchant_notify_const
-- ----------------------------
INSERT INTO "public"."pay_merchant_notify_const" VALUES (10000, 'pay', '支付订单变动通知', '支付订单变动通知', 't');
INSERT INTO "public"."pay_merchant_notify_const" VALUES (20000, 'refund', '退款订单变动通知', '退款订单变动通知', 't');
INSERT INTO "public"."pay_merchant_notify_const" VALUES (30000, 'transfer', '转账订单变动通知', '转账订单变动通知', 't');

-- ----------------------------
-- Table structure for pay_merchant_notify_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_merchant_notify_record";
CREATE TABLE "public"."pay_merchant_notify_record" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "task_id" int8,
  "req_count" int4,
  "success" bool,
  "send_type" varchar(30) COLLATE "pg_catalog"."default",
  "error_code" varchar(50) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."task_id" IS '任务ID';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."req_count" IS '请求次数';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."success" IS '发送是否成功';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."send_type" IS '发送类型, 自动发送, 手动发送';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_merchant_notify_record"."error_msg" IS '错误信息';
COMMENT ON TABLE "public"."pay_merchant_notify_record" IS '客户订阅通知发送记录';

-- ----------------------------
-- Records of pay_merchant_notify_record
-- ----------------------------

-- ----------------------------
-- Table structure for pay_merchant_notify_task
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_merchant_notify_task";
CREATE TABLE "public"."pay_merchant_notify_task" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "trade_id" int8,
  "trade_no" varchar(32) COLLATE "pg_catalog"."default",
  "notify_type" varchar(20) COLLATE "pg_catalog"."default",
  "content" text COLLATE "pg_catalog"."default",
  "success" bool,
  "next_time" timestamp(6),
  "send_count" int4,
  "delay_count" int4,
  "latest_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."trade_id" IS '本地交易ID';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."trade_no" IS '本地交易号';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."notify_type" IS '通知类型';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."content" IS '消息内容';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."success" IS '是否发送成功';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."next_time" IS '发送次数';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."send_count" IS '延迟次数';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."delay_count" IS '下次发送时间';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."latest_time" IS '最后发送时间';
COMMENT ON COLUMN "public"."pay_merchant_notify_task"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_merchant_notify_task" IS '客户订阅通知消息任务';

-- ----------------------------
-- Records of pay_merchant_notify_task
-- ----------------------------

-- ----------------------------
-- Table structure for pay_method_const
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_method_const";
CREATE TABLE "public"."pay_method_const" (
  "id" int8 NOT NULL,
  "code" varchar(60) COLLATE "pg_catalog"."default",
  "name" varchar(80) COLLATE "pg_catalog"."default",
  "enable" bool,
  "remark" varchar(300) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_method_const"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_method_const"."code" IS '通道编码';
COMMENT ON COLUMN "public"."pay_method_const"."name" IS '通道名称';
COMMENT ON COLUMN "public"."pay_method_const"."enable" IS '是否启用';
COMMENT ON COLUMN "public"."pay_method_const"."remark" IS '备注';
COMMENT ON TABLE "public"."pay_method_const" IS '支付方式常量';

-- ----------------------------
-- Records of pay_method_const
-- ----------------------------
INSERT INTO "public"."pay_method_const" VALUES (20000, 'wap', 'wap支付', 't', NULL);
INSERT INTO "public"."pay_method_const" VALUES (30000, 'app', '应用支付', 't', NULL);
INSERT INTO "public"."pay_method_const" VALUES (40000, 'web', 'web支付', 't', NULL);
INSERT INTO "public"."pay_method_const" VALUES (50000, 'qrcode', '扫码支付', 't', NULL);
INSERT INTO "public"."pay_method_const" VALUES (60000, 'barcode', '付款码', 't', NULL);
INSERT INTO "public"."pay_method_const" VALUES (70000, 'jsapi', 'JSAPI', 't', NULL);
INSERT INTO "public"."pay_method_const" VALUES (10000, 'normal', '常规支付', 'f', NULL);

-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_order";
CREATE TABLE "public"."pay_order" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "biz_order_no" varchar(32) COLLATE "pg_catalog"."default",
  "order_no" varchar(100) COLLATE "pg_catalog"."default",
  "out_order_no" varchar(150) COLLATE "pg_catalog"."default",
  "title" varchar(100) COLLATE "pg_catalog"."default",
  "description" varchar(500) COLLATE "pg_catalog"."default",
  "allocation" bool,
  "auto_allocation" bool,
  "channel" varchar(20) COLLATE "pg_catalog"."default",
  "method" varchar(20) COLLATE "pg_catalog"."default",
  "amount" numeric(12,2),
  "refundable_balance" numeric(12,2),
  "status" varchar(32) COLLATE "pg_catalog"."default",
  "refund_status" varchar(32) COLLATE "pg_catalog"."default",
  "alloc_status" varchar(32) COLLATE "pg_catalog"."default",
  "return_url" varchar(200) COLLATE "pg_catalog"."default",
  "notify_url" varchar(200) COLLATE "pg_catalog"."default",
  "extra_param" varchar(2048) COLLATE "pg_catalog"."default",
  "attach" varchar(500) COLLATE "pg_catalog"."default",
  "req_time" timestamp(6),
  "client_ip" varchar(64) COLLATE "pg_catalog"."default",
  "error_code" varchar(50) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default",
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "expired_time" timestamp(6),
  "pay_time" timestamp(6),
  "close_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."pay_order"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_order"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_order"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_order"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_order"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_order"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_order"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_order"."biz_order_no" IS '商户订单号';
COMMENT ON COLUMN "public"."pay_order"."order_no" IS '订单号';
COMMENT ON COLUMN "public"."pay_order"."out_order_no" IS '通道订单号';
COMMENT ON COLUMN "public"."pay_order"."title" IS '标题';
COMMENT ON COLUMN "public"."pay_order"."description" IS '描述';
COMMENT ON COLUMN "public"."pay_order"."allocation" IS '是否支持分账';
COMMENT ON COLUMN "public"."pay_order"."auto_allocation" IS '自动分账';
COMMENT ON COLUMN "public"."pay_order"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_order"."method" IS '支付方式';
COMMENT ON COLUMN "public"."pay_order"."amount" IS '金额(元)';
COMMENT ON COLUMN "public"."pay_order"."refundable_balance" IS '可退金额(元)';
COMMENT ON COLUMN "public"."pay_order"."status" IS '支付状态';
COMMENT ON COLUMN "public"."pay_order"."refund_status" IS '退款状态';
COMMENT ON COLUMN "public"."pay_order"."alloc_status" IS '分账状态';
COMMENT ON COLUMN "public"."pay_order"."return_url" IS '同步跳转地址';
COMMENT ON COLUMN "public"."pay_order"."notify_url" IS '异步通知地址';
COMMENT ON COLUMN "public"."pay_order"."extra_param" IS '通道附加参数';
COMMENT ON COLUMN "public"."pay_order"."attach" IS '商户扩展参数';
COMMENT ON COLUMN "public"."pay_order"."req_time" IS '请求时间';
COMMENT ON COLUMN "public"."pay_order"."client_ip" IS '支付终端ip';
COMMENT ON COLUMN "public"."pay_order"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_order"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_order"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_order"."expired_time" IS '过期时间';
COMMENT ON COLUMN "public"."pay_order"."pay_time" IS '支付成功时间';
COMMENT ON COLUMN "public"."pay_order"."close_time" IS '关闭时间';
COMMENT ON TABLE "public"."pay_order" IS '支付订单';

-- ----------------------------
-- Records of pay_order
-- ----------------------------

-- ----------------------------
-- Table structure for pay_platform_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_platform_config";
CREATE TABLE "public"."pay_platform_config" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "gateway_service_url" varchar(300) COLLATE "pg_catalog"."default",
  "gateway_mobile_url" varchar(300) COLLATE "pg_catalog"."default",
  "gateway_pc_url" varchar(300) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_platform_config"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_platform_config"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_platform_config"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_platform_config"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_platform_config"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_platform_config"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_platform_config"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_platform_config"."gateway_service_url" IS '支付网关地址';
COMMENT ON COLUMN "public"."pay_platform_config"."gateway_mobile_url" IS '网关移动端地址';
COMMENT ON COLUMN "public"."pay_platform_config"."gateway_pc_url" IS '网关PC端地址';
COMMENT ON TABLE "public"."pay_platform_config" IS '管理平台配置';

-- ----------------------------
-- Records of pay_platform_config
-- ----------------------------
INSERT INTO "public"."pay_platform_config" VALUES (1, 1, '2024-09-20 10:54:44', 1811365615815487488, '2024-10-08 17:24:12.679758', 13, 'f', 'https://pay.daxpay.com', 'https://pay.daxpay.com/h5', 'http://pay.daxpay.com');

-- ----------------------------
-- Table structure for pay_reconcile_discrepancy
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_reconcile_discrepancy";
CREATE TABLE "public"."pay_reconcile_discrepancy" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "reconcile_id" int8,
  "reconcile_no" varchar(32) COLLATE "pg_catalog"."default",
  "reconcile_date" date,
  "channel" varchar(20) COLLATE "pg_catalog"."default",
  "discrepancy_type" varchar(20) COLLATE "pg_catalog"."default",
  "trade_no" varchar(32) COLLATE "pg_catalog"."default",
  "biz_trade_no" varchar(100) COLLATE "pg_catalog"."default",
  "trade_type" varchar(100) COLLATE "pg_catalog"."default",
  "trade_amount" numeric(13,2),
  "trade_status" varchar(32) COLLATE "pg_catalog"."default",
  "trade_time" timestamp(0),
  "channel_trade_no" varchar COLLATE "pg_catalog"."default",
  "channel_trade_type" varchar(32) COLLATE "pg_catalog"."default",
  "channel_trade_amount" numeric(13,2),
  "channel_trade_status" varchar(32) COLLATE "pg_catalog"."default",
  "channel_trade_time" timestamp(6),
  "out_trade_no" varchar(100) COLLATE "pg_catalog"."default",
  "channel_out_trade_no" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."reconcile_id" IS '对账单ID';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."reconcile_no" IS '对账号';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."reconcile_date" IS '对账日期';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."discrepancy_type" IS '差异类型';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."trade_no" IS '平台交易号';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."biz_trade_no" IS '商户订单号';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."trade_type" IS '交易类型';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."trade_amount" IS '交易金额';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."trade_status" IS '交易状态';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."trade_time" IS '交易时间';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."channel_trade_no" IS '通道交易号';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."channel_trade_type" IS '通道交易类型';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."channel_trade_amount" IS '通道交易金额';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."channel_trade_status" IS '通道交易状态';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."channel_trade_time" IS '通道交易时间';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."out_trade_no" IS '平台订单关联通道订单号';
COMMENT ON COLUMN "public"."pay_reconcile_discrepancy"."channel_out_trade_no" IS '通道关联订单号';
COMMENT ON TABLE "public"."pay_reconcile_discrepancy" IS '对账差异记录';

-- ----------------------------
-- Records of pay_reconcile_discrepancy
-- ----------------------------

-- ----------------------------
-- Table structure for pay_reconcile_statement
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_reconcile_statement";
CREATE TABLE "public"."pay_reconcile_statement" (
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "reconcile_no" varchar(32) COLLATE "pg_catalog"."default",
  "date" date,
  "channel" varchar(32) COLLATE "pg_catalog"."default",
  "down_or_upload" bool,
  "compare" bool,
  "order_count" varchar(8) COLLATE "pg_catalog"."default",
  "order_amount" numeric(13,2),
  "refund_count" varchar(8) COLLATE "pg_catalog"."default",
  "refund_amount" numeric(13,2),
  "channel_order_count" varchar(8) COLLATE "pg_catalog"."default",
  "channel_order_amount" numeric(13,2),
  "channel_refund_count" varchar(8) COLLATE "pg_catalog"."default",
  "channel_refund_amount" numeric(13,2),
  "result" varchar(32) COLLATE "pg_catalog"."default",
  "channel_file_url" varchar(500) COLLATE "pg_catalog"."default",
  "platform_file_url" varchar(500) COLLATE "pg_catalog"."default",
  "error_code" varchar(100) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default",
  "id" int8 NOT NULL
)
;
COMMENT ON COLUMN "public"."pay_reconcile_statement"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."version" IS '版本号';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."name" IS '名称';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."reconcile_no" IS '对账号';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."date" IS '日期';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."channel" IS '通道';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."down_or_upload" IS '交易对账文件是否下载或上传成功';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."compare" IS '交易对账文件是否比对完成';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."order_count" IS '支付订单数';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."order_amount" IS '支付交易金额';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."refund_count" IS '退款订单数';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."refund_amount" IS '退款交易金额';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."channel_order_count" IS '通道支付订单数';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."channel_order_amount" IS '通道支付交易金额';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."channel_refund_count" IS '通道退款订单数';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."channel_refund_amount" IS '通道退款交易金额';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."result" IS '交易对账结果';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."channel_file_url" IS '原始通道对账单文件url';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."platform_file_url" IS '生成平台对账单文件url';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_reconcile_statement"."id" IS '主键';
COMMENT ON TABLE "public"."pay_reconcile_statement" IS '对账报告';

-- ----------------------------
-- Records of pay_reconcile_statement
-- ----------------------------

-- ----------------------------
-- Table structure for pay_refund_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_refund_order";
CREATE TABLE "public"."pay_refund_order" (
  "id" int8 NOT NULL,
  "order_id" int8 NOT NULL,
  "order_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "biz_order_no" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "out_order_no" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "refund_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "biz_refund_no" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "out_refund_no" varchar(150) COLLATE "pg_catalog"."default",
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "order_amount" numeric(32,2) NOT NULL,
  "amount" numeric(32,2) NOT NULL,
  "reason" varchar(150) COLLATE "pg_catalog"."default",
  "finish_time" timestamp(6),
  "status" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "notify_url" varchar(200) COLLATE "pg_catalog"."default",
  "attach" varchar(500) COLLATE "pg_catalog"."default",
  "extra_param" varchar(2048) COLLATE "pg_catalog"."default",
  "req_time" timestamp(6),
  "client_ip" varchar(64) COLLATE "pg_catalog"."default",
  "error_code" varchar(10) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_refund_order"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_refund_order"."order_id" IS '支付订单ID';
COMMENT ON COLUMN "public"."pay_refund_order"."order_no" IS '支付订单号';
COMMENT ON COLUMN "public"."pay_refund_order"."biz_order_no" IS '商户支付订单号';
COMMENT ON COLUMN "public"."pay_refund_order"."out_order_no" IS '通道支付订单号';
COMMENT ON COLUMN "public"."pay_refund_order"."title" IS '支付标题';
COMMENT ON COLUMN "public"."pay_refund_order"."refund_no" IS '退款号';
COMMENT ON COLUMN "public"."pay_refund_order"."biz_refund_no" IS '商户退款号';
COMMENT ON COLUMN "public"."pay_refund_order"."out_refund_no" IS '通道退款交易号';
COMMENT ON COLUMN "public"."pay_refund_order"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_refund_order"."order_amount" IS '订单金额';
COMMENT ON COLUMN "public"."pay_refund_order"."amount" IS '退款金额';
COMMENT ON COLUMN "public"."pay_refund_order"."reason" IS '退款原因';
COMMENT ON COLUMN "public"."pay_refund_order"."finish_time" IS '退款完成时间';
COMMENT ON COLUMN "public"."pay_refund_order"."status" IS '退款状态';
COMMENT ON COLUMN "public"."pay_refund_order"."notify_url" IS '异步通知地址';
COMMENT ON COLUMN "public"."pay_refund_order"."attach" IS '商户扩展参数';
COMMENT ON COLUMN "public"."pay_refund_order"."extra_param" IS '附加参数';
COMMENT ON COLUMN "public"."pay_refund_order"."req_time" IS '请求时间，传输时间戳';
COMMENT ON COLUMN "public"."pay_refund_order"."client_ip" IS '支付终端ip';
COMMENT ON COLUMN "public"."pay_refund_order"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_refund_order"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_refund_order"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_refund_order"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_refund_order"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_refund_order"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_refund_order"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_refund_order"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_refund_order"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_refund_order" IS '退款订单';

-- ----------------------------
-- Records of pay_refund_order
-- ----------------------------

-- ----------------------------
-- Table structure for pay_trade_callback_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_trade_callback_record";
CREATE TABLE "public"."pay_trade_callback_record" (
  "id" int8 NOT NULL,
  "trade_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "out_trade_no" varchar(150) COLLATE "pg_catalog"."default",
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "callback_type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "notify_info" text COLLATE "pg_catalog"."default" NOT NULL,
  "status" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "error_code" varchar(10) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_trade_callback_record"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."trade_no" IS '本地交易号';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."out_trade_no" IS '通道交易号';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."callback_type" IS '回调类型';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."notify_info" IS '通知消息';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."status" IS '回调处理状态';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_trade_callback_record"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_trade_callback_record" IS '网关回调通知';

-- ----------------------------
-- Records of pay_trade_callback_record
-- ----------------------------

-- ----------------------------
-- Table structure for pay_trade_flow_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_trade_flow_record";
CREATE TABLE "public"."pay_trade_flow_record" (
  "id" int8 NOT NULL,
  "title" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "amount" numeric(12,2) NOT NULL,
  "type" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "trade_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "biz_trade_no" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "out_trade_no" varchar(150) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_trade_flow_record"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."title" IS '标题';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."amount" IS '金额';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."type" IS '业务类型';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."trade_no" IS '本地交易号';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."biz_trade_no" IS '商户交易号';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."out_trade_no" IS '通道交易号';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_trade_flow_record"."app_id" IS '应用号';
COMMENT ON TABLE "public"."pay_trade_flow_record" IS '资金流水记录';

-- ----------------------------
-- Records of pay_trade_flow_record
-- ----------------------------

-- ----------------------------
-- Table structure for pay_trade_sync_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_trade_sync_record";
CREATE TABLE "public"."pay_trade_sync_record" (
  "id" int8 NOT NULL,
  "creator" int8,
  "create_time" timestamp(6),
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "trade_no" varchar(32) COLLATE "pg_catalog"."default",
  "biz_trade_no" varchar(100) COLLATE "pg_catalog"."default",
  "out_trade_no" varchar(150) COLLATE "pg_catalog"."default",
  "out_trade_status" varchar(32) COLLATE "pg_catalog"."default",
  "trade_type" varchar(32) COLLATE "pg_catalog"."default",
  "channel" varchar(32) COLLATE "pg_catalog"."default",
  "sync_info" text COLLATE "pg_catalog"."default",
  "adjust" bool NOT NULL,
  "error_code" varchar(50) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default",
  "client_ip" varchar(64) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_trade_sync_record"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."trade_no" IS '本地交易号';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."biz_trade_no" IS '商户交易号';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."out_trade_no" IS '通道交易号';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."out_trade_status" IS '通道返回的状态';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."trade_type" IS '同步类型';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."channel" IS '同步通道';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."sync_info" IS '网关返回的同步消息';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."adjust" IS '是否进行调整';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_trade_sync_record"."client_ip" IS '终端ip';
COMMENT ON TABLE "public"."pay_trade_sync_record" IS '交易同步记录';

-- ----------------------------
-- Records of pay_trade_sync_record
-- ----------------------------

-- ----------------------------
-- Table structure for pay_transfer_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."pay_transfer_order";
CREATE TABLE "public"."pay_transfer_order" (
  "id" int8 NOT NULL,
  "biz_transfer_no" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "transfer_no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "out_transfer_no" varchar(150) COLLATE "pg_catalog"."default",
  "channel" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "amount" numeric(32,2) NOT NULL,
  "title" varchar(100) COLLATE "pg_catalog"."default",
  "reason" varchar(150) COLLATE "pg_catalog"."default",
  "payee_type" varchar(20) COLLATE "pg_catalog"."default",
  "payee_account" varchar(100) COLLATE "pg_catalog"."default",
  "payee_name" varchar(50) COLLATE "pg_catalog"."default",
  "status" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "finish_time" timestamp(6),
  "notify_url" varchar(200) COLLATE "pg_catalog"."default",
  "attach" varchar(500) COLLATE "pg_catalog"."default",
  "req_time" timestamp(6),
  "client_ip" varchar(64) COLLATE "pg_catalog"."default",
  "error_code" varchar(10) COLLATE "pg_catalog"."default",
  "error_msg" varchar(500) COLLATE "pg_catalog"."default",
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL,
  "deleted" bool NOT NULL,
  "app_id" varchar(32) COLLATE "pg_catalog"."default",
  "extra_param" varchar(2048) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."pay_transfer_order"."id" IS '主键';
COMMENT ON COLUMN "public"."pay_transfer_order"."biz_transfer_no" IS '商户转账号';
COMMENT ON COLUMN "public"."pay_transfer_order"."transfer_no" IS '转账号';
COMMENT ON COLUMN "public"."pay_transfer_order"."out_transfer_no" IS '通道转账号';
COMMENT ON COLUMN "public"."pay_transfer_order"."channel" IS '支付通道';
COMMENT ON COLUMN "public"."pay_transfer_order"."amount" IS '转账金额';
COMMENT ON COLUMN "public"."pay_transfer_order"."title" IS '标题';
COMMENT ON COLUMN "public"."pay_transfer_order"."reason" IS '转账原因/备注';
COMMENT ON COLUMN "public"."pay_transfer_order"."payee_type" IS '收款人类型';
COMMENT ON COLUMN "public"."pay_transfer_order"."payee_account" IS '收款人账号';
COMMENT ON COLUMN "public"."pay_transfer_order"."payee_name" IS '收款人姓名';
COMMENT ON COLUMN "public"."pay_transfer_order"."status" IS '状态';
COMMENT ON COLUMN "public"."pay_transfer_order"."finish_time" IS '成功时间';
COMMENT ON COLUMN "public"."pay_transfer_order"."notify_url" IS '异步通知地址';
COMMENT ON COLUMN "public"."pay_transfer_order"."attach" IS '商户扩展参数';
COMMENT ON COLUMN "public"."pay_transfer_order"."req_time" IS '请求时间，传输时间戳';
COMMENT ON COLUMN "public"."pay_transfer_order"."client_ip" IS '支付终端ip';
COMMENT ON COLUMN "public"."pay_transfer_order"."error_code" IS '错误码';
COMMENT ON COLUMN "public"."pay_transfer_order"."error_msg" IS '错误信息';
COMMENT ON COLUMN "public"."pay_transfer_order"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."pay_transfer_order"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."pay_transfer_order"."last_modifier" IS '最后修者ID';
COMMENT ON COLUMN "public"."pay_transfer_order"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."pay_transfer_order"."version" IS '乐观锁';
COMMENT ON COLUMN "public"."pay_transfer_order"."deleted" IS '删除标志';
COMMENT ON COLUMN "public"."pay_transfer_order"."app_id" IS '应用号';
COMMENT ON COLUMN "public"."pay_transfer_order"."extra_param" IS '通道附加参数';
COMMENT ON TABLE "public"."pay_transfer_order" IS '转账订单';

-- ----------------------------
-- Records of pay_transfer_order
-- ----------------------------

-- ----------------------------
-- Table structure for starter_audit_login_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."starter_audit_login_log";
CREATE TABLE "public"."starter_audit_login_log" (
  "id" int8 NOT NULL,
  "user_id" int8,
  "account" varchar(100) COLLATE "pg_catalog"."default",
  "login" bool,
  "client" varchar(20) COLLATE "pg_catalog"."default",
  "login_type" varchar(20) COLLATE "pg_catalog"."default",
  "ip" varchar(80) COLLATE "pg_catalog"."default",
  "login_location" varchar(100) COLLATE "pg_catalog"."default",
  "browser" varchar(200) COLLATE "pg_catalog"."default",
  "os" varchar(100) COLLATE "pg_catalog"."default",
  "msg" text COLLATE "pg_catalog"."default",
  "login_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."starter_audit_login_log"."id" IS '主键';
COMMENT ON COLUMN "public"."starter_audit_login_log"."user_id" IS '用户账号ID';
COMMENT ON COLUMN "public"."starter_audit_login_log"."account" IS '用户名称';
COMMENT ON COLUMN "public"."starter_audit_login_log"."login" IS '登录成功状态';
COMMENT ON COLUMN "public"."starter_audit_login_log"."client" IS '登录终端';
COMMENT ON COLUMN "public"."starter_audit_login_log"."login_type" IS '登录方式';
COMMENT ON COLUMN "public"."starter_audit_login_log"."ip" IS '登录IP地址';
COMMENT ON COLUMN "public"."starter_audit_login_log"."login_location" IS '登录地点';
COMMENT ON COLUMN "public"."starter_audit_login_log"."browser" IS '浏览器类型';
COMMENT ON COLUMN "public"."starter_audit_login_log"."os" IS '操作系统';
COMMENT ON COLUMN "public"."starter_audit_login_log"."msg" IS '提示消息';
COMMENT ON COLUMN "public"."starter_audit_login_log"."login_time" IS '访问时间';
COMMENT ON TABLE "public"."starter_audit_login_log" IS '登录日志';

-- ----------------------------
-- Records of starter_audit_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for starter_audit_operate_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."starter_audit_operate_log";
CREATE TABLE "public"."starter_audit_operate_log" (
  "id" int8 NOT NULL,
  "title" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "operate_id" int8,
  "account" varchar(100) COLLATE "pg_catalog"."default",
  "business_type" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "method" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "request_method" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "operate_url" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "operate_ip" varchar(80) COLLATE "pg_catalog"."default",
  "operate_location" varchar(50) COLLATE "pg_catalog"."default",
  "operate_param" text COLLATE "pg_catalog"."default",
  "operate_return" text COLLATE "pg_catalog"."default",
  "success" bool,
  "error_msg" text COLLATE "pg_catalog"."default",
  "operate_time" timestamp(6) NOT NULL
)
;
COMMENT ON COLUMN "public"."starter_audit_operate_log"."id" IS '主键';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."title" IS '操作模块';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."operate_id" IS '操作人员id';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."account" IS '操作人员账号';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."business_type" IS '业务类型';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."method" IS '请求方法';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."operate_url" IS '请求url';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."operate_ip" IS '操作ip';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."operate_location" IS '操作地点';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."operate_param" IS '请求参数';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."operate_return" IS '返回参数';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."success" IS '操作状态';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "public"."starter_audit_operate_log"."operate_time" IS '操作时间';
COMMENT ON TABLE "public"."starter_audit_operate_log" IS '操作日志';

-- ----------------------------
-- Records of starter_audit_operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for starter_file_platform
-- ----------------------------
DROP TABLE IF EXISTS "public"."starter_file_platform";
CREATE TABLE "public"."starter_file_platform" (
  "id" int8 NOT NULL,
  "type" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(200) COLLATE "pg_catalog"."default",
  "url" varchar(255) COLLATE "pg_catalog"."default",
  "default_platform" bool,
  "creator" int8,
  "create_time" timestamp(6),
  "last_modifier" int8,
  "last_modified_time" timestamp(6),
  "version" int4 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "public"."starter_file_platform"."id" IS '文件id';
COMMENT ON COLUMN "public"."starter_file_platform"."type" IS '平台类型';
COMMENT ON COLUMN "public"."starter_file_platform"."name" IS '名称';
COMMENT ON COLUMN "public"."starter_file_platform"."url" IS '访问地址';
COMMENT ON COLUMN "public"."starter_file_platform"."default_platform" IS '默认存储平台';
COMMENT ON COLUMN "public"."starter_file_platform"."creator" IS '创建者ID';
COMMENT ON COLUMN "public"."starter_file_platform"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."starter_file_platform"."last_modifier" IS '最后修改ID';
COMMENT ON COLUMN "public"."starter_file_platform"."last_modified_time" IS '最后修改时间';
COMMENT ON COLUMN "public"."starter_file_platform"."version" IS '版本号';
COMMENT ON TABLE "public"."starter_file_platform" IS '文件存储平台';

-- ----------------------------
-- Records of starter_file_platform
-- ----------------------------
INSERT INTO "public"."starter_file_platform" VALUES (1000, 'local', '本地存储', 'http://127.0.0.1:9999', 'f', 1811365615815487488, '2024-08-13 12:32:37', 1811365615815487488, '2024-10-06 17:17:39.422003', 0);
INSERT INTO "public"."starter_file_platform" VALUES (2000, 'minio', 'minio存储', 'http://127.0.0.1:9002/daxpay', 't', 1811365615815487488, '2024-08-13 12:32:40', 1811365615815487488, '2024-10-06 17:17:39.428101', 3);

-- ----------------------------
-- Table structure for starter_file_upload_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."starter_file_upload_info";
CREATE TABLE "public"."starter_file_upload_info" (
  "id" int8 NOT NULL,
  "url" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "size" int8,
  "filename" varchar(256) COLLATE "pg_catalog"."default",
  "original_filename" varchar(256) COLLATE "pg_catalog"."default",
  "base_path" varchar(256) COLLATE "pg_catalog"."default",
  "path" varchar(256) COLLATE "pg_catalog"."default",
  "ext" varchar(32) COLLATE "pg_catalog"."default",
  "content_type" varchar(128) COLLATE "pg_catalog"."default",
  "platform" varchar(32) COLLATE "pg_catalog"."default",
  "th_url" varchar(512) COLLATE "pg_catalog"."default",
  "th_filename" varchar(256) COLLATE "pg_catalog"."default",
  "th_size" int8,
  "th_content_type" varchar(128) COLLATE "pg_catalog"."default",
  "object_id" varchar(32) COLLATE "pg_catalog"."default",
  "object_type" varchar(32) COLLATE "pg_catalog"."default",
  "metadata" text COLLATE "pg_catalog"."default",
  "user_metadata" text COLLATE "pg_catalog"."default",
  "th_metadata" text COLLATE "pg_catalog"."default",
  "th_user_metadata" text COLLATE "pg_catalog"."default",
  "attr" text COLLATE "pg_catalog"."default",
  "file_acl" varchar(32) COLLATE "pg_catalog"."default",
  "th_file_acl" varchar(32) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "public"."starter_file_upload_info"."id" IS '文件id';
COMMENT ON COLUMN "public"."starter_file_upload_info"."url" IS '文件访问地址';
COMMENT ON COLUMN "public"."starter_file_upload_info"."size" IS '文件大小，单位字节';
COMMENT ON COLUMN "public"."starter_file_upload_info"."filename" IS '文件名称';
COMMENT ON COLUMN "public"."starter_file_upload_info"."original_filename" IS '原始文件名';
COMMENT ON COLUMN "public"."starter_file_upload_info"."base_path" IS '基础存储路径';
COMMENT ON COLUMN "public"."starter_file_upload_info"."path" IS '存储路径';
COMMENT ON COLUMN "public"."starter_file_upload_info"."ext" IS '文件扩展名';
COMMENT ON COLUMN "public"."starter_file_upload_info"."content_type" IS 'MIME类型';
COMMENT ON COLUMN "public"."starter_file_upload_info"."platform" IS '存储平台';
COMMENT ON COLUMN "public"."starter_file_upload_info"."th_url" IS '缩略图访问路径';
COMMENT ON COLUMN "public"."starter_file_upload_info"."th_filename" IS '缩略图名称';
COMMENT ON COLUMN "public"."starter_file_upload_info"."th_size" IS '缩略图大小，单位字节';
COMMENT ON COLUMN "public"."starter_file_upload_info"."th_content_type" IS '缩略图MIME类型';
COMMENT ON COLUMN "public"."starter_file_upload_info"."object_id" IS '文件所属对象id';
COMMENT ON COLUMN "public"."starter_file_upload_info"."object_type" IS '文件所属对象类型，例如用户头像，评价图片';
COMMENT ON COLUMN "public"."starter_file_upload_info"."metadata" IS '文件元数据';
COMMENT ON COLUMN "public"."starter_file_upload_info"."user_metadata" IS '文件用户元数据';
COMMENT ON COLUMN "public"."starter_file_upload_info"."th_metadata" IS '缩略图元数据';
COMMENT ON COLUMN "public"."starter_file_upload_info"."th_user_metadata" IS '缩略图用户元数据';
COMMENT ON COLUMN "public"."starter_file_upload_info"."attr" IS '附加属性';
COMMENT ON COLUMN "public"."starter_file_upload_info"."file_acl" IS '文件ACL';
COMMENT ON COLUMN "public"."starter_file_upload_info"."th_file_acl" IS '缩略图文件ACL';
COMMENT ON COLUMN "public"."starter_file_upload_info"."create_time" IS '创建时间';
COMMENT ON TABLE "public"."starter_file_upload_info" IS '文件记录表';

-- ----------------------------
-- Records of starter_file_upload_info
-- ----------------------------
INSERT INTO "public"."starter_file_upload_info" VALUES (1821097013954715648, '/file/66b32c610d41ab408c70e774.png', 216374, '66b32c610d41ab408c70e774.png', '微信截图_20240514205633.png', '/file/', '', 'png', 'image/png', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-07 08:12:17.079');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822969544408014848, 'file/66b9fc4fa1fa0bba28d38189.png', 321611, '66b9fc4fa1fa0bba28d38189.png', '微信截图_20240514202144.png', 'file/', '', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:13:03.035');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822969908121280512, 'file/aaa/66b9fca5a1fa0bba28d3818a.png', 321611, '66b9fca5a1fa0bba28d3818a.png', '微信截图_20240514202144.png', 'file/', 'aaa/', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:14:29.892');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971444570333184, 'file/2024/08/1266b9fe14a1fa0bba28d3818b.png', 321611, '66b9fe14a1fa0bba28d3818b.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:36.211');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971456683483136, 'file/2024/08/1266b9fe17a1fa0bba28d3818c.png', 321611, '66b9fe17a1fa0bba28d3818c.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:39.098');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971459174899712, 'file/2024/08/1266b9fe17a1fa0bba28d3818d.png', 321611, '66b9fe17a1fa0bba28d3818d.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:39.693');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971462438068224, 'file/2024/08/1266b9fe18a1fa0bba28d3818e.png', 321611, '66b9fe18a1fa0bba28d3818e.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:40.471');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971464799461376, 'file/2024/08/1266b9fe19a1fa0bba28d3818f.png', 321611, '66b9fe19a1fa0bba28d3818f.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:41.034');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971465835454464, 'file/2024/08/1266b9fe19a1fa0bba28d38190.png', 321611, '66b9fe19a1fa0bba28d38190.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:41.28');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971466686898176, 'file/2024/08/1266b9fe19a1fa0bba28d38191.png', 321611, '66b9fe19a1fa0bba28d38191.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:41.484');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971467467038720, 'file/2024/08/1266b9fe19a1fa0bba28d38192.png', 321611, '66b9fe19a1fa0bba28d38192.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:20:41.671');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971667761831936, 'file/2024/08/1266b9fe49a1fa0bba28d38193.png', 321611, '66b9fe49a1fa0bba28d38193.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:21:29.424');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822971796644405248, 'file/2024/08/1266b9fe68a1fa0bba28d38194.png', 321611, '66b9fe68a1fa0bba28d38194.png', '微信截图_20240514202144.png', 'file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:22:00.149');
INSERT INTO "public"."starter_file_upload_info" VALUES (1822976328996659200, '/file/2024/08/1266ba02a0a1faf26c0c033991.png', 216374, '66ba02a0a1faf26c0c033991.png', '微信截图_20240514205633.png', '/file/', '2024/08/12', 'png', 'image/png', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 12:40:00.707');
INSERT INTO "public"."starter_file_upload_info" VALUES (1823203227169546240, '/file//2024/08/13/66bad5f061236ef74fc35d2f.png', 822076, '66bad5f061236ef74fc35d2f.png', '微信截图_20240514202014.png', '/file/', '/2024/08/13/', 'png', 'image/png', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-13 03:41:36.828');
INSERT INTO "public"."starter_file_upload_info" VALUES (1823204644156456960, '/file/2024/08/13/66bad7426123c55acd645891.png', 209410, '66bad7426123c55acd645891.png', 'QQ图片20240531181517.png', '/file/', '2024/08/13/', 'png', 'image/png', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-13 03:47:14.767');
INSERT INTO "public"."starter_file_upload_info" VALUES (1823210440613294080, '/file/2024/08/13/66badca8612381f3dab8b659.sql', 484222, '66badca8612381f3dab8b659.sql', 'dax-pay.sql', '/file/', '2024/08/13/', 'sql', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-13 04:10:16.775');
INSERT INTO "public"."starter_file_upload_info" VALUES (1824779093602971648, '/file/2024/08/17/66c09194fb5fa7f335dbd1e7.jpg', 107464, '66c09194fb5fa7f335dbd1e7.jpg', '微信图片_20220522132928.jpg', '/file/', '2024/08/17/', 'jpg', 'image/jpeg', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 12:03:32.838');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825718211879563264, '/file/66c3fc341f35f424dba37510.csv', 775, '66c3fc341f35f424dba37510.csv', '交易对账单-支付宝-20240818.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 02:15:16.078');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825718295480430592, '/file/66c3fc481f35f424dba37511.csv', 775, '66c3fc481f35f424dba37511.csv', '交易对账单-支付宝-20240818.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 02:15:36.48');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825720111223992320, '/file/66c3fdf91f35f424dba37512.csv', 775, '66c3fdf91f35f424dba37512.csv', '交易对账单-支付宝-20240818.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 02:22:49.392');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825753217356218368, '/file/2024/08/20/66c41cce1f352f391eadba3e.xlsx', 9614, '66c41cce1f352f391eadba3e.xlsx', '消息订阅.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 04:34:22.055');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825753283894657024, '/file/2024/08/20/66c41cde1f352f391eadba3f.xlsx', 9614, '66c41cde1f352f391eadba3f.xlsx', '消息订阅.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 04:34:38.355');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825793692494667776, '/file/2024/08/20/66c442801f35438ca96741b3.xlsx', 9627, '66c442801f35438ca96741b3.xlsx', '消息订阅.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 07:15:12.039');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825795353548103680, '/file/2024/08/20/66c4440c1f35438ca96741b4.png', 56704, '66c4440c1f35438ca96741b4.png', 'DD94AFCB-E1EA-403a-A5BB-606CF977034C.png', '/file/', '2024/08/20/', 'png', 'image/png', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 07:21:48.536');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825795565142351872, '/file/2024/08/20/66c4443e1f35438ca96741b5.png', 56704, '66c4443e1f35438ca96741b5.png', 'DD94AFCB-E1EA-403a-A5BB-606CF977034C.png', '/file/', '2024/08/20/', 'png', 'image/png', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 07:22:38.992');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825795861373460480, '/file/2024/08/20/66c444851f35438ca96741b6.png', 56704, '66c444851f35438ca96741b6.png', 'DD94AFCB-E1EA-403a-A5BB-606CF977034C.png', '/file/', '2024/08/20/', 'png', 'image/png', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 07:23:49.53');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825796076641959936, '/file/2024/08/20/66c444b21f35453b8057d0fb.png', 56704, '66c444b21f35453b8057d0fb.png', 'DD94AFCB-E1EA-403a-A5BB-606CF977034C.png', '/file/', '2024/08/20/', 'png', 'image/png', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 07:24:18.784');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825799359162990592, '/file/2024/08/20/66c447c71f35453b8057d0fc.xlsx', 9614, '66c447c71f35453b8057d0fc.xlsx', '消息订阅.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 15:37:43.593469');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825799570165841920, '/file/66c447f91f35453b8057d0fd.csv', 775, '66c447f91f35453b8057d0fd.csv', '交易对账单-支付宝-20240816.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 15:38:33.899827');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825799577078054912, '/file/2024/08/20/66c447fb1f35453b8057d0fe.xlsx', 9614, '66c447fb1f35453b8057d0fe.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 15:38:35.546999');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825799590139117568, '/file/66c447fe1f35453b8057d0ff.csv', 1189, '66c447fe1f35453b8057d0ff.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 15:38:38.662392');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825799613258121216, '/file/2024/08/20/66c448041f35453b8057d100.xlsx', 9614, '66c448041f35453b8057d100.xlsx', '消息订阅.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 15:38:44.173717');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825808183974379520, '/file/2024/08/20/66c44ffc1f35fa1c978ea54c.xlsx', 9613, '66c44ffc1f35fa1c978ea54c.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 16:12:47.587103');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825808183991156736, '/file/2024/08/20/66c44ffc1f35fa1c978ea54d.xlsx', 9612, '66c44ffc1f35fa1c978ea54d.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 16:12:47.588101');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825808257634746368, '/file/2024/08/20/66c450111f35fa1c978ea54e.xlsx', 9613, '66c450111f35fa1c978ea54e.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 16:13:05.154672');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826528037253439488, '/file/66c6ee69c76387d97684a0d3.csv', 4873, '66c6ee69c76387d97684a0d3.csv', '交易对账单-微信-20240821.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 15:53:13.985807');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825808277838708736, '/file/2024/08/20/66c450151f35fa1c978ea54f.xlsx', 9613, '66c450151f35fa1c978ea54f.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 16:13:09.971531');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825813275939119104, '/file/66c454bd1f35808c73fcb4f9.csv', 775, '66c454bd1f35808c73fcb4f9.csv', '交易对账单-支付宝-20240816.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 16:33:01.603346');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825816007903223808, '/file/66c457481f35808c73fcb4fa.csv', 1189, '66c457481f35808c73fcb4fa.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 16:43:52.960613');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825820562539880448, '/file/66c45b861f35808c73fcb4fb.csv', 1189, '66c45b861f35808c73fcb4fb.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:01:58.872311');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825820967122440192, '/file/66c45be61f3570ed83b5deda.csv', 1189, '66c45be61f3570ed83b5deda.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:03:35.323328');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825821293732888576, '/file/66c45c341f35156de355269c.csv', 1189, '66c45c341f35156de355269c.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:04:53.19356');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825821723045068800, '/file/66c45c9b1f35156de355269d.csv', 1189, '66c45c9b1f35156de355269d.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:06:35.557476');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825821752279367680, '/file/2024/08/20/66c45ca21f35156de355269e.xlsx', 9786, '66c45ca21f35156de355269e.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:06:42.527505');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825830633537777664, '/file/2024/08/20/66c464e71f35b610eeff97b1.xlsx', 9795, '66c464e71f35b610eeff97b1.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:41:59.981496');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825831496863911936, '/file/66c465b51f3576080962d6c3.csv', 1189, '66c465b51f3576080962d6c3.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:45:25.809379');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825834316396695552, '/file/2024/08/20/66c468551f3576080962d6c4.xlsx', 9796, '66c468551f3576080962d6c4.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:56:38.046761');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825834800268382208, '/file/2024/08/20/66c468c91f3576080962d6c5.xlsx', 9796, '66c468c91f3576080962d6c5.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:58:33.411027');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825835210064465920, '/file/2024/08/20/66c4692a1f3576080962d6c6.xlsx', 9795, '66c4692a1f3576080962d6c6.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 18:00:11.113848');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825843546990252032, '/file/66c470ee1f3576080962d6c7.csv', 1189, '66c470ee1f3576080962d6c7.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 18:33:18.791522');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825844129692323840, '/file/2024/08/20/66c471791f3576080962d6c8.xlsx', 9811, '66c471791f3576080962d6c8.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 18:35:37.719031');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825844629024182272, '/file/66c471f01f35aed981cc6a59.csv', 1189, '66c471f01f35aed981cc6a59.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 18:37:36.758077');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825844842937880576, '/file/2024/08/20/66c472231f35aed981cc6a5a.xlsx', 9819, '66c472231f35aed981cc6a5a.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 18:38:27.770051');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825847210479955968, '/file/66c474571f357b60c1a2b78a.csv', 1189, '66c474571f357b60c1a2b78a.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 18:47:52.223284');
INSERT INTO "public"."starter_file_upload_info" VALUES (1825847359704903680, '/file/2024/08/20/66c4747b1f357b60c1a2b78b.xlsx', 9840, '66c4747b1f357b60c1a2b78b.xlsx', '测试对账.xlsx', '/file/', '2024/08/20/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 18:48:27.813444');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826097618230136832, '/file/66c55d8d0d41b292dd16e301.csv', 1189, '66c55d8d0d41b292dd16e301.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 11:22:54.093713');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826097630125182976, '/file/2024/08/21/66c55d900d41b292dd16e302.xlsx', 9823, '66c55d900d41b292dd16e302.xlsx', '测试对账.xlsx', '/file/', '2024/08/21/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 11:22:56.932144');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826104071162494976, '/file/66c563900d413c77079c09f3.csv', 1189, '66c563900d413c77079c09f3.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 11:48:32.583252');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826104244588576768, '/file/2024/08/21/66c563b90d413c77079c09f4.xlsx', 9823, '66c563b90d413c77079c09f4.xlsx', '外部交易明细.xlsx', '/file/', '2024/08/21/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 11:49:13.942925');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826108050550398976, '/file/66c567440d41d39e503adbf7.csv', 1189, '66c567440d41d39e503adbf7.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 12:04:21.352012');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826108060998410240, '/file/2024/08/21/66c567470d41d39e503adbf8.xlsx', 9823, '66c567470d41d39e503adbf8.xlsx', '外部交易明细.xlsx', '/file/', '2024/08/21/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 12:04:23.846222');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826144377513820160, '/file/66c589190d41534805a9a0c5.csv', 1189, '66c589190d41534805a9a0c5.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 14:28:42.375373');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826144389043961856, '/file/2024/08/21/66c5891d0d41534805a9a0c6.xlsx', 9819, '66c5891d0d41534805a9a0c6.xlsx', '测试对账.xlsx', '/file/', '2024/08/21/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 14:28:45.126552');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826454887404781568, '/file/66c6aa49c763a99769caae79.xlsx', 2564, '66c6aa49c763a99769caae79.xlsx', '交易对账单-微信-20240820.xlsx', '/file/', '', 'xlsx', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:02:33.686962');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826454907948482560, '/file/2024/08/22/66c6aa4ec763a99769caae7a.xlsx', 9620, '66c6aa4ec763a99769caae7a.xlsx', '测试对账.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:02:38.603264');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826455432215511040, '/file/66c6aacbc763a99769caae7b.xlsx', 2564, '66c6aacbc763a99769caae7b.xlsx', '交易对账单-微信-20240820.xlsx', '/file/', '', 'xlsx', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:04:43.594394');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826455601317265408, '/file/66c6aaf3c763a99769caae7c.xlsx', 4873, '66c6aaf3c763a99769caae7c.xlsx', '交易对账单-微信-20240821.xlsx', '/file/', '', 'xlsx', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:05:23.911901');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826455623035371520, '/file/2024/08/22/66c6aaf8c763a99769caae7d.xlsx', 9619, '66c6aaf8c763a99769caae7d.xlsx', '测试对账.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:05:29.093238');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826455963705131008, '/file/66c6ab4ac763a99769caae7e.xlsx', 2564, '66c6ab4ac763a99769caae7e.xlsx', '交易对账单-微信-20240820.xlsx', '/file/', '', 'xlsx', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:06:50.312192');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826456479956758528, '/file/66c6abc4c7633375f8725b9b.xlsx', 4873, '66c6abc4c7633375f8725b9b.xlsx', '交易对账单-微信-20240821.xlsx', '/file/', '', 'xlsx', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:08:53.391935');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826456537934622720, '/file/2024/08/22/66c6abd3c7633375f8725b9c.xlsx', 10486, '66c6abd3c7633375f8725b9c.xlsx', '测试对账.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 11:09:07.222795');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826528050088009728, '/file/2024/08/22/66c6ee6dc76387d97684a0d4.xlsx', 10587, '66c6ee6dc76387d97684a0d4.xlsx', '订阅消息.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 15:53:17.048532');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826532233684037632, '/file/66c6f252c76353f70eacf1de.csv', 4873, '66c6f252c76353f70eacf1de.csv', '交易对账单-微信-20240821.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 16:09:54.492768');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826532244555673600, '/file/2024/08/22/66c6f254c76353f70eacf1df.xlsx', 10587, '66c6f254c76353f70eacf1df.xlsx', '外部交易明细.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 16:09:57.086142');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826534025192910848, '/file/66c6f3fdc76353f70eacf1e0.csv', 4873, '66c6f3fdc76353f70eacf1e0.csv', '交易对账单-微信-20240821.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 16:17:01.624309');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826534549581574144, '/file/66c6f47ac76353f70eacf1e1.csv', 4873, '66c6f47ac76353f70eacf1e1.csv', '交易对账单-微信-20240821.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 16:19:06.648517');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826535790386720768, '/file/66c6f5a2c76353f70eacf1e2.csv', 4873, '66c6f5a2c76353f70eacf1e2.csv', '交易对账单-微信-20240821.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 16:24:02.478931');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826535798624333824, '/file/2024/08/22/66c6f5a4c76353f70eacf1e3.xlsx', 10599, '66c6f5a4c76353f70eacf1e3.xlsx', '测试对账.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 16:24:04.442922');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826547489412079616, '/file/66c70087c763e807cbf7de4c.csv', 641, '66c70087c763e807cbf7de4c.csv', '交易对账单-支付宝-20240821.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 17:10:31.742535');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826547501512646656, '/file/2024/08/22/66c7008ac763e807cbf7de4d.xlsx', 9769, '66c7008ac763e807cbf7de4d.xlsx', '外部交易明细.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 17:10:34.629401');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826548693462540288, '/file/66c701a6c763e807cbf7de4e.csv', 4873, '66c701a6c763e807cbf7de4e.csv', '交易对账单-微信-20240821.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 17:15:18.81236');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826548700915818496, '/file/2024/08/22/66c701a8c763e807cbf7de4f.xlsx', 10859, '66c701a8c763e807cbf7de4f.xlsx', '测试对账.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 17:15:20.589063');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826550241479413760, '/file/66c70317c763d39942d0f55c.csv', 1189, '66c70317c763d39942d0f55c.csv', '交易对账单-支付宝-20240819.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 17:21:27.886652');
INSERT INTO "public"."starter_file_upload_info" VALUES (1826550253630312448, '/file/2024/08/22/66c7031ac763d39942d0f55d.xlsx', 9951, '66c7031ac763d39942d0f55d.xlsx', '测试对账.xlsx', '/file/', '2024/08/22/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 17:21:30.785225');
INSERT INTO "public"."starter_file_upload_info" VALUES (1829092824449552384, '/file/66d0430e2725ea0e6dd63e99.csv', 975, '66d0430e2725ea0e6dd63e99.csv', '交易对账单-支付宝-20240825.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-29 17:44:46.899974');
INSERT INTO "public"."starter_file_upload_info" VALUES (1829092838819237888, '/file/2024/08/29/66d043122725ea0e6dd63e9a.xlsx', 9879, '66d043122725ea0e6dd63e9a.xlsx', '分账单.xlsx', '/file/', '2024/08/29/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-29 17:44:50.332586');
INSERT INTO "public"."starter_file_upload_info" VALUES (1829376511166722048, '/file/66d14b42e537e3f57615df0e.csv', 773, '66d14b42e537e3f57615df0e.csv', '交易对账单-支付宝-20240829.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-30 12:32:03.082505');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432967571877888, '/file/66d523299b65f788a54f4345.csv', 588, '66d523299b65f788a54f4345.csv', '交易对账单-支付宝-20240901.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:01.924318');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432971883622400, '/file/2024/09/02/66d5232a9b65f788a54f4346.xlsx', 9725, '66d5232a9b65f788a54f4346.xlsx', '【2024-09-01】 - 测试应用2 - 支付宝(直连商户).xlsx', '/file/', '2024/09/02/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:02.953727');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432978368016384, '/file/66d5232c9b65f788a54f4347.csv', 1152, '66d5232c9b65f788a54f4347.csv', '交易对账单-微信-20240901.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:04.500493');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432979357872128, '/file/2024/09/02/66d5232c9b65f788a54f4348.xlsx', 9964, '66d5232c9b65f788a54f4348.xlsx', '【2024-09-01】 - 正式测试环境 - 微信支付(直连商户).xlsx', '/file/', '2024/09/02/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:04.736091');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432980876210176, '/file/66d5232d9b65f788a54f4349.csv', 588, '66d5232d9b65f788a54f4349.csv', '交易对账单-支付宝-20240901.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:05.097887');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432981224337408, '/file/2024/09/02/66d5232d9b65f788a54f434a.xlsx', 9725, '66d5232d9b65f788a54f434a.xlsx', '【2024-09-01】 - 正式测试环境 - 支付宝(直连商户).xlsx', '/file/', '2024/09/02/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:05.180424');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432989017354240, '/file/66d5232f9b65f788a54f434b.csv', 773, '66d5232f9b65f788a54f434b.csv', '交易对账单-支付宝-20240901.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:07.0389');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830432989638111232, '/file/2024/09/02/66d5232f9b65f788a54f434c.xlsx', 9726, '66d5232f9b65f788a54f434c.xlsx', '【2024-09-01】 - 秘钥测试账户(支付宝沙箱) - 支付宝(直连商户).xlsx', '/file/', '2024/09/02/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-02 10:30:07.187076');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795357480173568, '/file/66d674a91f358abb94988653.csv', 775, '66d674a91f358abb94988653.csv', '交易对账单-支付宝-20240902.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:02.410984');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795361926135808, '/file/2024/09/03/66d674ab1f358abb94988654.xlsx', 10927, '66d674ab1f358abb94988654.xlsx', '【2024-09-02】 - 测试应用2 - 支付宝(直连商户).xlsx', '/file/', '2024/09/03/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:03.47317');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795369018703872, '/file/66d674ad1f358abb94988655.csv', 1148, '66d674ad1f358abb94988655.csv', '交易对账单-微信-20240902.csv', '/file/', '', 'csv', 'text/plain', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:05.163827');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795369673015296, '/file/2024/09/03/66d674ad1f358abb94988656.xlsx', 9965, '66d674ad1f358abb94988656.xlsx', '【2024-09-02】 - 正式测试环境 - 微信支付(直连商户).xlsx', '/file/', '2024/09/03/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:05.320186');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795372088934400, '/file/66d674ad1f358abb94988657.csv', 775, '66d674ad1f358abb94988657.csv', '交易对账单-支付宝-20240902.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:05.896053');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795373271728128, '/file/2024/09/03/66d674ae1f358abb94988658.xlsx', 10926, '66d674ae1f358abb94988658.xlsx', '【2024-09-02】 - 正式测试环境 - 支付宝(直连商户).xlsx', '/file/', '2024/09/03/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:06.178188');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795379219251200, '/file/66d674af1f358abb94988659.csv', 773, '66d674af1f358abb94988659.csv', '交易对账单-支付宝-20240902.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:07.596269');
INSERT INTO "public"."starter_file_upload_info" VALUES (1830795379978420224, '/file/2024/09/03/66d674af1f358abb9498865a.xlsx', 10927, '66d674af1f358abb9498865a.xlsx', '【2024-09-02】 - 秘钥测试账户(支付宝沙箱) - 支付宝(直连商户).xlsx', '/file/', '2024/09/03/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:30:07.777158');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831233989211004928, '/file/66d80d2b0d4141300044fc44.csv', 775, '66d80d2b0d4141300044fc44.csv', '交易对账单-支付宝-20240903.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 15:33:00.365017');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831233993724076032, '/file/2024/09/04/66d80d2d0d4141300044fc45.xlsx', 9726, '66d80d2d0d4141300044fc45.xlsx', '【2024-09-03】-M1723635576766-M7934041241299655-支付宝(直连商户).xlsx', '/file/', '2024/09/04/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 15:33:01.443352');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831234003706519552, '/file/66d80d2f0d4141300044fc46.csv', 775, '66d80d2f0d4141300044fc46.csv', '交易对账单-支付宝-20240903.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 15:33:03.822384');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831234004142727168, '/file/2024/09/04/66d80d2f0d4141300044fc47.xlsx', 9726, '66d80d2f0d4141300044fc47.xlsx', '【2024-09-03】-M1723635576766-M8207639754663343-支付宝(直连商户).xlsx', '/file/', '2024/09/04/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 15:33:03.926613');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831234013055623168, '/file/66d80d320d4141300044fc48.csv', 773, '66d80d320d4141300044fc48.csv', '交易对账单-支付宝-20240903.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 15:33:06.051702');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831234013588299776, '/file/2024/09/04/66d80d320d4141300044fc49.xlsx', 9726, '66d80d320d4141300044fc49.xlsx', '【2024-09-03】-M1723635576766-M8088873888246277-支付宝(直连商户).xlsx', '/file/', '2024/09/04/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 15:33:06.179445');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831245328214020096, '/file/66d817bb0d4118c2cf4a8e72.csv', 773, '66d817bb0d4118c2cf4a8e72.csv', '交易对账单-支付宝-20240903.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 16:18:03.788286');
INSERT INTO "public"."starter_file_upload_info" VALUES (1831245352838778880, '/file/2024/09/04/66d817c10d4118c2cf4a8e73.xlsx', 9726, '66d817c10d4118c2cf4a8e73.xlsx', '【2024-09-03】-M1723635576766-M7189826551600486-支付宝(直连商户).xlsx', '/file/', '2024/09/04/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 16:18:09.666814');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767893975228416, '/file/66f375aac76333160bc4e4ca.csv', 773, '66f375aac76333160bc4e4ca.csv', '交易对账单-支付宝-20240924.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:03.234173');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767897783656448, '/file/2024/09/25/66f375acc76333160bc4e4cb.xlsx', 9725, '66f375acc76333160bc4e4cb.xlsx', '【2024-09-24】M1723635576766-M7189826551600486-支付宝(直连商户).xlsx', '/file/', '2024/09/25/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:04.143105');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767901315260416, '/file/66f375acc76333160bc4e4cc.csv', 588, '66f375acc76333160bc4e4cc.csv', '交易对账单-支付宝-20240924.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:04.986');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767901684359168, '/file/2024/09/25/66f375adc76333160bc4e4cd.xlsx', 9725, '66f375adc76333160bc4e4cd.xlsx', '【2024-09-24】M1723635576766-M7934041241299655-支付宝(直连商户).xlsx', '/file/', '2024/09/25/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:05.074329');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767906600083456, '/file/66f375aec76333160bc4e4ce.csv', 588, '66f375aec76333160bc4e4ce.csv', '交易对账单-支付宝-20240924.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:06.246034');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767907405389824, '/file/2024/09/25/66f375aec76333160bc4e4cf.xlsx', 9726, '66f375aec76333160bc4e4cf.xlsx', '【2024-09-24】M1723635576766-M8207639754663343-支付宝(直连商户).xlsx', '/file/', '2024/09/25/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:06.438419');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767913310969856, '/file/66f375afc76333160bc4e4d0.csv', 773, '66f375afc76333160bc4e4d0.csv', '交易对账单-支付宝-20240924.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:07.845724');
INSERT INTO "public"."starter_file_upload_info" VALUES (1838767913768148992, '/file/2024/09/25/66f375afc76333160bc4e4d1.xlsx', 9726, '66f375afc76333160bc4e4d1.xlsx', '【2024-09-24】M1723635576766-M8088873888246277-支付宝(直连商户).xlsx', '/file/', '2024/09/25/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-25 10:30:07.955428');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130282750988288, '/file/66f4c72ba2e5db5ec8f6d8c4.csv', 773, '66f4c72ba2e5db5ec8f6d8c4.csv', '交易对账单-支付宝-20240925.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:03.451004');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130286337118208, '/file/2024/09/26/66f4c72ca2e5db5ec8f6d8c5.xlsx', 9726, '66f4c72ca2e5db5ec8f6d8c5.xlsx', '【2024-09-25】M1723635576766-M7189826551600486-支付宝(直连商户).xlsx', '/file/', '2024/09/26/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:04.308822');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130289847750656, '/file/66f4c72da2e5db5ec8f6d8c6.csv', 588, '66f4c72da2e5db5ec8f6d8c6.csv', '交易对账单-支付宝-20240925.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:05.144483');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130290191683584, '/file/2024/09/26/66f4c72da2e5db5ec8f6d8c7.xlsx', 9725, '66f4c72da2e5db5ec8f6d8c7.xlsx', '【2024-09-25】M1723635576766-M7934041241299655-支付宝(直连商户).xlsx', '/file/', '2024/09/26/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:05.22687');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130295765913600, '/file/66f4c72ea2e5db5ec8f6d8c8.csv', 588, '66f4c72ea2e5db5ec8f6d8c8.csv', '交易对账单-支付宝-20240925.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:06.55616');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130296114040832, '/file/2024/09/26/66f4c72ea2e5db5ec8f6d8c9.xlsx', 9725, '66f4c72ea2e5db5ec8f6d8c9.xlsx', '【2024-09-25】M1723635576766-M8207639754663343-支付宝(直连商户).xlsx', '/file/', '2024/09/26/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:06.639039');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130304922079232, '/file/66f4c730a2e5db5ec8f6d8ca.csv', 773, '66f4c730a2e5db5ec8f6d8ca.csv', '交易对账单-支付宝-20240925.csv', '/file/', '', 'csv', 'application/octet-stream', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:08.739167');
INSERT INTO "public"."starter_file_upload_info" VALUES (1839130305433784320, '/file/2024/09/26/66f4c730a2e5db5ec8f6d8cb.xlsx', 9725, '66f4c730a2e5db5ec8f6d8cb.xlsx', '【2024-09-25】M1723635576766-M8088873888246277-支付宝(直连商户).xlsx', '/file/', '2024/09/26/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'minio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:30:08.861025');
INSERT INTO "public"."starter_file_upload_info" VALUES (1845026949664677888, '/file/670a3ade27257f956fb37432.csv', 1218, '670a3ade27257f956fb37432.csv', '交易对账单-云闪付-20241008.csv', '/file/', '', 'csv', 'text/plain', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-12 17:01:18.398618');
INSERT INTO "public"."starter_file_upload_info" VALUES (1845026982594158592, '/file/2024/10/12/670a3ae627257f956fb37433.xlsx', 9929, '670a3ae627257f956fb37433.xlsx', '订阅通知.xlsx', '/file/', '2024/10/12/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-12 17:01:26.251311');
INSERT INTO "public"."starter_file_upload_info" VALUES (1845027095811006464, '/file/670a3b0127257f956fb37434.csv', 588, '670a3b0127257f956fb37434.csv', '交易对账单-支付宝-20241007.csv', '/file/', '', 'csv', 'application/octet-stream', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-12 17:01:53.243283');
INSERT INTO "public"."starter_file_upload_info" VALUES (1845027103906013184, '/file/2024/10/12/670a3b0327257f956fb37435.xlsx', 9725, '670a3b0327257f956fb37435.xlsx', '订阅通知.xlsx', '/file/', '2024/10/12/', 'xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-12 17:01:55.174477');

-- ----------------------------
-- Primary Key structure for table base_dict
-- ----------------------------
ALTER TABLE "public"."base_dict" ADD CONSTRAINT "base_dict_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table base_dict_item
-- ----------------------------
ALTER TABLE "public"."base_dict_item" ADD CONSTRAINT "base_dict_item_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table base_param
-- ----------------------------
ALTER TABLE "public"."base_param" ADD CONSTRAINT "base_param_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_client
-- ----------------------------
ALTER TABLE "public"."iam_client" ADD CONSTRAINT "iam_client_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_perm_code
-- ----------------------------
ALTER TABLE "public"."iam_perm_code" ADD CONSTRAINT "iam_perm_code_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_perm_menu
-- ----------------------------
ALTER TABLE "public"."iam_perm_menu" ADD CONSTRAINT "iam_perm_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_perm_path
-- ----------------------------
ALTER TABLE "public"."iam_perm_path" ADD CONSTRAINT "iam_perm_code_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_role_code
-- ----------------------------
ALTER TABLE "public"."iam_role_code" ADD CONSTRAINT "iam_role_code_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_role_menu
-- ----------------------------
ALTER TABLE "public"."iam_role_menu" ADD CONSTRAINT "iam_role_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_role_path
-- ----------------------------
ALTER TABLE "public"."iam_role_path" ADD CONSTRAINT "iam_role_path_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_user_expand_info
-- ----------------------------
ALTER TABLE "public"."iam_user_expand_info" ADD CONSTRAINT "iam_user_expand_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_user_info
-- ----------------------------
ALTER TABLE "public"."iam_user_info" ADD CONSTRAINT "iam_user_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table iam_user_role
-- ----------------------------
ALTER TABLE "public"."iam_user_role" ADD CONSTRAINT "iam_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pay_alloc_detail
-- ----------------------------
CREATE INDEX "allocation_id" ON "public"."pay_alloc_detail" USING btree (
  "allocation_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."allocation_id" IS '分账订单ID索引';

-- ----------------------------
-- Primary Key structure for table pay_alloc_detail
-- ----------------------------
ALTER TABLE "public"."pay_alloc_detail" ADD CONSTRAINT "pay_alloc_detail_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_alloc_group
-- ----------------------------
ALTER TABLE "public"."pay_alloc_group" ADD CONSTRAINT "pay_allocation_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_alloc_group_receiver
-- ----------------------------
ALTER TABLE "public"."pay_alloc_group_receiver" ADD CONSTRAINT "pay_allocation_group_receiver_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_alloc_receiver
-- ----------------------------
ALTER TABLE "public"."pay_alloc_receiver" ADD CONSTRAINT "pay_alloc_receiver_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pay_alloc_transaction
-- ----------------------------
CREATE INDEX "alloc_no" ON "public"."pay_alloc_transaction" USING btree (
  "alloc_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."alloc_no" IS '分账单号索引';
CREATE INDEX "biz_alloc_no" ON "public"."pay_alloc_transaction" USING btree (
  "biz_alloc_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."biz_alloc_no" IS '商户分账单号索引';
CREATE INDEX "order_id" ON "public"."pay_alloc_transaction" USING btree (
  "order_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."order_id" IS '支付订单ID索引';
CREATE INDEX "out_alloc_no" ON "public"."pay_alloc_transaction" USING btree (
  "out_alloc_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."out_alloc_no" IS '通道分账号索引';

-- ----------------------------
-- Primary Key structure for table pay_api_const
-- ----------------------------
ALTER TABLE "public"."pay_api_const" ADD CONSTRAINT "pay_channel_const_copy1_pkey1" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_cashier_code_config
-- ----------------------------
ALTER TABLE "public"."pay_cashier_code_config" ADD CONSTRAINT "pay_cashier_code_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_cashier_code_type_config
-- ----------------------------
ALTER TABLE "public"."pay_cashier_code_type_config" ADD CONSTRAINT "pay_cashier_code_type_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_channel_config
-- ----------------------------
ALTER TABLE "public"."pay_channel_config" ADD CONSTRAINT "pay_channel_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_channel_const
-- ----------------------------
ALTER TABLE "public"."pay_channel_const" ADD CONSTRAINT "pay_channel_const_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_channel_reconcile_trade
-- ----------------------------
ALTER TABLE "public"."pay_channel_reconcile_trade" ADD CONSTRAINT "pay_channel_reconcile_trade_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_checkout_aggregate_config
-- ----------------------------
ALTER TABLE "public"."pay_checkout_aggregate_config" ADD CONSTRAINT "pay_checkout_aggregate_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_checkout_config
-- ----------------------------
ALTER TABLE "public"."pay_checkout_config" ADD CONSTRAINT "pay_checkout_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_checkout_group_config
-- ----------------------------
ALTER TABLE "public"."pay_checkout_group_config" ADD CONSTRAINT "pay_checkout_group_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_checkout_item_config
-- ----------------------------
ALTER TABLE "public"."pay_checkout_item_config" ADD CONSTRAINT "pay_checkout_item_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pay_close_record
-- ----------------------------
CREATE INDEX "biz_order_no" ON "public"."pay_close_record" USING btree (
  "biz_order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."biz_order_no" IS '商户支付订单号索引';
CREATE INDEX "order_no" ON "public"."pay_close_record" USING btree (
  "order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."order_no" IS '支付订单号索引';

-- ----------------------------
-- Primary Key structure for table pay_close_record
-- ----------------------------
ALTER TABLE "public"."pay_close_record" ADD CONSTRAINT "pay_close_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_mch_app
-- ----------------------------
ALTER TABLE "public"."pay_mch_app" ADD CONSTRAINT "pay_mch_app_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_merchant_callback_record
-- ----------------------------
ALTER TABLE "public"."pay_merchant_callback_record" ADD CONSTRAINT "pay_merchant_callback_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_merchant_callback_task
-- ----------------------------
ALTER TABLE "public"."pay_merchant_callback_task" ADD CONSTRAINT "pay_merchant_callback_task_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_merchant_notify_config
-- ----------------------------
ALTER TABLE "public"."pay_merchant_notify_config" ADD CONSTRAINT "pay_merchant_notify_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_merchant_notify_const
-- ----------------------------
ALTER TABLE "public"."pay_merchant_notify_const" ADD CONSTRAINT "pay_merchant_notify_const_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_merchant_notify_record
-- ----------------------------
ALTER TABLE "public"."pay_merchant_notify_record" ADD CONSTRAINT "pay_merchant_notify_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_merchant_notify_task
-- ----------------------------
ALTER TABLE "public"."pay_merchant_notify_task" ADD CONSTRAINT "pay_merchant_notify_task_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_method_const
-- ----------------------------
ALTER TABLE "public"."pay_method_const" ADD CONSTRAINT "pay_channel_const_copy1_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pay_order
-- ----------------------------
CREATE INDEX "order_biz_order_order_no_idx" ON "public"."pay_order" USING btree (
  "biz_order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "order_pay_order_order_no_idx" ON "public"."pay_order" USING btree (
  "order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "order_pay_order_out_order_no_idx" ON "public"."pay_order" USING btree (
  "out_order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table pay_order
-- ----------------------------
ALTER TABLE "public"."pay_order" ADD CONSTRAINT "pay_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_platform_config
-- ----------------------------
ALTER TABLE "public"."pay_platform_config" ADD CONSTRAINT "pay_platform_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_reconcile_discrepancy
-- ----------------------------
ALTER TABLE "public"."pay_reconcile_discrepancy" ADD CONSTRAINT "pay_reconcile_discrepancy_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_reconcile_statement
-- ----------------------------
ALTER TABLE "public"."pay_reconcile_statement" ADD CONSTRAINT "pay_reconcile_statement_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pay_refund_order
-- ----------------------------
CREATE INDEX "refund_biz_order_no" ON "public"."pay_refund_order" USING btree (
  "biz_order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."refund_biz_order_no" IS '商户支付订单号索引';
CREATE INDEX "refund_biz_refund_no" ON "public"."pay_refund_order" USING btree (
  "biz_refund_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."refund_biz_refund_no" IS '商户退款号索引';
CREATE INDEX "refund_order_id" ON "public"."pay_refund_order" USING btree (
  "order_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."refund_order_id" IS '支付订单ID索引';
CREATE INDEX "refund_order_no" ON "public"."pay_refund_order" USING btree (
  "order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."refund_order_no" IS '支付订单号索引';
CREATE INDEX "refund_out_order_no" ON "public"."pay_refund_order" USING btree (
  "out_order_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."refund_out_order_no" IS '通道支付订单号索引';
CREATE INDEX "refund_out_refund_no" ON "public"."pay_refund_order" USING btree (
  "out_refund_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."refund_out_refund_no" IS '通道退款交易号索引';
CREATE INDEX "refund_refund_no" ON "public"."pay_refund_order" USING btree (
  "refund_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."refund_refund_no" IS '退款号索引';

-- ----------------------------
-- Primary Key structure for table pay_refund_order
-- ----------------------------
ALTER TABLE "public"."pay_refund_order" ADD CONSTRAINT "pay_refund_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pay_trade_callback_record
-- ----------------------------
CREATE INDEX "out_trade_no" ON "public"."pay_trade_callback_record" USING btree (
  "out_trade_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."out_trade_no" IS '通道交易号索引';
CREATE INDEX "trade_no" ON "public"."pay_trade_callback_record" USING btree (
  "trade_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."trade_no" IS '本地交易号索引';

-- ----------------------------
-- Primary Key structure for table pay_trade_callback_record
-- ----------------------------
ALTER TABLE "public"."pay_trade_callback_record" ADD CONSTRAINT "pay_callback_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_trade_flow_record
-- ----------------------------
ALTER TABLE "public"."pay_trade_flow_record" ADD CONSTRAINT "pay_trade_flow_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_trade_sync_record
-- ----------------------------
ALTER TABLE "public"."pay_trade_sync_record" ADD CONSTRAINT "pay_trade_sync_record_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pay_transfer_order
-- ----------------------------
CREATE INDEX "transfer_biz_transfer_no" ON "public"."pay_transfer_order" USING btree (
  "biz_transfer_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."transfer_biz_transfer_no" IS '商户转账号索引';
CREATE INDEX "transfer_out_transfer_no" ON "public"."pay_transfer_order" USING btree (
  "out_transfer_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."transfer_out_transfer_no" IS '通道转账号索引';
CREATE INDEX "transfer_transfer_no" ON "public"."pay_transfer_order" USING btree (
  "transfer_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "public"."transfer_transfer_no" IS '转账号索引';

-- ----------------------------
-- Primary Key structure for table pay_transfer_order
-- ----------------------------
ALTER TABLE "public"."pay_transfer_order" ADD CONSTRAINT "pay_transfer_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table starter_audit_login_log
-- ----------------------------
ALTER TABLE "public"."starter_audit_login_log" ADD CONSTRAINT "starter_audit_login_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table starter_audit_operate_log
-- ----------------------------
ALTER TABLE "public"."starter_audit_operate_log" ADD CONSTRAINT "starter_audit_operate_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table starter_file_platform
-- ----------------------------
ALTER TABLE "public"."starter_file_platform" ADD CONSTRAINT "starter_file_platform_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table starter_file_upload_info
-- ----------------------------
ALTER TABLE "public"."starter_file_upload_info" ADD CONSTRAINT "starter_file_upload_info_pkey" PRIMARY KEY ("id");
