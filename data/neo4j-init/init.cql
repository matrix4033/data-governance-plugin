// Neo4j Graph Init Script
// Auto-generated: 2276 nodes, 3281 relationships
// Usage: MATCH (n) DETACH DELETE n; :source <this_file>

:begin
// ===== NODES =====
MERGE (n:SubjectDomain {name: "死亡库"})
  ON CREATE SET name: "死亡库";

MERGE (n:SubjectDomain {name: "自然人"})
  ON CREATE SET name: "自然人";

MERGE (n:Database {name: "swk"})
  ON CREATE SET name: "swk";

MERGE (n:Database {name: "zrr"})
  ON CREATE SET name: "zrr";

MERGE (n:BusinessDomain {name: "死亡库"})
  ON CREATE SET name: "死亡库";

MERGE (n:BusinessDomain {name: "社会活动"})
  ON CREATE SET name: "社会活动";

MERGE (n:BusinessDomain {name: "涉事涉法"})
  ON CREATE SET name: "涉事涉法";

MERGE (n:BusinessDomain {name: "基本信息"})
  ON CREATE SET name: "基本信息";

MERGE (n:BusinessDomain {name: "资产信息"})
  ON CREATE SET name: "资产信息";

MERGE (n:BusinessDomain {name: "资质荣誉"})
  ON CREATE SET name: "资质荣誉";

MERGE (n:BusinessSubject {name: "违纪、违规和违约"})
  ON CREATE SET name: "违纪、违规和违约";

MERGE (n:BusinessSubject {name: "基本生活"})
  ON CREATE SET name: "基本生活";

MERGE (n:BusinessSubject {name: "能力资质"})
  ON CREATE SET name: "能力资质";

MERGE (n:BusinessSubject {name: "登记信息"})
  ON CREATE SET name: "登记信息";

MERGE (n:BusinessSubject {name: "文化体育"})
  ON CREATE SET name: "文化体育";

MERGE (n:BusinessSubject {name: "债务信息"})
  ON CREATE SET name: "债务信息";

MERGE (n:BusinessSubject {name: "权威库"})
  ON CREATE SET name: "权威库";

MERGE (n:BusinessSubject {name: "就业社保"})
  ON CREATE SET name: "就业社保";

MERGE (n:BusinessSubject {name: "行政监管"})
  ON CREATE SET name: "行政监管";

MERGE (n:BusinessSubject {name: "教育"})
  ON CREATE SET name: "教育";

MERGE (n:BusinessSubject {name: "家庭信息"})
  ON CREATE SET name: "家庭信息";

MERGE (n:BusinessSubject {name: "联系信息"})
  ON CREATE SET name: "联系信息";

MERGE (n:BusinessSubject {name: "实物资产信息"})
  ON CREATE SET name: "实物资产信息";

MERGE (n:BusinessSubject {name: "生理体征信息"})
  ON CREATE SET name: "生理体征信息";

MERGE (n:BusinessSubject {name: "医疗卫生"})
  ON CREATE SET name: "医疗卫生";

MERGE (n:BusinessSubject {name: "信访、举报和投诉"})
  ON CREATE SET name: "信访、举报和投诉";

MERGE (n:BusinessSubject {name: "荣誉表彰"})
  ON CREATE SET name: "荣誉表彰";

MERGE (n:BusinessSubject {name: "职业资格"})
  ON CREATE SET name: "职业资格";

MERGE (n:BusinessSubject {name: "司法信息"})
  ON CREATE SET name: "司法信息";

MERGE (n:LogicalEntity {name: "机动车信息"})
  ON CREATE SET logical_name: "机动车信息", code: "5.3.2.1_5";

MERGE (n:LogicalEntity {name: "失业保险信息"})
  ON CREATE SET logical_name: "失业保险信息", code: "5.3.3.4_18";

MERGE (n:LogicalEntity {name: "资产处置"})
  ON CREATE SET logical_name: "资产处置", code: "5.3.2.1_6";

MERGE (n:LogicalEntity {name: "门诊与住院信息"})
  ON CREATE SET logical_name: "门诊与住院信息", code: "5.3.3.2_3";

MERGE (n:LogicalEntity {name: "学前教育信息"})
  ON CREATE SET logical_name: "学前教育信息", code: "5.3.3.3_1";

MERGE (n:LogicalEntity {name: "失信被执行信息"})
  ON CREATE SET logical_name: "失信被执行信息", code: "5.3.5.2_4";

MERGE (n:LogicalEntity {name: "职业年金缴纳记录"})
  ON CREATE SET logical_name: "职业年金缴纳记录", code: "5.3.3.4_17";

MERGE (n:LogicalEntity {name: "医疗保险缴纳记录"})
  ON CREATE SET logical_name: "医疗保险缴纳记录", code: "5.3.3.4_11";

MERGE (n:LogicalEntity {name: "违纪信息"})
  ON CREATE SET logical_name: "违纪信息", code: "5.3.5.3_1";

MERGE (n:LogicalEntity {name: "邮政物流新"})
  ON CREATE SET logical_name: "邮政物流新", code: "5.3.3.1_2";

MERGE (n:LogicalEntity {name: "联系地址"})
  ON CREATE SET logical_name: "联系地址", code: "5.3.1.4_2";

MERGE (n:LogicalEntity {name: "能力资质信息"})
  ON CREATE SET logical_name: "能力资质信息", code: "5.3.4.1_1";

MERGE (n:LogicalEntity {name: "工伤保险缴纳记录"})
  ON CREATE SET logical_name: "工伤保险缴纳记录", code: "5.3.3.4_13";

MERGE (n:LogicalEntity {name: "职业伤害保障缴纳记录"})
  ON CREATE SET logical_name: "职业伤害保障缴纳记录", code: "5.3.3.4_23";

MERGE (n:LogicalEntity {name: "生育保险缴纳记录"})
  ON CREATE SET logical_name: "生育保险缴纳记录", code: "5.3.3.4_21";

MERGE (n:LogicalEntity {name: "行政确认"})
  ON CREATE SET logical_name: "行政确认", code: "5.3.5.1_3";

MERGE (n:LogicalEntity {name: "交通出行"})
  ON CREATE SET logical_name: "交通出行", code: "5.3.3.1_1";

MERGE (n:LogicalEntity {name: "就业信息"})
  ON CREATE SET logical_name: "就业信息", code: "5.3.3.4_1";

MERGE (n:LogicalEntity {name: "执业资格信息"})
  ON CREATE SET logical_name: "执业资格信息", code: "5.3.4.2_2";

MERGE (n:LogicalEntity {name: "火化信息"})
  ON CREATE SET logical_name: "火化信息", code: "5.3.1.2_5";

MERGE (n:LogicalEntity {name: "死亡注销信息"})
  ON CREATE SET logical_name: "死亡注销信息", code: "5.3.1.2_3";

MERGE (n:LogicalEntity {name: "强制执行信息"})
  ON CREATE SET logical_name: "强制执行信息", code: "5.3.5.2_6";

MERGE (n:LogicalEntity {name: "行政给付"})
  ON CREATE SET logical_name: "行政给付", code: "5.3.5.1_4";

MERGE (n:LogicalEntity {name: "基本登记信息"})
  ON CREATE SET logical_name: "基本登记信息", code: "5.3.1.1_1";

MERGE (n:LogicalEntity {name: "养老保险信息"})
  ON CREATE SET logical_name: "养老保险信息", code: "5.3.3.4_8";

MERGE (n:LogicalEntity {name: "文体活动"})
  ON CREATE SET logical_name: "文体活动", code: "5.3.3.5_1";

MERGE (n:LogicalEntity {name: "纳税信息"})
  ON CREATE SET logical_name: "纳税信息", code: "5.3.3.4_4";

MERGE (n:LogicalEntity {name: "失业保险缴纳记录"})
  ON CREATE SET logical_name: "失业保险缴纳记录", code: "5.3.3.4_19";

MERGE (n:LogicalEntity {name: "义务教育信息"})
  ON CREATE SET logical_name: "义务教育信息", code: "5.3.3.3_2";

MERGE (n:LogicalEntity {name: "贷款信息"})
  ON CREATE SET logical_name: "贷款信息", code: "5.3.2.3_1";

MERGE (n:LogicalEntity {name: "高中教育信息"})
  ON CREATE SET logical_name: "高中教育信息", code: "5.3.3.3_3";

MERGE (n:LogicalEntity {name: "宣告死亡信息"})
  ON CREATE SET logical_name: "宣告死亡信息", code: "5.3.1.2_6";

MERGE (n:LogicalEntity {name: "机动车驾驶证基本信息"})
  ON CREATE SET logical_name: "机动车驾驶证基本信息", code: "5.3.4.1_2";

MERGE (n:LogicalEntity {name: "工伤保险信息"})
  ON CREATE SET logical_name: "工伤保险信息", code: "5.3.3.4_12";

MERGE (n:LogicalEntity {name: "投诉信息"})
  ON CREATE SET logical_name: "投诉信息", code: "5.3.5.3_4";

MERGE (n:LogicalEntity {name: "死亡医学证明信息"})
  ON CREATE SET logical_name: "死亡医学证明信息", code: "5.3.1.2_4";

MERGE (n:LogicalEntity {name: "工伤认定信息表"})
  ON CREATE SET logical_name: "工伤认定信息表", code: "5.3.3.4_3";

MERGE (n:LogicalEntity {name: "失信黑名单信息"})
  ON CREATE SET logical_name: "失信黑名单信息", code: "5.3.5.1_6";

MERGE (n:LogicalEntity {name: "救助信息"})
  ON CREATE SET logical_name: "救助信息", code: "5.3.3.4_24";

MERGE (n:LogicalEntity {name: "举报信息"})
  ON CREATE SET logical_name: "举报信息", code: "5.3.5.3_2";

MERGE (n:LogicalEntity {name: "身份证件信息"})
  ON CREATE SET logical_name: "身份证件信息", code: "5.3.1.1_2";

MERGE (n:LogicalEntity {name: "生理体征"})
  ON CREATE SET logical_name: "生理体征", code: "5.3.1.2_2";

MERGE (n:LogicalEntity {name: "养老社保缴纳记录"})
  ON CREATE SET logical_name: "养老社保缴纳记录", code: "5.3.3.4_9";

MERGE (n:LogicalEntity {name: "行政处罚"})
  ON CREATE SET logical_name: "行政处罚", code: "5.3.5.1_1";

MERGE (n:LogicalEntity {name: "职称信息"})
  ON CREATE SET logical_name: "职称信息", code: "5.3.4.1_3";

MERGE (n:LogicalEntity {name: "司法案件信息"})
  ON CREATE SET logical_name: "司法案件信息", code: "5.3.5.2_1";

MERGE (n:LogicalEntity {name: "农机信息"})
  ON CREATE SET logical_name: "农机信息", code: "5.3.2.1_4";

MERGE (n:LogicalEntity {name: "渔船信息"})
  ON CREATE SET logical_name: "渔船信息", code: "5.3.2.1_3";

MERGE (n:LogicalEntity {name: "考试信息"})
  ON CREATE SET logical_name: "考试信息", code: "5.3.3.3_6";

MERGE (n:LogicalEntity {name: "退休信息"})
  ON CREATE SET logical_name: "退休信息", code: "5.3.3.4_7";

MERGE (n:LogicalEntity {name: "医疗保险信息"})
  ON CREATE SET logical_name: "医疗保险信息", code: "5.3.3.4_10";

MERGE (n:LogicalEntity {name: "法律援助"})
  ON CREATE SET logical_name: "法律援助", code: "5.3.5.2_7";

MERGE (n:LogicalEntity {name: "行政许可"})
  ON CREATE SET logical_name: "行政许可", code: "5.3.4.1_4";

MERGE (n:LogicalEntity {name: "住房公积金"})
  ON CREATE SET logical_name: "住房公积金", code: "5.3.3.4_5";

MERGE (n:LogicalEntity {name: "死亡人员扩展信息表"})
  ON CREATE SET logical_name: "死亡人员扩展信息表", code: "1_2";

MERGE (n:LogicalEntity {name: "死亡人员基本信息表"})
  ON CREATE SET logical_name: "死亡人员基本信息表", code: "1_1";

MERGE (n:LogicalEntity {name: "职业伤害保障信息"})
  ON CREATE SET logical_name: "职业伤害保障信息", code: "5.3.3.4_22";

MERGE (n:LogicalEntity {name: "行政裁决"})
  ON CREATE SET logical_name: "行政裁决", code: "5.3.5.1_5";

MERGE (n:LogicalEntity {name: "学历综合信息"})
  ON CREATE SET logical_name: "学历综合信息", code: "5.3.3.3_7";

MERGE (n:LogicalEntity {name: "户籍信息"})
  ON CREATE SET logical_name: "户籍信息", code: "5.3.1.3_1";

MERGE (n:LogicalEntity {name: "联系电话"})
  ON CREATE SET logical_name: "联系电话", code: "5.3.1.4_3";

MERGE (n:LogicalEntity {name: "房产信息"})
  ON CREATE SET logical_name: "房产信息", code: "5.3.2.1_7";

MERGE (n:LogicalEntity {name: "生育保险信息"})
  ON CREATE SET logical_name: "生育保险信息", code: "5.3.3.4_20";

MERGE (n:LogicalEntity {name: "电子邮箱"})
  ON CREATE SET logical_name: "电子邮箱", code: "5.3.1.4_1";

MERGE (n:LogicalEntity {name: "失业信息"})
  ON CREATE SET logical_name: "失业信息", code: "5.3.3.4_2";

MERGE (n:LogicalEntity {name: "职业教育信息"})
  ON CREATE SET logical_name: "职业教育信息", code: "5.3.3.3_4";

MERGE (n:LogicalEntity {name: "出生信息"})
  ON CREATE SET logical_name: "出生信息", code: "5.3.1.2_1";

MERGE (n:LogicalEntity {name: "计生信息"})
  ON CREATE SET logical_name: "计生信息", code: "5.3.3.2_1";

MERGE (n:LogicalEntity {name: "高等教育信息"})
  ON CREATE SET logical_name: "高等教育信息", code: "5.3.3.3_5";

MERGE (n:LogicalEntity {name: "住房公积金缴纳记录"})
  ON CREATE SET logical_name: "住房公积金缴纳记录", code: "5.3.3.4_6";

MERGE (n:LogicalEntity {name: "信访信息"})
  ON CREATE SET logical_name: "信访信息", code: "5.3.5.3_3";

MERGE (n:LogicalEntity {name: "行政奖励"})
  ON CREATE SET logical_name: "行政奖励", code: "5.3.4.3_2";

MERGE (n:LogicalEntity {name: "职业年金信息"})
  ON CREATE SET logical_name: "职业年金信息", code: "5.3.3.4_16";

MERGE (n:LogicalEntity {name: "荣誉信息"})
  ON CREATE SET logical_name: "荣誉信息", code: "5.3.4.3_1";

MERGE (n:LogicalEntity {name: "从业资格信息"})
  ON CREATE SET logical_name: "从业资格信息", code: "5.3.4.2_1";

MERGE (n:LogicalEntity {name: "未履行生效裁判信息"})
  ON CREATE SET logical_name: "未履行生效裁判信息", code: "5.3.5.2_3";

MERGE (n:LogicalEntity {name: "婚姻信息"})
  ON CREATE SET logical_name: "婚姻信息", code: "5.3.1.3_2";

MERGE (n:LogicalEntity {name: "疫苗接种信息"})
  ON CREATE SET logical_name: "疫苗接种信息", code: "5.3.3.2_2";

MERGE (n:LogicalEntity {name: "行政强制"})
  ON CREATE SET logical_name: "行政强制", code: "5.3.5.1_2";

MERGE (n:LogicalEntity {name: "丧葬补助金信息"})
  ON CREATE SET logical_name: "丧葬补助金信息", code: "5.3.1.2_8";

MERGE (n:LogicalEntity {name: "不动产权利信息表"})
  ON CREATE SET logical_name: "不动产权利信息表", code: "5.3.2.1_1";

MERGE (n:LogicalEntity {name: "船舶信息表"})
  ON CREATE SET logical_name: "船舶信息表", code: "5.3.2.1_2";

MERGE (n:LogicalEntity {name: "亲缘关系信息"})
  ON CREATE SET logical_name: "亲缘关系信息", code: "5.3.1.3_3";

MERGE (n:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zyshbzxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(200),\n    shbzhm VARCHAR(200),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(200),\n    cbdxzqhdm VARCHAR(100),\n    cbksrq VARCHAR(50),\n    bcjfksny VARCHAR(50),\n    sbcbzt VARCHAR(200),\n    sbzzrq VARCHAR(50),\n    zhjlny VARCHAR(100),\n    zjfs VARCHAR(100),\n    ygxs VARCHAR(100),\n    grjfzt VARCHAR(50),\n    cbsf VARCHAR(100),\n    dfcbsfmz VARCHAR(50),\n    dfcbsfmc VARCHAR(100),\n    ldgxksrq DATE,\n    ldgxzzrq DATE,\n    dqyxbz VARCHAR(50),\n    rycbgxlx VARCHAR(100),\n    jfrylb VARCHAR(50),\n    grcbrq VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_zyshbzxx_new IS '职业伤害保障信息';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.shbzhm IS '社会保障号码';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.cbdxzqhdm IS '参保所属地';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.cbksrq IS '参保开始日期';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.bcjfksny IS '本次缴费开始年月';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.sbcbzt IS '社保参保状态';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.sbzzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.zhjlny IS '账户建立年月';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.zjfs IS '征缴方式';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.ygxs IS '用工形式';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.grjfzt IS '个人缴费状态';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.cbsf IS '参保身份';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.dfcbsfmz IS '地方参保身份码值';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.dfcbsfmc IS '地方参保身份名称';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.ldgxksrq IS '劳动关系开始日期';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.ldgxzzrq IS '劳动关系终止日期';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.dqyxbz IS '当前有效标志';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.rycbgxlx IS '人员参保关系类型';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.jfrylb IS '缴费人员类别';\nCOMMENT ON COLUMN dwd_zrr_zyshbzxx_new.grcbrq IS '个人参保日期';", database_name: "zrr", name: "dwd_zrr_zyshbzxx_new", table_name: "dwd_zrr_zyshbzxx_new", comment: "职业伤害保障信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_xzcj_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xzcj_new (\n    xzcfje NUMERIC,\n    xzcfsfxxgk CHAR(8),\n    xzcfgksj DATE,\n    xzcfgkjssj DATE,\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    xzcjbsqr VARCHAR(1000),\n    xzcjsqsx VARCHAR(4000),\n    xzcjssjg VARCHAR(1000),\n    xzcjrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_xzcj_new IS '行政裁决';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcfje IS '行政处罚金额';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcfsfxxgk IS '行政处罚是否信息公开';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcfgksj IS '行政处罚公开时间';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcfgkjssj IS '行政处罚公开结束时间';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcjbsqr IS '行政裁决被申请人';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcjsqsx IS '行政裁决申请事项';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcjssjg IS '行政裁决实施机关';\nCOMMENT ON COLUMN dwd_zrr_xzcj_new.xzcjrq IS '行政裁决日期';", database_name: "zrr", name: "dwd_zrr_xzcj_new", table_name: "dwd_zrr_xzcj_new", comment: "行政裁决";

MERGE (n:PhysicalTable {name: "dwd_zrr_xlzhxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xlzhxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx VARCHAR(160),\n    sfzjhm VARCHAR(3000),\n    xlmc VARCHAR(160),\n    xlzy VARCHAR(48),\n    xlsydw VARCHAR(800),\n    xlsyrq DATE,\n    xwlbm VARCHAR(400),\n    xwmc VARCHAR(160),\n    xwsydw VARCHAR(800),\n    xwsyrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_xlzhxx_new IS '学历综合信息';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xlmc IS '学历名称';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xlzy IS '学历专业';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xlsydw IS '学历授予单位';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xlsyrq IS '学历授予日期';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xwlbm IS '学位类别码';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xwmc IS '学位名称';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xwsydw IS '学位授予单位';\nCOMMENT ON COLUMN dwd_zrr_xlzhxx_new.xwsyrq IS '学位授予日期';", database_name: "zrr", name: "dwd_zrr_xlzhxx_new", table_name: "dwd_zrr_xlzhxx_new", comment: "学历综合信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_hjxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_hjxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    jg VARCHAR(100),\n    hklb VARCHAR(20),\n    hjszd VARCHAR(200),\n    hjdssxdm VARCHAR(100),\n    hjdxz VARCHAR(2000),\n    hjdjlxdm VARCHAR(40),\n    hzxm VARCHAR(100),\n    hzsfhm VARCHAR(100),\n    hjqfdw VARCHAR(50),\n    hjqfsj DATE,\n    hjzxbs VARCHAR(20),\n    hjzxrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_hjxx_new IS '户籍信息';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.jg IS '籍贯';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hklb IS '户口类别';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjszd IS '户籍所在地';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjdssxdm IS '户籍地省市县代码';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjdxz IS '户籍地详址';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjdjlxdm IS '户籍地街路巷代码';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hzxm IS '户主姓名';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hzsfhm IS '户主身份号码';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjqfdw IS '户籍签发单位';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjqfsj IS '户籍签发时间';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjzxbs IS '户籍注销标识';\nCOMMENT ON COLUMN dwd_zrr_hjxx_new.hjzxrq IS '户籍注销日期';", database_name: "zrr", name: "dwd_zrr_hjxx_new", table_name: "dwd_zrr_hjxx_new", comment: "户籍信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_lxdh_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_lxdh_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    dhhm VARCHAR(100)\n);\n\nCOMMENT ON TABLE dwd_zrr_lxdh_new IS '联系电话';\nCOMMENT ON COLUMN dwd_zrr_lxdh_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_lxdh_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_lxdh_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_lxdh_new.dhhm IS '电话号码';", database_name: "zrr", name: "dwd_zrr_lxdh_new", table_name: "dwd_zrr_lxdh_new", comment: "联系电话";

MERGE (n:PhysicalTable {name: "dwd_zrr_fcxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_fcxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    fwdz VARCHAR(1600),\n    fwxz VARCHAR(800),\n    fwjzmj NUMERIC,\n    fwsymj NUMERIC,\n    fwmc VARCHAR(800),\n    fwfh VARCHAR(800),\n    gfhtqdrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_fcxx_new IS '房产信息';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.fwdz IS '房屋地址';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.fwxz IS '房屋性质';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.fwjzmj IS '房屋建筑面积';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.fwsymj IS '房屋使用面积';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.fwmc IS '房屋名称';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.fwfh IS '房屋房号';\nCOMMENT ON COLUMN dwd_zrr_fcxx_new.gfhtqdrq IS '购房合同签订日期';", database_name: "zrr", name: "dwd_zrr_fcxx_new", table_name: "dwd_zrr_fcxx_new", comment: "房产信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_sybxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_sybxxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    shbzhm VARCHAR(200),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(200),\n    cbdxzqhdm VARCHAR(100),\n    cbksrq DATE,\n    sbcbzt VARCHAR(200),\n    sbzzrq DATE,\n    zhjlny VARCHAR(100),\n    zjfs VARCHAR(100),\n    ygxs VARCHAR(100),\n    grjfzt CHAR(50),\n    cbsf VARCHAR(100),\n    dfcbsfmz CHAR(50),\n    dfcbsfmc VARCHAR(100),\n    ldgxksrq DATE,\n    ldgxzzrq DATE,\n    dqyxbz CHAR(50),\n    rycbgxlx VARCHAR(100),\n    jfrylb CHAR(50),\n    grcbrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_sybxxx_new IS '生育保险信息';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.shbzhm IS '社会保障号码';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.cbdxzqhdm IS '参保地行政区划代码';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.cbksrq IS '参保开始日期';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.sbcbzt IS '社保参保状态';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.sbzzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.zhjlny IS '账户建立年月';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.zjfs IS '征缴方式';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.ygxs IS '用工形式';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.grjfzt IS '个人缴费状态';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.cbsf IS '参保身份';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.dfcbsfmz IS '地方参保身份码值';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.dfcbsfmc IS '地方参保身份名称';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.ldgxksrq IS '劳动关系开始日期';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.ldgxzzrq IS '劳动关系终止日期';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.dqyxbz IS '当前有效标志';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.rycbgxlx IS '人员参保关系类型';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.jfrylb IS '缴费人员类别';\nCOMMENT ON COLUMN dwd_zrr_sybxxx_new.grcbrq IS '个人参保日期';", database_name: "zrr", name: "dwd_zrr_sybxxx_new", table_name: "dwd_zrr_sybxxx_new", comment: "生育保险信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_dzyx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_dzyx_new (\n    zrrwybs VARCHAR(800),\n    yxzh VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800)\n);\n\nCOMMENT ON TABLE dwd_zrr_dzyx_new IS '电子邮箱';\nCOMMENT ON COLUMN dwd_zrr_dzyx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_dzyx_new.yxzh IS '邮箱账号';\nCOMMENT ON COLUMN dwd_zrr_dzyx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_dzyx_new.sfzjhm IS '身份证件号码';", database_name: "zrr", name: "dwd_zrr_dzyx_new", table_name: "dwd_zrr_dzyx_new", comment: "电子邮箱";

MERGE (n:PhysicalTable {name: "dwd_zrr_syxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_syxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(3000),\n    djsyrq DATE,\n    syyy VARCHAR(4000),\n    jyknlb CHAR(40),\n    jycyzbh VARCHAR(240),\n    jycyzfzjg VARCHAR(800)\n);\n\nCOMMENT ON TABLE dwd_zrr_syxx_new IS '失业信息';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.djsyrq IS '登记失业日期';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.syyy IS '失业原因';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.jyknlb IS '就业困难类别';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.jycyzbh IS '就业创业证编号';\nCOMMENT ON COLUMN dwd_zrr_syxx_new.jycyzfzjg IS '就业创业证发证机构';", database_name: "zrr", name: "dwd_zrr_syxx_new", table_name: "dwd_zrr_syxx_new", comment: "失业信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_zyjyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zyjyxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(2000),\n    xxwys VARCHAR(3000),\n    xh VARCHAR(800),\n    rxrq DATE,\n    byrq DATE,\n    sxzy VARCHAR(50),\n    xz CHAR(50),\n    njmc VARCHAR(200),\n    bjmc VARCHAR(200),\n    xxmc VARCHAR(800)\n);\n\nCOMMENT ON TABLE dwd_zrr_zyjyxx_new IS '职业教育信息';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.xxwys IS '学校唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.xh IS '学号';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.rxrq IS '入学日期';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.byrq IS '毕业日期';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.sxzy IS '所学专业';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.xz IS '学制';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.njmc IS '年级名称';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.bjmc IS '班级名称';\nCOMMENT ON COLUMN dwd_zrr_zyjyxx_new.xxmc IS '学校名称';", database_name: "zrr", name: "dwd_zrr_zyjyxx_new", table_name: "dwd_zrr_zyjyxx_new", comment: "职业教育信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_csxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_csxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    csyxzmbh CHAR(160),\n    p_flag CHAR(160),\n    csyxzmfqsfzh CHAR(144),\n    csyxzmmqsfzh CHAR(144),\n    csyxzmqfrq DATE,\n    csyxzmqfjg VARCHAR(800),\n    csdxzqhxz VARCHAR(800),\n    mq_xm VARCHAR(500),\n    fq_xm VARCHAR(500),\n    cssj TIMESTAMP,\n    csyz INTEGER,\n    cstz NUMERIC,\n    cssz NUMERIC,\n    csd_qhdm VARCHAR(200),\n    etgrbsh VARCHAR(200),\n    bshlb VARCHAR(200),\n    jsry VARCHAR(200),\n    zcjgmc VARCHAR(400),\n    xsexm VARCHAR(500),\n    xsexb VARCHAR(10)\n);\n\nCOMMENT ON TABLE dwd_zrr_csxx_new IS '出生信息';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csyxzmbh IS '出生医学证明编号';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.p_flag IS '证照状态';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csyxzmfqsfzh IS '出生医学证明父亲身份证号';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csyxzmmqsfzh IS '出生医学证明母亲身份证号';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csyxzmqfrq IS '出生医学证明签发日期';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csyxzmqfjg IS '出生医学证明签发机构';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csdxzqhxz IS '出生地行政区划地址';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.mq_xm IS '母亲姓名';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.fq_xm IS '父亲姓名';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.cssj IS '出生时间';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csyz IS '出生孕周';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.cstz IS '出生体重';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.cssz IS '出生身长';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.csd_qhdm IS '出生地行政区划代码';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.etgrbsh IS '儿童个人标识号';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.bshlb IS '标识号类别';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.jsry IS '接生人员';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.zcjgmc IS '医疗机构名称';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.xsexm IS '新生儿姓名';\nCOMMENT ON COLUMN dwd_zrr_csxx_new.xsexb IS '新生儿性别';", database_name: "zrr", name: "dwd_zrr_csxx_new", table_name: "dwd_zrr_csxx_new", comment: "出生信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_jsxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jsxx_new (\n    zrrwybs VARCHAR(1381),\n    sfzjlx VARCHAR(1381),\n    sfzjhm VARCHAR(1381),\n    yljgmc VARCHAR(100),\n    cfjkdah VARCHAR(20),\n    cfzybah VARCHAR(40),\n    jdsj DATE,\n    gwrs VARCHAR(5),\n    rsbfz VARCHAR(200),\n    rsfxdm VARCHAR(10),\n    cfyc VARCHAR(200),\n    cfcc VARCHAR(200),\n    cfts VARCHAR(200),\n    cftc VARCHAR(200)\n);\n\nCOMMENT ON TABLE dwd_zrr_jsxx_new IS '计生信息';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.yljgmc IS '医疗机构名称';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.cfjkdah IS '孕产妇健康档案编号';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.cfzybah IS '产妇住院病案号';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.jdsj IS '建档时间';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.gwrs IS '本次是否属于高危妊娠';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.rsbfz IS '妊娠合并症/并发症史';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.rsfxdm IS '妊娠风险评估分级代码';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.cfyc IS '孕次（次）';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.cfcc IS '产次（次）';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.cfts IS '胎数';\nCOMMENT ON COLUMN dwd_zrr_jsxx_new.cftc IS '胎次';", database_name: "zrr", name: "dwd_zrr_jsxx_new", table_name: "dwd_zrr_jsxx_new", comment: "计生信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_gdjyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_gdjyxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjhm VARCHAR(800),\n    sfzjlx CHAR(16),\n    xxwybs VARCHAR(48),\n    xxmc VARCHAR(800),\n    xh VARCHAR(48),\n    rxrq DATE,\n    byrq DATE,\n    sxzy VARCHAR(48),\n    xz CHAR(8),\n    yxmc VARCHAR(800),\n    njmc VARCHAR(400),\n    bjmc VARCHAR(400),\n    sfkns VARCHAR(400)\n);\n\nCOMMENT ON TABLE dwd_zrr_gdjyxx_new IS '高等教育信息';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.xxwybs IS '学校唯一标识';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.xxmc IS '学校名称';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.xh IS '学号';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.rxrq IS '入学日期';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.byrq IS '毕业日期';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.sxzy IS '所学专业';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.xz IS '学制';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.yxmc IS '院系名称';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.njmc IS '年级名称';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.bjmc IS '班级名称';\nCOMMENT ON COLUMN dwd_zrr_gdjyxx_new.sfkns IS '是否困难生';", database_name: "zrr", name: "dwd_zrr_gdjyxx_new", table_name: "dwd_zrr_gdjyxx_new", comment: "高等教育信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zfgjjjnjl_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    grzh CHAR(160),\n    dwzh CHAR(160),\n    jcjgh CHAR(160),\n    jcjs NUMERIC,\n    grjcje NUMERIC,\n    dwjcje NUMERIC,\n    jcbl VARCHAR(2000),\n    grzhye NUMERIC,\n    grzhzt VARCHAR(2000),\n    dwmc VARCHAR(2000),\n    hjyf CHAR(48),\n    jcsj DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_zfgjjjnjl_new IS '住房公积金缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.grzh IS '个人账号';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.dwzh IS '单位账号';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.jcjgh IS '缴存机构号';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.jcjs IS '缴存基数';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.grjcje IS '个人缴存金额';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.dwjcje IS '单位缴存金额';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.jcbl IS '缴存比例';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.grzhye IS '个人账户余额';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.grzhzt IS '个人账户状态';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.hjyf IS '汇缴月份';\nCOMMENT ON COLUMN dwd_zrr_zfgjjjnjl_new.jcsj IS '缴存时间';", database_name: "zrr", name: "dwd_zrr_zfgjjjnjl_new", table_name: "dwd_zrr_zfgjjjnjl_new", comment: "住房公积金缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_xifxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xifxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    sfrsfzm VARCHAR(400),\n    xfrq DATE,\n    xfsj VARCHAR(16000),\n    xfsy VARCHAR(16000),\n    xfbm VARCHAR(160),\n    wqnr VARCHAR(16000),\n    wqrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_xifxx_new IS '信访信息';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.sfrsfzm IS '上访人身份证明';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.xfrq IS '信访日期';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.xfsj IS '信访事件';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.xfsy IS '信访事由';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.xfbm IS '信访部门';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.wqnr IS '维权内容';\nCOMMENT ON COLUMN dwd_zrr_xifxx_new.wqrq IS '维权日期';", database_name: "zrr", name: "dwd_zrr_xifxx_new", table_name: "dwd_zrr_xifxx_new", comment: "信访信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_xzjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xzjl_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    xzjljdwh VARCHAR(2000),\n    xzjlmc VARCHAR(1000),\n    xzjljdnr VARCHAR(2000),\n    xzjlrq DATE,\n    xzjlbm VARCHAR(200),\n    sjdj VARCHAR(100),\n    xmmc CHAR(300),\n    sbnd DATE,\n    kssj DATE,\n    jssj DATE,\n    jllx CHAR(300)\n);\n\nCOMMENT ON TABLE dwd_zrr_xzjl_new IS '行政奖励';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.xzjljdwh IS '行政奖励决定文号';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.xzjlmc IS '行政奖励名称';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.xzjljdnr IS '行政奖励决定内容';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.xzjlrq IS '行政奖励日期';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.xzjlbm IS '行政奖励部门';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.sjdj IS '授奖等级';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.xmmc IS '项目名称';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.sbnd IS '年度';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.kssj IS '开始时间';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.jssj IS '结束时间';\nCOMMENT ON COLUMN dwd_zrr_xzjl_new.jllx IS '奖励类型';", database_name: "zrr", name: "dwd_zrr_xzjl_new", table_name: "dwd_zrr_xzjl_new", comment: "行政奖励";

MERGE (n:PhysicalTable {name: "dwd_zrr_zynjxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zynjxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(200),\n    shbzhm VARCHAR(200),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(200),\n    cbdxzqhdm VARCHAR(100),\n    cbksrq VARCHAR(50),\n    bcjfksny VARCHAR(50),\n    sbcbzt VARCHAR(200),\n    sbzzrq VARCHAR(50),\n    zhjlny VARCHAR(100),\n    zjfs VARCHAR(100),\n    ygxs VARCHAR(100),\n    grjfzt VARCHAR(50),\n    cbsf VARCHAR(100),\n    dfcbsfmz VARCHAR(50),\n    dfcbsfmc VARCHAR(100),\n    ldgxksrq DATE,\n    ldgxzzrq DATE,\n    dqyxbz VARCHAR(50),\n    rycbgxlx VARCHAR(100),\n    jfrylb VARCHAR(50),\n    grcbrq VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_zynjxx_new IS '职业年金信息';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.shbzhm IS '社会保障号码';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.cbdxzqhdm IS '参保所属地';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.cbksrq IS '参保开始日期';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.bcjfksny IS '本次缴费开始年月';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.sbcbzt IS '社保参保状态';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.sbzzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.zhjlny IS '账户建立年月';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.zjfs IS '征缴方式';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.ygxs IS '用工形式';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.grjfzt IS '个人缴费状态';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.cbsf IS '参保身份';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.dfcbsfmz IS '地方参保身份码值';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.dfcbsfmc IS '地方参保身份名称';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.ldgxksrq IS '劳动关系开始日期';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.ldgxzzrq IS '劳动关系终止日期';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.dqyxbz IS '当前有效标志';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.rycbgxlx IS '人员参保关系类型';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.jfrylb IS '缴费人员类别';\nCOMMENT ON COLUMN dwd_zrr_zynjxx_new.grcbrq IS '个人参保日期';", database_name: "zrr", name: "dwd_zrr_zynjxx_new", table_name: "dwd_zrr_zynjxx_new", comment: "职业年金信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_ryxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_ryxx_new (\n    zrrwybs VARCHAR(1600),\n    sfzjlx CHAR(400),\n    sfzjhm VARCHAR(1600),\n    rzyrymc VARCHAR(1600),\n    yxq CHAR(32),\n    rymc VARCHAR(400),\n    shzt VARCHAR(800),\n    ryjb VARCHAR(240),\n    jb VARCHAR(1000),\n    zslx TEXT,\n    ryrdrq DATE,\n    ryjldx VARCHAR(800),\n    zsbh TEXT,\n    ryzsyxqz VARCHAR(240),\n    ryzsyxqzh VARCHAR(240),\n    rybfjgmc VARCHAR(400)\n);\n\nCOMMENT ON TABLE dwd_zrr_ryxx_new IS '荣誉信息';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.rzyrymc IS '认证与荣誉名称';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.yxq IS '有效期';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.rymc IS '荣誉名称';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.shzt IS '审核状态';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.ryjb IS '荣誉级别';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.jb IS '级别';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.zslx IS '证书类型';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.ryrdrq IS '荣誉认定日期';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.ryjldx IS '荣誉奖励对象';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.zsbh IS '证书编号';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.ryzsyxqz IS '荣誉证书有效期自';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.ryzsyxqzh IS '荣誉证书有效期至';\nCOMMENT ON COLUMN dwd_zrr_ryxx_new.rybfjgmc IS '荣誉颁发机构名称';", database_name: "zrr", name: "dwd_zrr_ryxx_new", table_name: "dwd_zrr_ryxx_new", comment: "荣誉信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_cyzgxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_cyzgxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx VARCHAR(100),\n    sfzjhm VARCHAR(800),\n    zyzgzjbh VARCHAR(300),\n    zyzgzjmc VARCHAR(100),\n    zyzgzjlx VARCHAR(200),\n    zyzgzjqfjgmc VARCHAR(100),\n    zyzgzjqfjgdm VARCHAR(201),\n    zyzgzjzt VARCHAR(202),\n    zyzgzjyxqq DATE,\n    zyzgzjyxqz DATE,\n    zyzgzjqfrq DATE,\n    zyzgzjccqfrq DATE,\n    zyzgzjzxyy VARCHAR(100)\n);\n\nCOMMENT ON TABLE dwd_zrr_cyzgxx_new IS '从业资格信息';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjbh IS '证件编号';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjmc IS '证件名称';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjlx IS '证件类型';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjqfjgmc IS '证件签发机关名称';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjqfjgdm IS '从业资格证件签发机关代码';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjzt IS '证件状态';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjyxqq IS '证件有效期起';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjyxqz IS '证件有效期止';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjqfrq IS '证件签发日期';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjccqfrq IS '从业资格证件初次签发日期';\nCOMMENT ON COLUMN dwd_zrr_cyzgxx_new.zyzgzjzxyy IS '证件注销原因';", database_name: "zrr", name: "dwd_zrr_cyzgxx_new", table_name: "dwd_zrr_cyzgxx_new", comment: "从业资格信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_wlxsxcpqk_new (\n    zrrwybs VARCHAR(255),\n    sfzjlx VARCHAR(25),\n    sfzjhm VARCHAR(255),\n    ah VARCHAR(255),\n    zczxyjdw VARCHAR(800),\n    sxbzxrxm VARCHAR(800),\n    lasj DATE,\n    flsxwsqddyw VARCHAR(800),\n    fbsj DATE,\n    bzxrdlxqk VARCHAR(16000),\n    sxbzxrjtqx VARCHAR(16000),\n    wlxbf VARCHAR(2400)\n);\n\nCOMMENT ON TABLE dwd_zrr_wlxsxcpqk_new IS '未履行生效裁判信息';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.ah IS '案号';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.zczxyjdw IS '作出执行依据单位';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.sxbzxrxm IS '被执行人姓名';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.lasj IS '立案时间';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.flsxwsqddyw IS '法律生效文书确定的义务';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.fbsj IS '发布时间';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.bzxrdlxqk IS '被执行人的履行情况';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.sxbzxrjtqx IS '失信被执行人具体情况';\nCOMMENT ON COLUMN dwd_zrr_wlxsxcpqk_new.wlxbf IS '未履行部分';", database_name: "zrr", name: "dwd_zrr_wlxsxcpqk_new", table_name: "dwd_zrr_wlxsxcpqk_new", comment: "未履行生效裁判信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_hyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_hyxx_new (\n    nfzrrwybs VARCHAR(800),\n    nvfzrrwybs VARCHAR(800),\n    jlhzzh CHAR(400),\n    nfhyzk CHAR(16),\n    nvfhyzk CHAR(16),\n    djrq DATE,\n    nfxm VARCHAR(800),\n    nfsfzjlx CHAR(16),\n    nfsfsfzjhm VARCHAR(400),\n    nvfxm VARCHAR(800),\n    nvfsfzjlx CHAR(16),\n    nvfsfsfzjhm VARCHAR(400),\n    birth_man DATE,\n    birth_woman DATE,\n    id_type_man VARCHAR(800),\n    id_type_woman VARCHAR(800),\n    nation_man VARCHAR(240),\n    nation_woman VARCHAR(240),\n    folk_man VARCHAR(4000),\n    folk_woman VARCHAR(800),\n    print_num_man CHAR(16),\n    print_num_woman CHAR(16),\n    lhpjah VARCHAR(200),\n    jarq DATE,\n    hydjlx VARCHAR(255)\n);\n\nCOMMENT ON TABLE dwd_zrr_hyxx_new IS '婚姻信息';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nfzrrwybs IS '男方自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nvfzrrwybs IS '女方自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.jlhzzh IS '结离婚证字号';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nfhyzk IS '婚姻状况(男)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nvfhyzk IS '婚姻状况(女)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.djrq IS '登记日期';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nfxm IS '男方姓名';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nfsfzjlx IS '男方身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nfsfsfzjhm IS '男方身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nvfxm IS '女方姓名';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nvfsfzjlx IS '女方身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nvfsfsfzjhm IS '女方身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.birth_man IS '出生日期(男)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.birth_woman IS '出生日期(女)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.id_type_man IS '身份类别(男)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.id_type_woman IS '身份类别(女)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nation_man IS '国籍(男)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.nation_woman IS '国籍(女)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.folk_man IS '民族(男)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.folk_woman IS '民族(女)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.print_num_man IS '印制号(男)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.print_num_woman IS '印制号(女)';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.lhpjah IS '离婚判决案号';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.jarq IS '结案日期';\nCOMMENT ON COLUMN dwd_zrr_hyxx_new.hydjlx IS '婚姻登记类型';", database_name: "zrr", name: "dwd_zrr_hyxx_new", table_name: "dwd_zrr_hyxx_new", comment: "婚姻信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_ymjzxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_ymjzxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    ymbm VARCHAR(500),\n    jzlx VARCHAR(500),\n    ymxh VARCHAR(500),\n    scqy VARCHAR(2000),\n    jzrq VARCHAR(500),\n    jzbw VARCHAR(500),\n    jzys VARCHAR(500),\n    jzjgbm VARCHAR(500),\n    fybz VARCHAR(500)\n);\n\nCOMMENT ON TABLE dwd_zrr_ymjzxx_new IS '疫苗接种信息';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.ymbm IS '疫苗编码';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.jzlx IS '接种类型';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.ymxh IS '疫苗序号';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.scqy IS '生产企业';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.jzrq IS '接种日期';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.jzbw IS '接种部位';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.jzys IS '接种医生';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.jzjgbm IS '接种机构编码';\nCOMMENT ON COLUMN dwd_zrr_ymjzxx_new.fybz IS '费用标志';", database_name: "zrr", name: "dwd_zrr_ymjzxx_new", table_name: "dwd_zrr_ymjzxx_new", comment: "疫苗接种信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_xzqz_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xzqz_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    xzqzsqrq DATE,\n    xzqzdxszzzjgtyshxydm VARCHAR(50),\n    xzqzzxwh VARCHAR(100),\n    xzqzfl VARCHAR(20),\n    lscfsj DATE,\n    cfxxxzqbm VARCHAR(50),\n    xzqzzxsj DATE,\n    xzqzxdrfl VARCHAR(100),\n    jclscfsj TIMESTAMP,\n    xzqzjfrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_xzqz_new IS '行政强制';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.xzqzsqrq IS '行政强制申请日期';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.xzqzdxszzzjgtyshxydm IS '行政强制对象所在组织机构统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.xzqzzxwh IS '行政强制执行文号';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.xzqzfl IS '行政强制分类';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.lscfsj IS '临时查封时间';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.cfxxxzqbm IS '查封信息行政区编码';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.xzqzzxsj IS '行政强制执行时间';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.xzqzxdrfl IS '行政强制相对人分类';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.jclscfsj IS '解除临时查封时间';\nCOMMENT ON COLUMN dwd_zrr_xzqz_new.xzqzjfrq IS '行政强制解封日期';", database_name: "zrr", name: "dwd_zrr_xzqz_new", table_name: "dwd_zrr_xzqz_new", comment: "行政强制";

MERGE (n:PhysicalTable {name: "dwd_zrr_szbzjxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_szbzjxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    szbzje NUMERIC,\n    szbzlx CHAR(8)\n);\n\nCOMMENT ON TABLE dwd_zrr_szbzjxx_new IS '丧葬补助金信息';\nCOMMENT ON COLUMN dwd_zrr_szbzjxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_szbzjxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_szbzjxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_szbzjxx_new.szbzje IS '丧葬补助金额';\nCOMMENT ON COLUMN dwd_zrr_szbzjxx_new.szbzlx IS '丧葬补助类型';", database_name: "zrr", name: "dwd_zrr_szbzjxx_new", table_name: "dwd_zrr_szbzjxx_new", comment: "丧葬补助金信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_bdcqzxx_new (\n    zrrwybs VARCHAR(800),\n    cqzbh VARCHAR(5000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    bdcqdjsj DATE,\n    bdcdyh CHAR(224),\n    bdcdjjg VARCHAR(400),\n    bdcqgyfs VARCHAR(1600),\n    bdcgyqk VARCHAR(32000),\n    bdcqlxz VARCHAR(800),\n    bdcqllx VARCHAR(800),\n    fwyt VARCHAR(1000),\n    scjzmj VARCHAR(400),\n    qszt VARCHAR(10),\n    fwzl VARCHAR(3000)\n);\n\nCOMMENT ON TABLE dwd_zrr_bdcqzxx_new IS '不动产权利信息表';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.cqzbh IS '产权证编号';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.bdcqdjsj IS '不动产登记时间';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.bdcdyh IS '不动产单元号';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.bdcdjjg IS '不动产登记机构';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.bdcqgyfs IS '不动产权共有方式';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.bdcgyqk IS '不动产共有情况';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.bdcqlxz IS '不动产权利性质';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.bdcqllx IS '不动产权利类型';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.fwyt IS '房屋用途';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.scjzmj IS '实测建筑面积';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.qszt IS '权属状态';\nCOMMENT ON COLUMN dwd_zrr_bdcqzxx_new.fwzl IS '房屋坐落';", database_name: "zrr", name: "dwd_zrr_bdcqzxx_new", table_name: "dwd_zrr_bdcqzxx_new", comment: "不动产权利信息表";

MERGE (n:PhysicalTable {name: "dwd_zrr_cbxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_cbxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjhm VARCHAR(800),\n    sfzjlx CHAR(16),\n    cmzw VARCHAR(2040),\n    cmyw VARCHAR(2040),\n    ch VARCHAR(2040),\n    cjgzw VARCHAR(2040),\n    cjgyw VARCHAR(2040),\n    czdw VARCHAR(2040),\n    cbsyqzh VARCHAR(2040),\n    cbzsh VARCHAR(2040),\n    cmdm VARCHAR(2040),\n    cz VARCHAR(2040)\n);\n\nCOMMENT ON TABLE dwd_zrr_cbxx_new IS '船舶信息表';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cmzw IS '船名(中文)';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cmyw IS '船名(英文)';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.ch IS '船号';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cjgzw IS '船籍港(中文)';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cjgyw IS '船籍港(英文)';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.czdw IS '船总吨位';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cbsyqzh IS '船舶所有权证号';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cbzsh IS '船舶证书号';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cmdm IS '船名代码';\nCOMMENT ON COLUMN dwd_zrr_cbxx_new.cz IS '船质';", database_name: "zrr", name: "dwd_zrr_cbxx_new", table_name: "dwd_zrr_cbxx_new", comment: "船舶信息表";

MERGE (n:PhysicalTable {name: "dwd_zrr_qygxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_qygxxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    bjhrxm VARCHAR(800),\n    jhrsfzjlx VARCHAR(100),\n    jhrsfzjhm VARCHAR(800),\n    jhrxm VARCHAR(100),\n    jhgx VARCHAR(100),\n    fqsfzjlx VARCHAR(100),\n    fqsfzjhm VARCHAR(800),\n    fqxm VARCHAR(100),\n    mqsfzjlx VARCHAR(100),\n    mqsfzjhm VARCHAR(800),\n    mqxm VARCHAR(100)\n);\n\nCOMMENT ON TABLE dwd_zrr_qygxxx_new IS '亲缘关系信息';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.sfzjhm IS '被监护人身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.bjhrxm IS '被监护人姓名';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.jhrsfzjlx IS '监护人身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.jhrsfzjhm IS '监护人身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.jhrxm IS '监护人姓名';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.jhgx IS '监护关系';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.fqsfzjlx IS '父亲身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.fqsfzjhm IS '父亲身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.fqxm IS '父亲姓名';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.mqsfzjlx IS '母亲身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.mqsfzjhm IS '母亲身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_qygxxx_new.mqxm IS '母亲姓名';", database_name: "zrr", name: "dwd_zrr_qygxxx_new", table_name: "dwd_zrr_qygxxx_new", comment: "亲缘关系信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_jdcxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jdcxx_new (\n    zrrwybs VARCHAR(800),\n    clsbdm VARCHAR(200),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    clgchjk CHAR(8),\n    clzwpp VARCHAR(800),\n    clxh VARCHAR(256),\n    cllx VARCHAR(160),\n    xszyxqz DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_jdcxx_new IS '机动车信息';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.clsbdm IS '车辆识别代码';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.clgchjk IS '车辆国产或进口';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.clzwpp IS '车辆中文品牌';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.clxh IS '车辆型号';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.cllx IS '车辆类型';\nCOMMENT ON COLUMN dwd_zrr_jdcxx_new.xszyxqz IS '行驶证有效期至';", database_name: "zrr", name: "dwd_zrr_jdcxx_new", table_name: "dwd_zrr_jdcxx_new", comment: "机动车信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_shiybxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_shiybxxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(200),\n    shbzhm VARCHAR(200),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(200),\n    cbdxzqhdm VARCHAR(100),\n    cbksrq VARCHAR(50),\n    bcjfksny VARCHAR(50),\n    sbcbzt VARCHAR(200),\n    sbzzrq VARCHAR(50),\n    zhjlny VARCHAR(100),\n    zjfs VARCHAR(100),\n    ygxs VARCHAR(100),\n    grjfzt VARCHAR(50),\n    cbsf VARCHAR(100),\n    dfcbsfmz VARCHAR(50),\n    dfcbsfmc VARCHAR(100),\n    ldgxksrq DATE,\n    ldgxzzrq DATE,\n    dqyxbz VARCHAR(50),\n    rycbgxlx VARCHAR(100),\n    jfrylb VARCHAR(50),\n    grcbrq VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_shiybxxx_new IS '失业保险信息';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.shbzhm IS '社会保障号码';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.cbdxzqhdm IS '参保所属地';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.cbksrq IS '参保开始日期';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.bcjfksny IS '本次缴费开始年月';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.sbcbzt IS '社保参保状态';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.sbzzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.zhjlny IS '账户建立年月';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.zjfs IS '征缴方式';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.ygxs IS '用工形式';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.grjfzt IS '个人缴费状态';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.cbsf IS '参保身份';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.dfcbsfmz IS '地方参保身份码值';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.dfcbsfmc IS '地方参保身份名称';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.ldgxksrq IS '劳动关系开始日期';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.ldgxzzrq IS '劳动关系终止日期';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.dqyxbz IS '当前有效标志';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.rycbgxlx IS '人员参保关系类型';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.jfrylb IS '缴费人员类别';\nCOMMENT ON COLUMN dwd_zrr_shiybxxx_new.grcbrq IS '个人参保日期';", database_name: "zrr", name: "dwd_zrr_shiybxxx_new", table_name: "dwd_zrr_shiybxxx_new", comment: "失业保险信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_zccz_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zccz_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    dyw VARCHAR(2040),\n    dyzt VARCHAR(2040),\n    dyqxq DATE,\n    dyqxz DATE,\n    dyqzxdjsj DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_zccz_new IS '资产处置';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.dyw IS '抵押物';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.dyzt IS '抵押状态';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.dyqxq IS '抵押期限起';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.dyqxz IS '抵押期限止';\nCOMMENT ON COLUMN dwd_zrr_zccz_new.dyqzxdjsj IS '抵押权注销登记时间';", database_name: "zrr", name: "dwd_zrr_zccz_new", table_name: "dwd_zrr_zccz_new", comment: "资产处置";

MERGE (n:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_mzyzyxx_new (\n    zrrwybs VARCHAR(1381),\n    sfzjhm VARCHAR(1381),\n    sfzjlx VARCHAR(1381),\n    yljgdm VARCHAR(22),\n    sffz VARCHAR(10),\n    hzxm VARCHAR(50),\n    hzsx VARCHAR(20),\n    sfjz VARCHAR(1),\n    jzxz VARCHAR(10),\n    jzksbm VARCHAR(64),\n    jzksmc VARCHAR(76),\n    jzksrq DATE,\n    jzsj TIMESTAMP,\n    wcjzsj TIMESTAMP,\n    zzysbh VARCHAR(36),\n    zzysxm VARCHAR(50),\n    mzzddm VARCHAR(64),\n    mzzdmc VARCHAR(256),\n    jzzdsm VARCHAR(512),\n    zs VARCHAR(1024),\n    mzzzmc VARCHAR(120),\n    mzzzzddm VARCHAR(40),\n    lggc VARCHAR(2),\n    zzms VARCHAR(1024),\n    fbrqsj DATE,\n    ssy NUMERIC,\n    szy NUMERIC,\n    tw NUMERIC,\n    zzcxsj VARCHAR(3),\n    mjzh VARCHAR(36),\n    jzlsh VARCHAR(36),\n    jzksrq_new DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_mzyzyxx_new IS '门诊与住院信息';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.yljgdm IS '医疗机构代码';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.sffz IS '是否复诊';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.hzxm IS '患者姓名';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.hzsx IS '患者属性';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.sfjz IS '是否急诊';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzxz IS '就诊性质';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzksbm IS '就诊科室代码';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzksmc IS '就诊科室名称';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzksrq IS '门诊就诊日期';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzsj IS '接诊时间';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.wcjzsj IS '完成就诊时间';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.zzysbh IS '主诊医生编号';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.zzysxm IS '主诊医生姓名';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.mzzddm IS '门诊诊断代码';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.mzzdmc IS '门诊诊断名称（主要诊断）';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzzdsm IS '门诊诊断说明';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.zs IS '主诉';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.mzzzmc IS '门诊症状-名称';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.mzzzzddm IS '门诊症状-诊断代码';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.lggc IS '留观观察';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.zzms IS '症状描述';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.fbrqsj IS '发病日期时间';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.ssy IS '收缩压(mmHg)';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.szy IS '舒张压(mmHg)';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.tw IS '体温(℃)';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.zzcxsj IS '症状持续时间';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.mjzh IS '门（急）诊号';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzlsh IS '就诊流水号';\nCOMMENT ON COLUMN dwd_zrr_mzyzyxx_new.jzksrq_new IS '门诊就诊日期_new';", database_name: "zrr", name: "dwd_zrr_mzyzyxx_new", table_name: "dwd_zrr_mzyzyxx_new", comment: "门诊与住院信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_xqjyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xqjyxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjhm VARCHAR(800),\n    sfzjlx CHAR(16),\n    xxwybs VARCHAR(800),\n    xxmc VARCHAR(800),\n    rxrq DATE,\n    byrq DATE,\n    bjmc VARCHAR(400)\n);\n\nCOMMENT ON TABLE dwd_zrr_xqjyxx_new IS '学前教育信息';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.xxwybs IS '学校唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.xxmc IS '学校名称';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.rxrq IS '入学日期';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.byrq IS '毕业日期';\nCOMMENT ON COLUMN dwd_zrr_xqjyxx_new.bjmc IS '班级名称';", database_name: "zrr", name: "dwd_zrr_xqjyxx_new", table_name: "dwd_zrr_xqjyxx_new", comment: "学前教育信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_sxbzxxx_new (\n    zrrwybs VARCHAR(1600),\n    sfzjlx CHAR(400),\n    sfzjhm VARCHAR(1600),\n    sxxw VARCHAR(2000),\n    sxbzxyjwh VARCHAR(2000),\n    sxbzxrdrq DATE,\n    sxbzxlarq DATE,\n    sxbzxlxqk VARCHAR(160),\n    serillrea_cn VARCHAR(1600),\n    punishexecuteamount VARCHAR(2000),\n    zxyj VARCHAR(2400)\n);\n\nCOMMENT ON TABLE dwd_zrr_sxbzxxx_new IS '失信被执行信息';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.sxxw IS '失信行为';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.sxbzxyjwh IS '失信被执行依据文号';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.sxbzxrdrq IS '失信被执行认定日期';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.sxbzxlarq IS '失信被执行立案日期';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.sxbzxlxqk IS '失信被执行履行情况';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.serillrea_cn IS '列入事由/情形（中文名称）';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.punishexecuteamount IS '处罚执行金额/处罚金额';\nCOMMENT ON COLUMN dwd_zrr_sxbzxxx_new.zxyj IS '执行依据';", database_name: "zrr", name: "dwd_zrr_sxbzxxx_new", table_name: "dwd_zrr_sxbzxxx_new", comment: "失信被执行信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zynjjnjl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(800),\n    sbbm VARCHAR(200),\n    sbxzlx VARCHAR(50),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(50),\n    sbjfrq VARCHAR(50),\n    sbjfqsrq VARCHAR(50),\n    sbjfjzrq VARCHAR(50),\n    sbjfgz VARCHAR(50),\n    sbjfjs VARCHAR(50),\n    sbjfyf VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_zynjjnjl_new IS '职业年金缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbbm IS '社保编码';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbxzlx IS '社保险种类型';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbjfrq IS '社保缴费日期';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbjfqsrq IS '社保缴费起始日期';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbjfjzrq IS '社保缴费截止日期';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbjfgz IS '社保缴费工资';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbjfjs IS '社保缴费基数';\nCOMMENT ON COLUMN dwd_zrr_zynjjnjl_new.sbjfyf IS '社保缴费月份';", database_name: "zrr", name: "dwd_zrr_zynjjnjl_new", table_name: "dwd_zrr_zynjjnjl_new", comment: "职业年金缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_yilbxjnjl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    sbbm CHAR(144),\n    sbxzlx CHAR(24),\n    dwmc CHAR(144),\n    dwtyshxydm CHAR(18),\n    sbjfrq DATE,\n    sbjfqsrq DATE,\n    sbjfjzrq DATE,\n    sbjfgz NUMERIC,\n    sbjfjs NUMERIC,\n    sbjfyf CHAR(48)\n);\n\nCOMMENT ON TABLE dwd_zrr_yilbxjnjl_new IS '医疗保险缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbbm IS '社保编码';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbxzlx IS '社保险种类型';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbjfrq IS '社保缴费日期';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbjfqsrq IS '社保起始日期';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbjfjzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbjfgz IS '社保缴费工资';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbjfjs IS '社保缴费基数';\nCOMMENT ON COLUMN dwd_zrr_yilbxjnjl_new.sbjfyf IS '社保缴费月份';", database_name: "zrr", name: "dwd_zrr_yilbxjnjl_new", table_name: "dwd_zrr_yilbxjnjl_new", comment: "医疗保险缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_wjxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_wjxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    wjlx CHAR(40),\n    wjnr VARCHAR(16000),\n    wjrszjgmc VARCHAR(800),\n    wjclyj VARCHAR(8000)\n);\n\nCOMMENT ON TABLE dwd_zrr_wjxx_new IS '违纪信息';\nCOMMENT ON COLUMN dwd_zrr_wjxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_wjxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_wjxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_wjxx_new.wjlx IS '违纪类型';\nCOMMENT ON COLUMN dwd_zrr_wjxx_new.wjnr IS '违纪内容';\nCOMMENT ON COLUMN dwd_zrr_wjxx_new.wjrszjgmc IS '违纪人所在机构名称';\nCOMMENT ON COLUMN dwd_zrr_wjxx_new.wjclyj IS '违纪处理意见';", database_name: "zrr", name: "dwd_zrr_wjxx_new", table_name: "dwd_zrr_wjxx_new", comment: "违纪信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_yzwl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_yzwl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    jjrxm VARCHAR(800)\n);\n\nCOMMENT ON TABLE dwd_zrr_yzwl_new IS '邮政物流新';\nCOMMENT ON COLUMN dwd_zrr_yzwl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_yzwl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_yzwl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_yzwl_new.jjrxm IS '寄件人姓名';", database_name: "zrr", name: "dwd_zrr_yzwl_new", table_name: "dwd_zrr_yzwl_new", comment: "邮政物流新";

MERGE (n:PhysicalTable {name: "dwd_zrr_lxdz_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_lxdz_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    dzbm CHAR(200),\n    dzmc VARCHAR(1000),\n    ssqx CHAR(600),\n    xzhjdmc VARCHAR(1000),\n    xzchsq VARCHAR(1000)\n);\n\nCOMMENT ON TABLE dwd_zrr_lxdz_new IS '联系地址';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.dzbm IS '地址编码';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.dzmc IS '地址名称';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.ssqx IS '省市区县';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.xzhjdmc IS '乡镇或街道名称';\nCOMMENT ON COLUMN dwd_zrr_lxdz_new.xzchsq IS '行政村或社区';", database_name: "zrr", name: "dwd_zrr_lxdz_new", table_name: "dwd_zrr_lxdz_new", comment: "联系地址";

MERGE (n:PhysicalTable {name: "dwd_zrr_nlzzxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_nlzzxx_new (\n    zrrwybs VARCHAR(1600),\n    sfzjlx CHAR(400),\n    sfzjhm VARCHAR(1600),\n    zsbh VARCHAR(2400),\n    zzdj VARCHAR(2400),\n    zjyxqq DATE,\n    zjyxqz DATE,\n    zjqfjgmc VARCHAR(640),\n    fzjg VARCHAR(1280),\n    zjqfrq VARCHAR(1280),\n    zjbh VARCHAR(1920),\n    bajgdm VARCHAR(1280),\n    bajgmc VARCHAR(1280),\n    sfscxdzsh VARCHAR(1280),\n    zt VARCHAR(1280),\n    cd_batch VARCHAR(1280),\n    cyfw VARCHAR(1280),\n    zjmc VARCHAR(2400),\n    qhdm VARCHAR(2560),\n    zjqmz VARCHAR(400),\n    zzjtm VARCHAR(400),\n    zjqmgyz VARCHAR(400),\n    zjqmhashz VARCHAR(400),\n    zjqfjgdm VARCHAR(400),\n    zjccqfrq DATE,\n    zjzxrq DATE,\n    zjzxyy VARCHAR(800),\n    zjlx VARCHAR(96),\n    zjsjc DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_nlzzxx_new IS '能力资质信息';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zsbh IS '证书编号-弃用';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zzdj IS '资质等级';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjyxqq IS '证件有效期起';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjyxqz IS '证件有效期止';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjqfjgmc IS '证件签发机关名称';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.fzjg IS '发证机关-弃用';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjqfrq IS '证件签发日期';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjbh IS '证件编号';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.bajgdm IS '备案机构代码';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.bajgmc IS '备案机构名称';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.sfscxdzsh IS '是否生成新的证书号';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zt IS '状态';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.cd_batch IS '批次号';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.cyfw IS '从业范围';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjmc IS '证件名称';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.qhdm IS '区划代码';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjqmz IS '证件签名值';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zzjtm IS '证件条码';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjqmgyz IS '证件签名公钥值';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjqmhashz IS '证件签名hash值';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjqfjgdm IS '证件签发机关代码';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjccqfrq IS '证件初次签发日期';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjzxrq IS '证件注销日期';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjzxyy IS '证件注销原因';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjlx IS '证件类型';\nCOMMENT ON COLUMN dwd_zrr_nlzzxx_new.zjsjc IS '证件时间戳';", database_name: "zrr", name: "dwd_zrr_nlzzxx_new", table_name: "dwd_zrr_nlzzxx_new", comment: "能力资质信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_gsbxjnjl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(800),\n    sbbm VARCHAR(200),\n    sbxzlx VARCHAR(50),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(50),\n    sbjfrq DATE,\n    sbjfqsrq VARCHAR(50),\n    sbjfjzrq VARCHAR(50),\n    sbjfgz VARCHAR(50),\n    sbjfjs VARCHAR(50),\n    sbjfyf VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_gsbxjnjl_new IS '工伤保险缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbbm IS '社保编码';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbxzlx IS '社保险种类型';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbjfrq IS '社保缴费日期';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbjfqsrq IS '社保缴费起始日期';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbjfjzrq IS '社保缴费截止日期';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbjfgz IS '社保缴费工资';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbjfjs IS '社保缴费基数';\nCOMMENT ON COLUMN dwd_zrr_gsbxjnjl_new.sbjfyf IS '社保缴费月份';", database_name: "zrr", name: "dwd_zrr_gsbxjnjl_new", table_name: "dwd_zrr_gsbxjnjl_new", comment: "工伤保险缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zyshbzjnjl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(800),\n    sbbm VARCHAR(200),\n    sbxzlx VARCHAR(50),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(50),\n    sbjfrq VARCHAR(50),\n    sbjfqsrq VARCHAR(50),\n    sbjfjzrq VARCHAR(50),\n    sbjfgz VARCHAR(50),\n    sbjfjs VARCHAR(50),\n    sbjfyf VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_zyshbzjnjl_new IS '职业伤害保障缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbbm IS '社保编码';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbxzlx IS '社保险种类型';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbjfrq IS '社保缴费日期';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbjfqsrq IS '社保缴费起始日期';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbjfjzrq IS '社保缴费截止日期';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbjfgz IS '社保缴费工资';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbjfjs IS '社保缴费基数';\nCOMMENT ON COLUMN dwd_zrr_zyshbzjnjl_new.sbjfyf IS '社保缴费月份';", database_name: "zrr", name: "dwd_zrr_zyshbzjnjl_new", table_name: "dwd_zrr_zyshbzjnjl_new", comment: "职业伤害保障缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_sybxjnjl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    sbbm CHAR(144),\n    sbxzlx CHAR(24),\n    dwmc CHAR(144),\n    dwtyshxydm CHAR(18),\n    sbjfrq DATE,\n    sbjfqsrq DATE,\n    sbjfjzrq DATE,\n    sbjfgz NUMERIC,\n    sbjfjs NUMERIC,\n    sbjfyf CHAR(48)\n);\n\nCOMMENT ON TABLE dwd_zrr_sybxjnjl_new IS '生育保险缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbbm IS '社保编码';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbxzlx IS '社保险种类型';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbjfrq IS '社保缴费日期';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbjfqsrq IS '社保缴费起始日期';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbjfjzrq IS '社保缴费截止日期';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbjfgz IS '社保缴费工资';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbjfjs IS '社保缴费基数';\nCOMMENT ON COLUMN dwd_zrr_sybxjnjl_new.sbjfyf IS '社保缴费月份';", database_name: "zrr", name: "dwd_zrr_sybxjnjl_new", table_name: "dwd_zrr_sybxjnjl_new", comment: "生育保险缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_xzqr_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xzqr_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    xzqrlb VARCHAR(800),\n    xzqrws VARCHAR(800),\n    xzqrrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_xzqr_new IS '行政确认';\nCOMMENT ON COLUMN dwd_zrr_xzqr_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xzqr_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xzqr_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xzqr_new.xzqrlb IS '行政确认类别';\nCOMMENT ON COLUMN dwd_zrr_xzqr_new.xzqrws IS '行政确认文书号';\nCOMMENT ON COLUMN dwd_zrr_xzqr_new.xzqrrq IS '行政确认日期';", database_name: "zrr", name: "dwd_zrr_xzqr_new", table_name: "dwd_zrr_xzqr_new", comment: "行政确认";

MERGE (n:PhysicalTable {name: "dwd_zrr_jtcx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jtcx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    cfsj DATE,\n    ddsj DATE,\n    sfzmc VARCHAR(800),\n    sfzdm VARCHAR(800),\n    ddzmc VARCHAR(800),\n    ddzdm VARCHAR(800),\n    xlmc VARCHAR(800),\n    gpsj TIMESTAMP,\n    gxsj TIMESTAMP\n);\n\nCOMMENT ON TABLE dwd_zrr_jtcx_new IS '交通出行';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.cfsj IS '出发时间';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.ddsj IS '到达时间';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.sfzmc IS '始发站名称';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.sfzdm IS '始发站代码';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.ddzmc IS '到达站名称';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.ddzdm IS '到达站代码';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.xlmc IS '线路名称';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.gpsj IS '购票时间';\nCOMMENT ON COLUMN dwd_zrr_jtcx_new.gxsj IS '更新时间';", database_name: "zrr", name: "dwd_zrr_jtcx_new", table_name: "dwd_zrr_jtcx_new", comment: "交通出行";

MERGE (n:PhysicalTable {name: "dwd_zrr_jyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jyxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    cyzk VARCHAR(800),\n    cjgzsj DATE,\n    csdqzyqsnf CHAR(4),\n    zylb CHAR(255),\n    zymc CHAR(255),\n    jrdpsj VARCHAR(50),\n    gzdwmc VARCHAR(800),\n    gzdwztlx VARCHAR(800),\n    gzdwtyshxydm CHAR(18),\n    szgzdwbmmc VARCHAR(200),\n    gzdwtxdz VARCHAR(800),\n    gzdwcz VARCHAR(50),\n    gzdwdhhm VARCHAR(50),\n    ldhtqsrq VARCHAR(50),\n    ldhtzzrq DATE,\n    rzrq VARCHAR(800),\n    lzrq VARCHAR(800),\n    gwlb VARCHAR(32),\n    xrgwsj VARCHAR(300)\n);\n\nCOMMENT ON TABLE dwd_zrr_jyxx_new IS '就业信息';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.cyzk IS '从业状况';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.cjgzsj IS '参加工作时间';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.csdqzyqsnf IS '从事当前专业起始年份';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.zylb IS '职业类别';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.zymc IS '职业名称';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.jrdpsj IS '加入党派时间';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.gzdwmc IS '工作单位名称';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.gzdwztlx IS '工作单位主体类型';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.gzdwtyshxydm IS '工作单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.szgzdwbmmc IS '工作单位部门名称';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.gzdwtxdz IS '工作单位通信地址';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.gzdwcz IS '工作单位传真';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.gzdwdhhm IS '工作单位电话号码';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.ldhtqsrq IS '劳动合同起始日期';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.ldhtzzrq IS '劳动合同终止日期';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.rzrq IS '入职日期';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.lzrq IS '离职日期';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.gwlb IS '岗位类别';\nCOMMENT ON COLUMN dwd_zrr_jyxx_new.xrgwsj IS '现任岗位时间';", database_name: "zrr", name: "dwd_zrr_jyxx_new", table_name: "dwd_zrr_jyxx_new", comment: "就业信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_zyzgxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zyzgxx_new (\n    zrrwybs VARCHAR(1600),\n    sfzjlx CHAR(400),\n    sfzjhm VARCHAR(1600),\n    zjbh VARCHAR(2000),\n    zjmc VARCHAR(800),\n    zjlx VARCHAR(3200),\n    zjqfjgmc VARCHAR(2000),\n    zjqfjgdm VARCHAR(1280),\n    zjzt CHAR(1600),\n    zjyxqq DATE,\n    zjyxqz DATE,\n    zjqfrq DATE,\n    xzzfssdq VARCHAR(2000),\n    zjccqfrq VARCHAR(1600),\n    zjzxrq DATE,\n    zjzxyy VARCHAR(4000),\n    xzqh VARCHAR(3200),\n    jszc VARCHAR(4000),\n    xb VARCHAR(2000),\n    xm VARCHAR(2000),\n    mz VARCHAR(1500),\n    gzks VARCHAR(3200),\n    gj VARCHAR(3200),\n    zyzyjg VARCHAR(3200),\n    zyfw VARCHAR(3200),\n    zjszdq VARCHAR(1600),\n    zjyxq DATE,\n    zyjb VARCHAR(400),\n    rzzg VARCHAR(800),\n    zzmm VARCHAR(3000),\n    sjhm_encode VARCHAR(2400),\n    zydwlxdh_encode VARCHAR(3000)\n);\n\nCOMMENT ON TABLE dwd_zrr_zyzgxx_new IS '执业资格信息';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjbh IS '证件编号';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjmc IS '证件名称';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjlx IS '证件类型';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjqfjgmc IS '证件签发机关名称';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjqfjgdm IS '证件签发机关代码';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjzt IS '证件状态';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjyxqq IS '证件有效期起';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjyxqz IS '证件有效期止';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjqfrq IS '证件签发日期';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.xzzfssdq IS '行政执法所属地区';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjccqfrq IS '证件初次签发日期';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjzxrq IS '证件注销日期';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjzxyy IS '证件注销原因';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.xzqh IS '行政区划';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.jszc IS '技术职称';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.xb IS '性别';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.xm IS '姓名';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.mz IS '民族';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.gzks IS '工作科室';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.gj IS '国籍';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zyzyjg IS '主要执业机构';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zyfw IS '执业范围';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjszdq IS '证件所在地区';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zjyxq IS '证件有效期';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zyjb IS '执业级别';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.rzzg IS '任职资格';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zzmm IS '政治面貌';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.sjhm_encode IS '手机号码';\nCOMMENT ON COLUMN dwd_zrr_zyzgxx_new.zydwlxdh_encode IS '执业单位联系电话';", database_name: "zrr", name: "dwd_zrr_zyzgxx_new", table_name: "dwd_zrr_zyzgxx_new", comment: "执业资格信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_hhxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_hhxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    swrq DATE,\n    swsj TIMESTAMP,\n    swyy CHAR(24),\n    hhzjbh VARCHAR(512),\n    hhrq DATE,\n    hhszbyg VARCHAR(800)\n);\n\nCOMMENT ON TABLE dwd_zrr_hhxx_new IS '火化信息';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.swrq IS '死亡日期';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.swsj IS '死亡时间';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.swyy IS '死亡原因';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.hhzjbh IS '火化证件编号';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.hhrq IS '火化日期';\nCOMMENT ON COLUMN dwd_zrr_hhxx_new.hhszbyg IS '火化所在殡仪馆';", database_name: "zrr", name: "dwd_zrr_hhxx_new", table_name: "dwd_zrr_hhxx_new", comment: "火化信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_swzxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_swzxxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    swrq DATE,\n    swsj TIMESTAMP,\n    swyy CHAR(24),\n    swzxlx CHAR(8),\n    swzxsj DATE,\n    swzxjgmc VARCHAR(400)\n);\n\nCOMMENT ON TABLE dwd_zrr_swzxxx_new IS '死亡注销信息';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.swrq IS '死亡日期';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.swsj IS '死亡时间';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.swyy IS '死亡原因';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.swzxlx IS '死亡注销类型';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.swzxsj IS '死亡注销时间';\nCOMMENT ON COLUMN dwd_zrr_swzxxx_new.swzxjgmc IS '死亡注销机构名称';", database_name: "zrr", name: "dwd_zrr_swzxxx_new", table_name: "dwd_zrr_swzxxx_new", comment: "死亡注销信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_qzzxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_qzzxxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    qzzxsqzxr VARCHAR(400),\n    qzzxfydm VARCHAR(400),\n    qzzxfymc VARCHAR(800),\n    qzzxyjwsh VARCHAR(800),\n    qzzxlasj DATE,\n    zcqzzxyjdw VARCHAR(800),\n    bqzzxrdlxqk VARCHAR(800),\n    qzzxfbsj DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_qzzxxx_new IS '强制执行信息';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.qzzxsqzxr IS '强制执行申请执行人';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.qzzxfydm IS '强制执行法院代码';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.qzzxfymc IS '强制执行法院名称';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.qzzxyjwsh IS '强制执行依据文书号';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.qzzxlasj IS '强制执行立案时间';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.zcqzzxyjdw IS '做出强制执行依据单位';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.bqzzxrdlxqk IS '被强制执行人的履行情况';\nCOMMENT ON COLUMN dwd_zrr_qzzxxx_new.qzzxfbsj IS '强制执行发布时间';", database_name: "zrr", name: "dwd_zrr_qzzxxx_new", table_name: "dwd_zrr_qzzxxx_new", comment: "强制执行信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_xzjf_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xzjf_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx VARCHAR(100),\n    sfzjhm VARCHAR(200),\n    xzgfsx VARCHAR(2000),\n    xzgfshjg VARCHAR(1000),\n    xzgffy VARCHAR(300),\n    xzgfrq VARCHAR(30)\n);\n\nCOMMENT ON TABLE dwd_zrr_xzjf_new IS '行政给付';\nCOMMENT ON COLUMN dwd_zrr_xzjf_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xzjf_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xzjf_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xzjf_new.xzgfsx IS '行政给付事项';\nCOMMENT ON COLUMN dwd_zrr_xzjf_new.xzgfshjg IS '行政给付审核结果';\nCOMMENT ON COLUMN dwd_zrr_xzjf_new.xzgffy IS '行政给付费用';\nCOMMENT ON COLUMN dwd_zrr_xzjf_new.xzgfrq IS '行政给付日期';", database_name: "zrr", name: "dwd_zrr_xzjf_new", table_name: "dwd_zrr_xzjf_new", comment: "行政给付";

MERGE (n:PhysicalTable {name: "dwd_zrr_jbdjxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jbdjxx_new (\n    zrrwybs VARCHAR(255),\n    sfzjlx VARCHAR(255),\n    sfzjhm VARCHAR(255),\n    xm VARCHAR(200),\n    cym VARCHAR(200),\n    xb VARCHAR(10),\n    csrq DATE,\n    mz VARCHAR(20),\n    gj VARCHAR(300),\n    zzmm VARCHAR(255),\n    zjxy VARCHAR(20),\n    byzk VARCHAR(20)\n);\n\nCOMMENT ON TABLE dwd_zrr_jbdjxx_new IS '基本登记信息';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.xm IS '姓名';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.cym IS '曾用名';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.xb IS '性别';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.csrq IS '出生日期';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.mz IS '民族';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.gj IS '国籍';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.zzmm IS '政治面貌';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.zjxy IS '宗教信仰';\nCOMMENT ON COLUMN dwd_zrr_jbdjxx_new.byzk IS '兵役状况';", database_name: "zrr", name: "dwd_zrr_jbdjxx_new", table_name: "dwd_zrr_jbdjxx_new", comment: "基本登记信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_ylbxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_ylbxxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(200),\n    shbzhm VARCHAR(200),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(200),\n    cbdxzqhdm VARCHAR(100),\n    cbksrq VARCHAR(50),\n    bcjfksny VARCHAR(50),\n    sbcbzt VARCHAR(200),\n    sbzzrq VARCHAR(50),\n    zhjlny VARCHAR(100),\n    zjfs VARCHAR(100),\n    ygxs VARCHAR(100),\n    grjfzt VARCHAR(50),\n    cbsf VARCHAR(100),\n    dfcbsfmz VARCHAR(50),\n    dfcbsfmc VARCHAR(100),\n    ldgxksrq DATE,\n    ldgxzzrq DATE,\n    dqyxbz VARCHAR(50),\n    rycbgxlx VARCHAR(100),\n    jfrylb VARCHAR(50),\n    grcbrq VARCHAR(50),\n    xzlx VARCHAR(200)\n);\n\nCOMMENT ON TABLE dwd_zrr_ylbxxx_new IS '养老保险信息';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.shbzhm IS '社会保障号码';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.cbdxzqhdm IS '参保所属地';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.cbksrq IS '参保开始日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.bcjfksny IS '本次缴费开始年月';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.sbcbzt IS '社保参保状态';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.sbzzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.zhjlny IS '账户建立年月';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.zjfs IS '征缴方式';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.ygxs IS '用工形式';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.grjfzt IS '个人缴费状态';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.cbsf IS '参保身份';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.dfcbsfmz IS '地方参保身份码值';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.dfcbsfmc IS '地方参保身份名称';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.ldgxksrq IS '劳动关系开始日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.ldgxzzrq IS '劳动关系终止日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.dqyxbz IS '当前有效标志';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.rycbgxlx IS '人员参保关系类型';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.jfrylb IS '缴费人员类别';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.grcbrq IS '个人参保日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxxx_new.xzlx IS '险种类型';", database_name: "zrr", name: "dwd_zrr_ylbxxx_new", table_name: "dwd_zrr_ylbxxx_new", comment: "养老保险信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_wthd_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_wthd_new (\n    zrrwybs VARCHAR(1600),\n    sfzjlx CHAR(128),\n    sfzjhm VARCHAR(1600),\n    hdmc VARCHAR(3000),\n    zyzhdzsc DOUBLE PRECISION\n);\n\nCOMMENT ON TABLE dwd_zrr_wthd_new IS '文体活动';\nCOMMENT ON COLUMN dwd_zrr_wthd_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_wthd_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_wthd_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_wthd_new.hdmc IS '活动名称';\nCOMMENT ON COLUMN dwd_zrr_wthd_new.zyzhdzsc IS '志愿者活动总时长';", database_name: "zrr", name: "dwd_zrr_wthd_new", table_name: "dwd_zrr_wthd_new", comment: "文体活动";

MERGE (n:PhysicalTable {name: "dwd_zrr_nsxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_nsxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(200),\n    nsrsbh CHAR(500),\n    sz VARCHAR(400),\n    zrrnsdxm VARCHAR(2400),\n    sre NUMERIC,\n    nssksssq CHAR(200),\n    skssq INTEGER,\n    ynssde NUMERIC,\n    ynsl NUMERIC,\n    jsje NUMERIC,\n    sjse NUMERIC,\n    jnsj DATE,\n    zsjgmc VARCHAR(500),\n    grsdssdnf CHAR(50),\n    gszsjg CHAR(200),\n    gsjnpzhm CHAR(300)\n);\n\nCOMMENT ON TABLE dwd_zrr_nsxx_new IS '纳税信息';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.nsrsbh IS '纳税人识别号';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.sz IS '税种';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.zrrnsdxm IS '自然人纳税所得项目';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.sre IS '收入额';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.nssksssq IS '纳税税款所属时期';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.skssq IS '税款所属期';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.ynssde IS '应纳税所得额';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.ynsl IS '应纳税率';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.jsje IS '缴税金额';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.sjse IS '实缴税额';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.jnsj IS '缴纳时间';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.zsjgmc IS '征税机构名称';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.grsdssdnf IS '个人所得税所得年份';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.gszsjg IS '个税征收机关';\nCOMMENT ON COLUMN dwd_zrr_nsxx_new.gsjnpzhm IS '个税缴纳凭证号码';", database_name: "zrr", name: "dwd_zrr_nsxx_new", table_name: "dwd_zrr_nsxx_new", comment: "纳税信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_shiybxjnjl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(800),\n    sbbm VARCHAR(200),\n    sbxzlx VARCHAR(50),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(50),\n    sbjfrq VARCHAR(50),\n    sbjfqsrq VARCHAR(50),\n    sbjfjzrq VARCHAR(50),\n    sbjfgz VARCHAR(50),\n    sbjfjs VARCHAR(50),\n    sbjfyf VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_shiybxjnjl_new IS '失业保险缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbbm IS '社保编码';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbxzlx IS '社保险种类型';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbjfrq IS '社保缴费日期';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbjfqsrq IS '社保缴费起始日期';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbjfjzrq IS '社保缴费截止日期';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbjfgz IS '社保缴费工资';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbjfjs IS '社保缴费基数';\nCOMMENT ON COLUMN dwd_zrr_shiybxjnjl_new.sbjfyf IS '社保缴费月份';", database_name: "zrr", name: "dwd_zrr_shiybxjnjl_new", table_name: "dwd_zrr_shiybxjnjl_new", comment: "失业保险缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_ywjyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_ywjyxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx VARCHAR(200),\n    sfzjhm VARCHAR(800),\n    xxwybs VARCHAR(800),\n    xh VARCHAR(800),\n    njmc VARCHAR(400),\n    bjmc VARCHAR(400),\n    xxmc VARCHAR(255)\n);\n\nCOMMENT ON TABLE dwd_zrr_ywjyxx_new IS '义务教育信息';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.xxwybs IS '学校唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.xh IS '学号';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.njmc IS '年级名称';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.bjmc IS '班级名称';\nCOMMENT ON COLUMN dwd_zrr_ywjyxx_new.xxmc IS '学校名称';", database_name: "zrr", name: "dwd_zrr_ywjyxx_new", table_name: "dwd_zrr_ywjyxx_new", comment: "义务教育信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_dkxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_dkxx_new (\n    zrrwybs VARCHAR(255),\n    sfzjlx VARCHAR(255),\n    sfzjhm VARCHAR(255),\n    khyh VARCHAR(255),\n    ffje NUMERIC,\n    dklx VARCHAR(100)\n);\n\nCOMMENT ON TABLE dwd_zrr_dkxx_new IS '贷款信息';\nCOMMENT ON COLUMN dwd_zrr_dkxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_dkxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_dkxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_dkxx_new.khyh IS '开户银行';\nCOMMENT ON COLUMN dwd_zrr_dkxx_new.ffje IS '发放金额';\nCOMMENT ON COLUMN dwd_zrr_dkxx_new.dklx IS '贷款类型';", database_name: "zrr", name: "dwd_zrr_dkxx_new", table_name: "dwd_zrr_dkxx_new", comment: "贷款信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_gzjyxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_gzjyxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(100),\n    sfzjhm VARCHAR(2000),\n    xxwys VARCHAR(3000),\n    xh VARCHAR(1000),\n    njmc VARCHAR(1000),\n    bjmc VARCHAR(1000),\n    xxmc VARCHAR(800)\n);\n\nCOMMENT ON TABLE dwd_zrr_gzjyxx_new IS '高中教育信息';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.xxwys IS '学校唯一标识';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.xh IS '学号';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.njmc IS '年级名称';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.bjmc IS '班级名称';\nCOMMENT ON COLUMN dwd_zrr_gzjyxx_new.xxmc IS '学校名称';", database_name: "zrr", name: "dwd_zrr_gzjyxx_new", table_name: "dwd_zrr_gzjyxx_new", comment: "高中教育信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_xgswxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xgswxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    sxpjrq DATE,\n    jarg DATE,\n    ah VARCHAR(64)\n);\n\nCOMMENT ON TABLE dwd_zrr_xgswxx_new IS '宣告死亡信息';\nCOMMENT ON COLUMN dwd_zrr_xgswxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xgswxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xgswxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xgswxx_new.sxpjrq IS '死刑判决日期';\nCOMMENT ON COLUMN dwd_zrr_xgswxx_new.jarg IS '结案日期';\nCOMMENT ON COLUMN dwd_zrr_xgswxx_new.ah IS '案号';", database_name: "zrr", name: "dwd_zrr_xgswxx_new", table_name: "dwd_zrr_xgswxx_new", comment: "宣告死亡信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jdcjszjbxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx VARCHAR(10),\n    sfzjhm VARCHAR(800),\n    sjhm VARCHAR(400),\n    zjcx VARCHAR(400),\n    bldz VARCHAR(400),\n    cclzrq DATE,\n    yxqs DATE,\n    yxqz DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_jdcjszjbxx_new IS '机动车驾驶证基本信息';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.sjhm IS '手机号码';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.zjcx IS '准驾车型';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.bldz IS '办理地址';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.cclzrq IS '初次领证日期';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.yxqs IS '有效期始';\nCOMMENT ON COLUMN dwd_zrr_jdcjszjbxx_new.yxqz IS '有效期止';", database_name: "zrr", name: "dwd_zrr_jdcjszjbxx_new", table_name: "dwd_zrr_jdcjszjbxx_new", comment: "机动车驾驶证基本信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_gsbxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_gsbxxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(200),\n    shbzhm VARCHAR(200),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(200),\n    cbdxzqhdm VARCHAR(100),\n    cbksrq VARCHAR(50),\n    bcjfksny VARCHAR(50),\n    sbcbzt VARCHAR(200),\n    sbzzrq VARCHAR(50),\n    zhjlny VARCHAR(100),\n    zjfs VARCHAR(100),\n    ygxs VARCHAR(100),\n    grjfzt VARCHAR(50),\n    cbsf VARCHAR(100),\n    dfcbsfmz VARCHAR(50),\n    dfcbsfmc VARCHAR(100),\n    ldgxksrq DATE,\n    ldgxzzrq DATE,\n    dqyxbz VARCHAR(50),\n    rycbgxlx VARCHAR(100),\n    jfrylb VARCHAR(50),\n    grcbrq VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_gsbxxx_new IS '工伤保险信息';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.shbzhm IS '社会保障号码';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.cbdxzqhdm IS '参保所属地';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.cbksrq IS '参保开始日期';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.bcjfksny IS '本次缴费开始年月';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.sbcbzt IS '社保参保状态';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.sbzzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.zhjlny IS '账户建立年月';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.zjfs IS '征缴方式';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.ygxs IS '用工形式';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.grjfzt IS '个人缴费状态';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.cbsf IS '参保身份';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.dfcbsfmz IS '地方参保身份码值';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.dfcbsfmc IS '地方参保身份名称';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.ldgxksrq IS '劳动关系开始日期';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.ldgxzzrq IS '劳动关系终止日期';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.dqyxbz IS '当前有效标志';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.rycbgxlx IS '人员参保关系类型';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.jfrylb IS '缴费人员类别';\nCOMMENT ON COLUMN dwd_zrr_gsbxxx_new.grcbrq IS '个人参保日期';", database_name: "zrr", name: "dwd_zrr_gsbxxx_new", table_name: "dwd_zrr_gsbxxx_new", comment: "工伤保险信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_tsxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_tsxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    tsr VARCHAR(255),\n    tsnr VARCHAR(16000),\n    tsdh VARCHAR(800),\n    slssjblx CHAR(16),\n    blbm VARCHAR(800),\n    xzdwlx VARCHAR(160),\n    xfaqsjlx TEXT,\n    fkdjr VARCHAR(240)\n);\n\nCOMMENT ON TABLE dwd_zrr_tsxx_new IS '投诉信息';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.tsr IS '投诉人';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.tsnr IS '投诉内容';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.tsdh IS '投诉电话';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.slssjblx IS '受理申诉举报类型';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.blbm IS '办理部门';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.xzdwlx IS '协助单位类型';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.xfaqsjlx IS '消费安全事件类型';\nCOMMENT ON COLUMN dwd_zrr_tsxx_new.fkdjr IS '反馈登记人';", database_name: "zrr", name: "dwd_zrr_tsxx_new", table_name: "dwd_zrr_tsxx_new", comment: "投诉信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_swyxzmxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    swrq DATE,\n    swsj TIMESTAMP,\n    swyy CHAR(24),\n    swzmfzjg VARCHAR(400),\n    swzmqmz VARCHAR(4000)\n);\n\nCOMMENT ON TABLE dwd_zrr_swyxzmxx_new IS '死亡医学证明信息';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.swrq IS '死亡日期';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.swsj IS '死亡时间';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.swyy IS '死亡原因';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.swzmfzjg IS '死亡证明发证机关';\nCOMMENT ON COLUMN dwd_zrr_swyxzmxx_new.swzmqmz IS '死亡证明编号';", database_name: "zrr", name: "dwd_zrr_swyxzmxx_new", table_name: "dwd_zrr_swyxzmxx_new", comment: "死亡医学证明信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_gsrdxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_gsrdxx_new (\n    zrrwybs VARCHAR(320),\n    sfzjlx VARCHAR(12),\n    sfzjhm VARCHAR(320),\n    xm VARCHAR(60),\n    xb VARCHAR(6),\n    sshbw TEXT,\n    yrdw VARCHAR(200),\n    tyshxydm VARCHAR(30),\n    gsfssj VARCHAR(20),\n    gsrdsqrq DATE,\n    rdsqrygszggx TEXT,\n    gsrdrq VARCHAR(20),\n    gsrdjl TEXT,\n    rdyjlb VARCHAR(100),\n    sssdzygz VARCHAR(500),\n    sglb VARCHAR(100),\n    shcd TEXT,\n    zybmc VARCHAR(200),\n    jczybwhys NUMERIC\n);\n\nCOMMENT ON TABLE dwd_zrr_gsrdxx_new IS '工伤认定信息表';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.xm IS '姓名';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.xb IS '性别';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.sshbw IS '受伤害部位';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.yrdw IS '用人单位';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.tyshxydm IS '统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.gsfssj IS '工伤发生时间';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.gsrdsqrq IS '工伤认定申请日期';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.rdsqrygszggx IS '认定申请人与工伤职工关系';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.gsrdrq IS '工伤认定日期';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.gsrdjl IS '工伤认定结论';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.rdyjlb IS '认定依据类别';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.sssdzygz IS '受伤时的职业工种';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.sglb IS '事故类别';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.shcd IS '伤害程度';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.zybmc IS '职业病名称';\nCOMMENT ON COLUMN dwd_zrr_gsrdxx_new.jczybwhys IS '接触职业病危害月数';", database_name: "zrr", name: "dwd_zrr_gsrdxx_new", table_name: "dwd_zrr_gsrdxx_new", comment: "工伤认定信息表";

MERGE (n:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_sxhmdxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    sflrsxhmd INTEGER,\n    lrsxhmdrq DATE,\n    lrsxhmdsy VARCHAR(16000),\n    tcsxhmdrq DATE,\n    tcsxhmdyy VARCHAR(16000)\n);\n\nCOMMENT ON TABLE dwd_zrr_sxhmdxx_new IS '失信黑名单信息';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.sflrsxhmd IS '是否列入失信黑名单';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.lrsxhmdrq IS '列入失信黑名单日期';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.lrsxhmdsy IS '列入失信黑名单事由';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.tcsxhmdrq IS '退出失信黑名单日期';\nCOMMENT ON COLUMN dwd_zrr_sxhmdxx_new.tcsxhmdyy IS '退出失信黑名单原因';", database_name: "zrr", name: "dwd_zrr_sxhmdxx_new", table_name: "dwd_zrr_sxhmdxx_new", comment: "失信黑名单信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_jzxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jzxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    shjzlb VARCHAR(80),\n    jzzbh VARCHAR(400),\n    jzksrq DATE,\n    jzlb VARCHAR(1024),\n    jzfs VARCHAR(256),\n    jzyy VARCHAR(32000),\n    sfbdhj VARCHAR(128),\n    cjlb CHAR(128),\n    cjdj VARCHAR(160),\n    jtbh VARCHAR(1600),\n    tdjzdxlbmc VARCHAR(800),\n    dblx VARCHAR(1024),\n    dbjtlqje NUMERIC,\n    dbjzyxzh VARCHAR(1600),\n    dbjzyxmc VARCHAR(400),\n    jtzsr NUMERIC,\n    zpyy CHAR(16)\n);\n\nCOMMENT ON TABLE dwd_zrr_jzxx_new IS '救助信息';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.shjzlb IS '社会救助类别';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.jzzbh IS '救助证编号';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.jzksrq IS '救助开始日期';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.jzlb IS '救助类别';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.jzfs IS '救助方式';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.jzyy IS '救助原因';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.sfbdhj IS '是否本地户籍';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.cjlb IS '残疾类别';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.cjdj IS '残疾等级';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.jtbh IS '家庭编号';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.tdjzdxlbmc IS '特定救助对象类别名称';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.dblx IS '低保类型';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.dbjtlqje IS '救助金额';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.dbjzyxzh IS '低保救助银行账号';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.dbjzyxmc IS '低保救助银行名称';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.jtzsr IS '家庭总收入';\nCOMMENT ON COLUMN dwd_zrr_jzxx_new.zpyy IS '致贫原因';", database_name: "zrr", name: "dwd_zrr_jzxx_new", table_name: "dwd_zrr_jzxx_new", comment: "救助信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_jbxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_jbxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    xxlb CHAR(8),\n    gjzms VARCHAR(4000),\n    wtlb CHAR(48),\n    jtwt VARCHAR(16000)\n);\n\nCOMMENT ON TABLE dwd_zrr_jbxx_new IS '举报信息';\nCOMMENT ON COLUMN dwd_zrr_jbxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_jbxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_jbxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_jbxx_new.xxlb IS '信息类别';\nCOMMENT ON COLUMN dwd_zrr_jbxx_new.gjzms IS '关键字描述';\nCOMMENT ON COLUMN dwd_zrr_jbxx_new.wtlb IS '问题类别';\nCOMMENT ON COLUMN dwd_zrr_jbxx_new.jtwt IS '具体问题';", database_name: "zrr", name: "dwd_zrr_jbxx_new", table_name: "dwd_zrr_jbxx_new", comment: "举报信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_sfzjxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_sfzjxx_new (\n    zrrwybs VARCHAR(1600),\n    sfzjlx CHAR(400),\n    sfzjhm VARCHAR(1600),\n    sfzjyxq DATE,\n    zjyxqqsrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_sfzjxx_new IS '身份证件信息';\nCOMMENT ON COLUMN dwd_zrr_sfzjxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_sfzjxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_sfzjxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sfzjxx_new.sfzjyxq IS '身份证件有效期';\nCOMMENT ON COLUMN dwd_zrr_sfzjxx_new.zjyxqqsrq IS '证件有效期起始日期';", database_name: "zrr", name: "dwd_zrr_sfzjxx_new", table_name: "dwd_zrr_sfzjxx_new", comment: "身份证件信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_sltz_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_sltz_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    jkzk CHAR(8),\n    tz NUMERIC,\n    sg NUMERIC,\n    cjzh VARCHAR(500),\n    cjlx CHAR(16),\n    cjdj VARCHAR(80)\n);\n\nCOMMENT ON TABLE dwd_zrr_sltz_new IS '生理体征';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.jkzk IS '健康状况';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.tz IS '体重';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.sg IS '身高';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.cjzh IS '残疾证号';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.cjlx IS '残疾类型';\nCOMMENT ON COLUMN dwd_zrr_sltz_new.cjdj IS '残疾等级';", database_name: "zrr", name: "dwd_zrr_sltz_new", table_name: "dwd_zrr_sltz_new", comment: "生理体征";

MERGE (n:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_ylbxjnjl_new (\n    zrrwybs VARCHAR(800),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(800),\n    sbbm VARCHAR(200),\n    sbxzlx VARCHAR(50),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(50),\n    sbjfrq VARCHAR(50),\n    sbjfqsrq VARCHAR(50),\n    sbjfjzrq VARCHAR(50),\n    sbjfgz VARCHAR(50),\n    sbjfjs VARCHAR(50),\n    sbjfyf VARCHAR(50)\n);\n\nCOMMENT ON TABLE dwd_zrr_ylbxjnjl_new IS '养老社保缴纳记录';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbbm IS '社保编码';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbxzlx IS '社保险种类型';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbjfrq IS '社保缴费日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbjfqsrq IS '社保缴费起始日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbjfjzrq IS '社保缴费截止日期';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbjfgz IS '社保缴费工资';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbjfjs IS '社保缴费基数';\nCOMMENT ON COLUMN dwd_zrr_ylbxjnjl_new.sbjfyf IS '社保缴费月份';", database_name: "zrr", name: "dwd_zrr_ylbxjnjl_new", table_name: "dwd_zrr_ylbxjnjl_new", comment: "养老社保缴纳记录";

MERGE (n:PhysicalTable {name: "dwd_zrr_xzcf_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xzcf_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    xzcfdxszzzjgtyshxydm CHAR(144),\n    xzcfdxszzzjgdm VARCHAR(240),\n    xzcfzl CHAR(40),\n    xzwfxwlx VARCHAR(320),\n    xzcfjdswh VARCHAR(800),\n    xzcfnr VARCHAR(16000),\n    xzcfjd VARCHAR(8000),\n    xzcfyj VARCHAR(16000),\n    xzcfrq DATE,\n    xzcfjkbj VARCHAR(800),\n    xzcfnx VARCHAR(400),\n    xzcfjg VARCHAR(800),\n    xzcfjgbhxzcfjgbh VARCHAR(800),\n    xzcfbmjb VARCHAR(160),\n    blxwdjrq DATE,\n    xzwfxwfsrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_xzcf_new IS '行政处罚';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfdxszzzjgtyshxydm IS '行政处罚对象所在组织机构统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfdxszzzjgdm IS '行政处罚对象所在组织机构代码';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfzl IS '行政处罚种类';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzwfxwlx IS '行政违法行为类型';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfjdswh IS '行政处罚决定书文号';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfnr IS '行政处罚内容';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfjd IS '行政处罚决定';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfyj IS '行政处罚依据';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfrq IS '行政处罚日期';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfjkbj IS '行政处罚交款标记';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfnx IS '行政处罚年限';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfjg IS '行政处罚机关';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfjgbhxzcfjgbh IS '行政处罚机构编号(行政处罚机关编号)';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzcfbmjb IS '行政处罚部门级别';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.blxwdjrq IS '不良行为登记日期';\nCOMMENT ON COLUMN dwd_zrr_xzcf_new.xzwfxwfsrq IS '行政违法行为发生日期';", database_name: "zrr", name: "dwd_zrr_xzcf_new", table_name: "dwd_zrr_xzcf_new", comment: "行政处罚";

MERGE (n:PhysicalTable {name: "dwd_zrr_zcxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zcxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx VARCHAR(50),\n    sfzjhm VARCHAR(800),\n    xm VARCHAR(400),\n    zcmc VARCHAR(2000),\n    xcszyjsgz VARCHAR(2000),\n    dwmc VARCHAR(2000),\n    xxzzw VARCHAR(2000),\n    pdsj DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_zcxx_new IS '职称信息';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.xm IS '姓名';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.zcmc IS '职称名称';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.xcszyjsgz IS '现从事专业技术工作';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.xxzzw IS '现行政职务';\nCOMMENT ON COLUMN dwd_zrr_zcxx_new.pdsj IS '评定时间';", database_name: "zrr", name: "dwd_zrr_zcxx_new", table_name: "dwd_zrr_zcxx_new", comment: "职称信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_sfajxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_sfajxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx VARCHAR(16),\n    sfzjhm VARCHAR(800),\n    sfajah VARCHAR(800),\n    sfajahdm VARCHAR(800),\n    sfajygr VARCHAR(800),\n    sfajay VARCHAR(2400),\n    sfajlarq DATE,\n    sfajpjg VARCHAR(2560),\n    zxajbjrq DATE,\n    zxajjafs VARCHAR(2000),\n    sfajbgr VARCHAR(800),\n    bgsfzjhm VARCHAR(800),\n    fymc VARCHAR(200),\n    ajlx VARCHAR(200)\n);\n\nCOMMENT ON TABLE dwd_zrr_sfajxx_new IS '司法案件信息';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfajah IS '司法案件案号';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfajahdm IS '司法案件案号代码';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfajygr IS '司法案件原告人';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfajay IS '司法案件案由';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfajlarq IS '司法案件立案日期';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfajpjg IS '司法案件判决结果';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.zxajbjrq IS '执行案件报结日期';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.zxajjafs IS '执行案件结案方式';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.sfajbgr IS '司法案件被告人';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.bgsfzjhm IS '被告身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.fymc IS '法院名称';\nCOMMENT ON COLUMN dwd_zrr_sfajxx_new.ajlx IS '案件类型';", database_name: "zrr", name: "dwd_zrr_sfajxx_new", table_name: "dwd_zrr_sfajxx_new", comment: "司法案件信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_njxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_njxx_new (\n    zrrwybs VARCHAR(800),\n    njjjhm VARCHAR(2040),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(800),\n    njjsscrs INTEGER,\n    njlx VARCHAR(2040)\n);\n\nCOMMENT ON TABLE dwd_zrr_njxx_new IS '农机信息';\nCOMMENT ON COLUMN dwd_zrr_njxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_njxx_new.njjjhm IS '农机机架号码';\nCOMMENT ON COLUMN dwd_zrr_njxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_njxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_njxx_new.njjsscrs IS '农机驾驶室乘人数';\nCOMMENT ON COLUMN dwd_zrr_njxx_new.njlx IS '农机类型';", database_name: "zrr", name: "dwd_zrr_njxx_new", table_name: "dwd_zrr_njxx_new", comment: "农机信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_ycxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_ycxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    ycbm VARCHAR(255),\n    cjg VARCHAR(255),\n    cm VARCHAR(255),\n    ycdjzsbh VARCHAR(255)\n);\n\nCOMMENT ON TABLE dwd_zrr_ycxx_new IS '渔船信息';\nCOMMENT ON COLUMN dwd_zrr_ycxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ycxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_ycxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_ycxx_new.ycbm IS '渔船编码';\nCOMMENT ON COLUMN dwd_zrr_ycxx_new.cjg IS '船舶港';\nCOMMENT ON COLUMN dwd_zrr_ycxx_new.cm IS '船名';\nCOMMENT ON COLUMN dwd_zrr_ycxx_new.ycdjzsbh IS '渔船登记证书编号';", database_name: "zrr", name: "dwd_zrr_ycxx_new", table_name: "dwd_zrr_ycxx_new", comment: "渔船信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_ksxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_ksxx_new (\n    zrrwybs VARCHAR(800),\n    sfzjhm VARCHAR(800),\n    sfzjlx CHAR(16),\n    byrq DATE,\n    bylx VARCHAR(2040),\n    byzhm VARCHAR(2040),\n    dxbyscc VARCHAR(2040),\n    ksh VARCHAR(2040),\n    kmdm VARCHAR(2040),\n    kmmc VARCHAR(2040),\n    ksrq DATE,\n    kscj VARCHAR(2040)\n);\n\nCOMMENT ON TABLE dwd_zrr_ksxx_new IS '考试信息';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.byrq IS '毕业日期';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.bylx IS '毕业类型';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.byzhm IS '毕业证号码';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.dxbyscc IS '大学毕业生层次';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.ksh IS '考生号';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.kmdm IS '科目代码';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.kmmc IS '科目名称';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.ksrq IS '考试日期';\nCOMMENT ON COLUMN dwd_zrr_ksxx_new.kscj IS '考试成绩';", database_name: "zrr", name: "dwd_zrr_ksxx_new", table_name: "dwd_zrr_ksxx_new", comment: "考试信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_txxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_txxx_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx VARCHAR(20),\n    sfzjhm VARCHAR(800),\n    ltxzh VARCHAR(60),\n    sqtxyy VARCHAR(1600),\n    txsszdwmc VARCHAR(800),\n    ltxzw VARCHAR(160),\n    ltxrq DATE,\n    ltxzje NUMERIC,\n    ltxrylb VARCHAR(20),\n    cjgmgzrq VARCHAR(20),\n    fdltxrq DATE,\n    ltxlb VARCHAR(60),\n    dfltxlb VARCHAR(60),\n    dfltxlbmc VARCHAR(100),\n    dyxsksny VARCHAR(20),\n    shhglxs VARCHAR(100),\n    yctxbs VARCHAR(20),\n    txtxbs VARCHAR(20),\n    bcjtbs VARCHAR(20)\n);\n\nCOMMENT ON TABLE dwd_zrr_txxx_new IS '退休信息';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.ltxzh IS '离退休证号';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.sqtxyy IS '申请退休原因';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.txsszdwmc IS '退休时所在单位名称';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.ltxzw IS '离退休职务';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.ltxrq IS '离退休日期';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.ltxzje IS '离退休金总额';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.ltxrylb IS '离退休人员类别';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.cjgmgzrq IS '参加革命工作日期';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.fdltxrq IS '法定离退休日期';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.ltxlb IS '离退休类别';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.dfltxlb IS '地方离退休类别';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.dfltxlbmc IS '地方离退休类别名称';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.dyxsksny IS '待遇享受开始年月';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.shhglxs IS '社会化管理形式';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.yctxbs IS '延迟退休标识';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.txtxbs IS '弹性退休标识';\nCOMMENT ON COLUMN dwd_zrr_txxx_new.bcjtbs IS '病残津贴标识';", database_name: "zrr", name: "dwd_zrr_txxx_new", table_name: "dwd_zrr_txxx_new", comment: "退休信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_yilbxxx_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_yilbxxx_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    shbzhm VARCHAR(200),\n    dwmc VARCHAR(200),\n    dwtyshxydm VARCHAR(200),\n    cbdxzqhdm VARCHAR(100),\n    cbksrq DATE,\n    sbcbzt VARCHAR(200),\n    sbzzrq DATE,\n    zhjlny VARCHAR(100),\n    zjfs VARCHAR(100),\n    ygxs VARCHAR(100),\n    grjfzt CHAR(50),\n    cbsf VARCHAR(100),\n    dfcbsfmz CHAR(50),\n    dfcbsfmc VARCHAR(100),\n    ldgxksrq DATE,\n    ldgxzzrq DATE,\n    dqyxbz CHAR(50),\n    rycbgxlx VARCHAR(100),\n    jfrylb CHAR(50),\n    grcbrq DATE\n);\n\nCOMMENT ON TABLE dwd_zrr_yilbxxx_new IS '医疗保险信息';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.shbzhm IS '社会保障号码';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.dwmc IS '单位名称';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.dwtyshxydm IS '单位统一社会信用代码';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.cbdxzqhdm IS '参保所属地';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.cbksrq IS '参保开始日期';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.sbcbzt IS '社保参保状态';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.sbzzrq IS '社保终止日期';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.zhjlny IS '账户建立年月';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.zjfs IS '征缴方式';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.ygxs IS '用工形式';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.grjfzt IS '个人缴费状态';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.cbsf IS '参保身份';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.dfcbsfmz IS '地方参保身份码值';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.dfcbsfmc IS '地方参保身份名称';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.ldgxksrq IS '劳动关系开始日期';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.ldgxzzrq IS '劳动关系终止日期';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.dqyxbz IS '当前有效标志';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.rycbgxlx IS '人员参保关系类型';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.jfrylb IS '缴费人员类别';\nCOMMENT ON COLUMN dwd_zrr_yilbxxx_new.grcbrq IS '个人参保日期';", database_name: "zrr", name: "dwd_zrr_yilbxxx_new", table_name: "dwd_zrr_yilbxxx_new", comment: "医疗保险信息";

MERGE (n:PhysicalTable {name: "dwd_zrr_flyz_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_flyz_new (\n    zrrwybs VARCHAR(1000),\n    sfzjlx CHAR(16),\n    sfzjhm VARCHAR(1000),\n    ah VARCHAR(1000),\n    yzfs VARCHAR(1000),\n    slsj TIMESTAMP,\n    sjajmc VARCHAR(1000),\n    zdyy VARCHAR(1000),\n    zdjg VARCHAR(1000),\n    ajlb VARCHAR(1000),\n    scrq DATE,\n    ajcbr VARCHAR(1000),\n    ajcbdw VARCHAR(1000)\n);\n\nCOMMENT ON TABLE dwd_zrr_flyz_new IS '法律援助';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.ah IS '案号';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.yzfs IS '援助方式';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.slsj IS '受理时间';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.sjajmc IS '涉及案件名称';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.zdyy IS '指定原因';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.zdjg IS '指定机关';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.ajlb IS '案件类别';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.scrq IS '审查日期';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.ajcbr IS '案件承办人';\nCOMMENT ON COLUMN dwd_zrr_flyz_new.ajcbdw IS '案件承办单位';", database_name: "zrr", name: "dwd_zrr_flyz_new", table_name: "dwd_zrr_flyz_new", comment: "法律援助";

MERGE (n:PhysicalTable {name: "dwd_zrr_xzxk_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_xzxk_new (\n    zrrwybs VARCHAR(200),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(200),\n    xkwjlx VARCHAR(100),\n    xkbfjg VARCHAR(100),\n    xkbfrq DATE,\n    xkzt VARCHAR(100),\n    xkyxqz DATE,\n    xkyxqzh DATE,\n    xknr VARCHAR(4000)\n);\n\nCOMMENT ON TABLE dwd_zrr_xzxk_new IS '行政许可';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.xkwjlx IS '许可文件类型';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.xkbfjg IS '许可颁发机关';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.xkbfrq IS '许可颁发日期';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.xkzt IS '许可状态';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.xkyxqz IS '许可有效期自';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.xkyxqzh IS '许可有效期至';\nCOMMENT ON COLUMN dwd_zrr_xzxk_new.xknr IS '许可内容';", database_name: "zrr", name: "dwd_zrr_xzxk_new", table_name: "dwd_zrr_xzxk_new", comment: "行政许可";

MERGE (n:PhysicalTable {name: "dwd_zrr_zfgjj_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_zrr_zfgjj_new (\n    zrrwybs VARCHAR(3000),\n    sfzjlx CHAR(50),\n    sfzjhm VARCHAR(3000),\n    zfgjjzh CHAR(50),\n    zfgjjdwzh CHAR(100),\n    zfgjjjcjgh CHAR(500),\n    zfgjjkhrq DATE,\n    zfgjjzhzt CHAR(50),\n    zfgjjjcjs NUMERIC\n);\n\nCOMMENT ON TABLE dwd_zrr_zfgjj_new IS '住房公积金';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.zrrwybs IS '自然人唯一标识';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.sfzjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.sfzjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.zfgjjzh IS '住房公积金账号';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.zfgjjdwzh IS '住房公积金单位账号';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.zfgjjjcjgh IS '住房公积金缴存机构号';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.zfgjjkhrq IS '住房公积金开户日期';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.zfgjjzhzt IS '住房公积金账户状态';\nCOMMENT ON COLUMN dwd_zrr_zfgjj_new.zfgjjjcjs IS '住房公积金缴存基数';", database_name: "zrr", name: "dwd_zrr_zfgjj_new", table_name: "dwd_zrr_zfgjj_new", comment: "住房公积金";

MERGE (n:PhysicalTable {name: "dwd_swk_swrykzxxb_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_swk_swrykzxxb_new (\n    id BIGINT,\n    ryid VARCHAR(64),\n    swkbh VARCHAR(32),\n    hhzmbh VARCHAR(20),\n    swyy_mz VARCHAR(8),\n    swrq_mz VARCHAR(8),\n    swrq_wj VARCHAR(8),\n    swrq_yb VARCHAR(8),\n    ywrq_rs VARCHAR(8),\n    hhrq VARCHAR(8),\n    jarg VARCHAR(8),\n    ah VARCHAR(50),\n    dwmc_mz VARCHAR(200),\n    data_create_time TIMESTAMP(14),\n    data_update_time TIMESTAMP(14)\n);\n\nCOMMENT ON TABLE dwd_swk_swrykzxxb_new IS '死亡人员扩展信息';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.id IS '自增主键';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.ryid IS '自然人口';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.swkbh IS '死亡卡编号';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.hhzmbh IS '火化证明编号';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.swyy_mz IS '死亡原因(民政)';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.swrq_mz IS '死亡日期(民政)';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.swrq_wj IS '死亡日期(卫健)';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.swrq_yb IS '死亡日期(医保)';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.ywrq_rs IS '业务日期（人社）';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.hhrq IS '火化日期';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.jarg IS '结案日期';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.ah IS '案号';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.dwmc_mz IS '单位名称(民政)';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.data_create_time IS '数据入库时间';\nCOMMENT ON COLUMN dwd_swk_swrykzxxb_new.data_update_time IS '数据变动时间';", database_name: "swk", name: "dwd_swk_swrykzxxb_new", table_name: "dwd_swk_swrykzxxb_new", comment: "死亡人员扩展信息";

MERGE (n:PhysicalTable {name: "dwd_swk_swryjbxxb_new"})
  ON CREATE SET ddl_statement: "CREATE TABLE dwd_swk_swryjbxxb_new (\n    id BIGINT,\n    ryid VARCHAR(64),\n    zjhm VARCHAR(50),\n    zjlx VARCHAR(12),\n    xm_ga VARCHAR(50),\n    xm_mz VARCHAR(50),\n    xm_wj VARCHAR(50),\n    xm_fy VARCHAR(50),\n    xm_rs VARCHAR(50),\n    xm_yb VARCHAR(50),\n    mz VARCHAR(2),\n    xb VARCHAR(1),\n    GJ VARCHAR(3),\n    csrq VARCHAR(8),\n    fzcswbs VARCHAR(1),\n    xgswbs VARCHAR(1),\n    sjly VARCHAR(50),\n    swcxbs VARCHAR(1),\n    cybs VARCHAR(1),\n    data_create_time TIMESTAMP(14)\n    data_update_time TIMESTAMP(14)\n);\n\nCOMMENT ON TABLE dwd_swk_swryjbxxb_new IS '死亡人员基本信息';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.id IS 'ID';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.ryid IS '自然人ID';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.zjhm IS '身份证件号码';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.zjlx IS '身份证件类型';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xm_ga IS '姓名_公安';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xm_mz IS '姓名_民政';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xm_wj IS '姓名_卫健';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xm_fy IS '姓名_法院';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xm_rs IS '姓名_人社';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xm_yb IS '姓名_医保';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.mz IS '民族';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xb IS '性别';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.GJ IS '国籍';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.csrq IS '出生日期';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.fzcswbs IS '非正常死亡标识';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.xgswbs IS '宣告死亡标识';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.sjly IS '数据来源';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.swcxbs IS '死亡撤销标识';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.cybs IS '存疑标识';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.data_create_time IS '数据入库时间';\nCOMMENT ON COLUMN dwd_swk_swryjbxxb_new.data_update_time IS '数据变动时间';", database_name: "swk", name: "dwd_swk_swryjbxxb_new", table_name: "dwd_swk_swryjbxxb_new", comment: "死亡人员基本信息";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..255";

MERGE (n:DataElement {name: "身份件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份件类型", data_format: "C..255";

MERGE (n:DataElement {name: "身份件号码"})
  ON CREATE SET name: "身份件号码", data_format: "C..255";

MERGE (n:DataElement {name: "姓名"})
  ON CREATE SET business_description: "在户籍管理部门正式登记注册、人事档案中正式记载的姓氏名称", name: "姓名", data_format: "C..200";

MERGE (n:DataElement {name: "曾用名"})
  ON CREATE SET business_description: "公民过去在户籍管理部门正式登记注册、人事档案中正式记载并正式使用过的姓氏", name: "曾用名", data_format: "C..200";

MERGE (n:DataElement {name: "性别"})
  ON CREATE SET value_domain: "参考GB/T2261.1", business_description: "自然人的男女性别标识", name: "性别", data_format: "C..10";

MERGE (n:DataElement {name: "出生日期"})
  ON CREATE SET business_description: "出生证签署的，并在户籍部门正式登记注册、人事档案中记载的日期", name: "出生日期", data_format: "C..100";

MERGE (n:DataElement {name: "民族"})
  ON CREATE SET value_domain: "参考GB/T3304", business_description: "个人所属的、经国家认可在户籍管理部门登记注册的民族名称", name: "民族", data_format: "C..20";

MERGE (n:DataElement {name: "国籍"})
  ON CREATE SET value_domain: "参考GB/T2659", business_description: "公民所属的、并经认定具有特别地理和政治意义的国家", name: "国籍", data_format: "C..300";

MERGE (n:DataElement {name: "政治面貌"})
  ON CREATE SET value_domain: "参考GB/T4762", business_description: "政治面貌是一个人的政治身份最直接的反映，是指一个人所属的政党、政治团体", name: "政治面貌", data_format: "C..255";

MERGE (n:DataElement {name: "宗教信仰"})
  ON CREATE SET value_domain: "参考GA214.12", business_description: "自然人的宗教信仰", name: "宗教信仰", data_format: "C..20";

MERGE (n:DataElement {name: "兵役状况"})
  ON CREATE SET value_domain: "参考GA/T2000.36", business_description: "兵役状况代码", name: "兵役状况", data_format: "C..20";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET business_description: "证件号码", name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件有效期"})
  ON CREATE SET business_description: "证件有效期", name: "身份证件有效期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件有效期起始日期"})
  ON CREATE SET business_description: "证件有效期起始日期", name: "证件有效期起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "出生医学证明编号"})
  ON CREATE SET business_description: "由国家卫生与计划生育委员会统一印制，以省、自治区、直辖市为单位统一编号", name: "出生医学证明编号", data_format: "C160";

MERGE (n:DataElement {name: "证照状态"})
  ON CREATE SET name: "证照状态", data_format: "C160";

MERGE (n:DataElement {name: "出生医学证明父亲身份证号"})
  ON CREATE SET business_description: "出生医学证明父亲身份证号", name: "出生医学证明父亲身份证号", data_format: "C144";

MERGE (n:DataElement {name: "出生医学证明母亲身份证号"})
  ON CREATE SET business_description: "出生医学证明母亲身份证号", name: "出生医学证明母亲身份证号", data_format: "C144";

MERGE (n:DataElement {name: "出生医学证明签发日期"})
  ON CREATE SET business_description: "出生医学证明签发日期", name: "出生医学证明签发日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "出生医学证明签发机构"})
  ON CREATE SET business_description: "出生医学证明签发机构", name: "出生医学证明签发机构", data_format: "C..800";

MERGE (n:DataElement {name: "出生地行政区划详址"})
  ON CREATE SET business_description: "出生地行政区划详址", name: "出生地行政区划详址", data_format: "C..800";

MERGE (n:DataElement {name: "母亲姓名"})
  ON CREATE SET business_description: "母亲姓名", name: "母亲姓名", data_format: "C160";

MERGE (n:DataElement {name: "父亲姓名"})
  ON CREATE SET business_description: "父亲姓名", name: "父亲姓名", data_format: "C160";

MERGE (n:DataElement {name: "出生时间"})
  ON CREATE SET business_description: "出生的具体时间", name: "出生时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "出生孕周"})
  ON CREATE SET business_description: "新生儿出生时母亲妊娠时长，计量单位为天", name: "出生孕周", data_format: "n8";

MERGE (n:DataElement {name: "出生体重"})
  ON CREATE SET business_description: "出生时体重信息，计量单位为kg", name: "出生体重", data_format: "N(80,2)";

MERGE (n:DataElement {name: "出生身长"})
  ON CREATE SET value_domain: "参考WS36 4.4中4.3节", business_description: "出生时身长信息，计量单位为cm", name: "出生身长", data_format: "N(80,2)";

MERGE (n:DataElement {name: "出生地行政区划代码"})
  ON CREATE SET business_description: "出生地行政区划代码", name: "出生地行政区划代码", data_format: "C..200";

MERGE (n:DataElement {name: "儿童个人标识号"})
  ON CREATE SET business_description: "儿童个人标识号", name: "儿童个人标识号", data_format: "C..200";

MERGE (n:DataElement {name: "标识号类别"})
  ON CREATE SET business_description: "标识号类别", name: "标识号类别", data_format: "C..200";

MERGE (n:DataElement {name: "接生人员"})
  ON CREATE SET business_description: "接生人员", name: "接生人员", data_format: "C..200";

MERGE (n:DataElement {name: "医疗机构名称"})
  ON CREATE SET business_description: "医疗机构名称", name: "医疗机构名称", data_format: "C..400";

MERGE (n:DataElement {name: "新生儿姓名"})
  ON CREATE SET business_description: "新生儿姓名", name: "新生儿姓名", data_format: "C..100";

MERGE (n:DataElement {name: "新生儿性别"})
  ON CREATE SET business_description: "新生儿性别", name: "新生儿性别", data_format: "C..10";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "健康状况"})
  ON CREATE SET value_domain: "参考GB/T 2261 .3", business_description: "自然人身体基本状况及能适应工作的程度", name: "健康状况", data_format: "C8";

MERGE (n:DataElement {name: "体重"})
  ON CREATE SET business_description: "体重的测量值，计量单位为kg", name: "体重", data_format: "N(40,2)";

MERGE (n:DataElement {name: "身高"})
  ON CREATE SET business_description: "身高的测量值，计量单位为cm", name: "身高", data_format: "N(32,1)";

MERGE (n:DataElement {name: "残疾证号"})
  ON CREATE SET business_description: "第二代残疾人证件编号，身份证号+残疾类别编号+残疾等级编号", name: "残疾证号", data_format: "C176";

MERGE (n:DataElement {name: "残疾类型"})
  ON CREATE SET business_description: "残疾类型名称", name: "残疾类型", data_format: "C16";

MERGE (n:DataElement {name: "残疾等级"})
  ON CREATE SET value_domain: "参考GB/T 2634 1", business_description: "残疾等级名称", name: "残疾等级", data_format: "C..80";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "死亡日期"})
  ON CREATE SET business_description: "死亡日期", name: "死亡日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡时间"})
  ON CREATE SET business_description: "死亡时间", name: "死亡时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡原因"})
  ON CREATE SET business_description: "死亡原因", name: "死亡原因", data_format: "C24";

MERGE (n:DataElement {name: "死亡注销类型"})
  ON CREATE SET business_description: "死亡注销类型", name: "死亡注销类型", data_format: "C8";

MERGE (n:DataElement {name: "死亡注销时间"})
  ON CREATE SET business_description: "死亡注销时间", name: "死亡注销时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡注销机构名称"})
  ON CREATE SET business_description: "死亡注销机构名称", name: "死亡注销机构名称", data_format: "C..400";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "死亡日期"})
  ON CREATE SET business_description: "死亡日期", name: "死亡日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡时间"})
  ON CREATE SET business_description: "死亡时间", name: "死亡时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡原因"})
  ON CREATE SET business_description: "死亡原因", name: "死亡原因", data_format: "C24";

MERGE (n:DataElement {name: "死亡证明发证机关"})
  ON CREATE SET business_description: "死亡证明发证机关", name: "死亡证明发证机关", data_format: "C..400";

MERGE (n:DataElement {name: "死亡证明编号"})
  ON CREATE SET business_description: "死亡证明编号", name: "死亡证明编号", data_format: "C..4000";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "死亡日期"})
  ON CREATE SET business_description: "自然人的死亡日期", name: "死亡日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡时间"})
  ON CREATE SET business_description: "自然人的死亡时间", name: "死亡时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡原因"})
  ON CREATE SET value_domain: "参考GA/T 2000 .21", business_description: "自然人的死亡原因", name: "死亡原因", data_format: "C24";

MERGE (n:DataElement {name: "火化证件编号"})
  ON CREATE SET business_description: "火化证件编号", name: "火化证件编号", data_format: "C..512";

MERGE (n:DataElement {name: "火化日期"})
  ON CREATE SET business_description: "火化日期", name: "火化日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "火化所在殡仪馆"})
  ON CREATE SET business_description: "火化所在殡仪馆", name: "火化所在殡仪馆", data_format: "C..800";

MERGE (n:DataElement {name: "死刑判决日期"})
  ON CREATE SET business_description: "死刑判决日期", name: "死刑判决日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "结案日期"})
  ON CREATE SET business_description: "结案日期", name: "结案日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "案号"})
  ON CREATE SET business_description: "案号", name: "案号", data_format: "C..64";

MERGE (n:DataElement {name: "死亡标识"})
  ON CREATE SET business_description: "死亡标识", name: "死亡标识", data_format: "C..255";

MERGE (n:DataElement {name: "死亡注销类型"})
  ON CREATE SET business_description: "死亡注销类型", name: "死亡注销类型", data_format: "C..255";

MERGE (n:DataElement {name: "死亡注销"})
  ON CREATE SET business_description: "死亡注销时间", name: "死亡注销", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "死亡注销成时间"})
  ON CREATE SET business_description: "死亡注销时间", name: "死亡注销成时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "丧葬补助金额"})
  ON CREATE SET business_description: "自然人死亡后丧葬补助金额，单位：元", name: "丧葬补助金额", data_format: "N(160,2)";

MERGE (n:DataElement {name: "丧葬补助类型"})
  ON CREATE SET value_domain: "1-一次性补助；2-丧葬补助", business_description: "丧葬补助类型", name: "丧葬补助类型", data_format: "C8";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "籍贯"})
  ON CREATE SET business_description: "公民的祖居地(祖籍地)或出生时所在地参照公安部公通字[1995]91号文件，公民的籍贯应为本人出生时祖父的居住地(户口所在地);祖父去的，填写祖父去世时的户口所在地；祖父未落常住户口的，填写祖父应落常住户口的的地方；公民登记籍贯后，祖父又迁移户口的，该公民的籍贯不再随之更改", name: "籍贯", data_format: "C..100";

MERGE (n:DataElement {name: "户口类别"})
  ON CREATE SET value_domain: "参考GA/T2000.27", business_description: "公安部门对户籍管理的分类", name: "户口类别", data_format: "C..20";

MERGE (n:DataElement {name: "户籍所在地"})
  ON CREATE SET value_domain: "参考GB/T23705", business_description: "居民户口簿登记所在地", name: "户籍所在地", data_format: "C..200";

MERGE (n:DataElement {name: "户籍地省市县代码"})
  ON CREATE SET value_domain: "参考GB/T2260", business_description: "居民户口簿登记所在地所对应的省、市、区县行政区划代码", name: "户籍地省市县代码", data_format: "C..100";

MERGE (n:DataElement {name: "户籍地详址"})
  ON CREATE SET business_description: "户籍地详细地址", name: "户籍地详址", data_format: "C..2000";

MERGE (n:DataElement {name: "户籍地街路巷代码"})
  ON CREATE SET value_domain: "参考GB/T10114", business_description: "街路巷代码", name: "户籍地街路巷代码", data_format: "C..40";

MERGE (n:DataElement {name: "户主姓名"})
  ON CREATE SET business_description: "户口簿记载的户主姓名", name: "户主姓名", data_format: "C..100";

MERGE (n:DataElement {name: "户主身份号码"})
  ON CREATE SET business_description: "户口簿记载的户主公民身份证号码", name: "户主身份号码", data_format: "C..100";

MERGE (n:DataElement {name: "户籍签发单位"})
  ON CREATE SET business_description: "户籍签发单位", name: "户籍签发单位", data_format: "C50";

MERGE (n:DataElement {name: "户籍签发时间"})
  ON CREATE SET business_description: "户籍签发时间", name: "户籍签发时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "户籍注销标识"})
  ON CREATE SET value_domain: "参考GA214.18", business_description: "户籍注销标识", name: "户籍注销标识", data_format: "C..20";

MERGE (n:DataElement {name: "户籍注销日期"})
  ON CREATE SET business_description: "户籍注销日期", name: "户籍注销日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "男方自然人唯一标识"})
  ON CREATE SET business_description: "男方自然人唯一标识", name: "男方自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "女方自然人唯一标识"})
  ON CREATE SET business_description: "女方自然人唯一标识", name: "女方自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "结离婚证字号"})
  ON CREATE SET business_description: "结离婚证字号", name: "结离婚证字号", data_format: "C400";

MERGE (n:DataElement {name: "婚姻状况(男)"})
  ON CREATE SET business_description: "婚姻状况(男)", name: "婚姻状况(男)", data_format: "C16";

MERGE (n:DataElement {name: "婚姻状况(女)"})
  ON CREATE SET business_description: "婚姻状况(女)", name: "婚姻状况(女)", data_format: "C16";

MERGE (n:DataElement {name: "登记日期"})
  ON CREATE SET business_description: "登记日期", name: "登记日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "男方姓名"})
  ON CREATE SET business_description: "男方姓名", name: "男方姓名", data_format: "C..800";

MERGE (n:DataElement {name: "男方身份证件类型"})
  ON CREATE SET business_description: "男方身份证件类型", name: "男方身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "男方身份身份证件号码"})
  ON CREATE SET business_description: "男方身份身份证件号码", name: "男方身份身份证件号码", data_format: "C..400";

MERGE (n:DataElement {name: "女方姓名"})
  ON CREATE SET business_description: "女方姓名", name: "女方姓名", data_format: "C..800";

MERGE (n:DataElement {name: "女方身份证件类型"})
  ON CREATE SET business_description: "女方身份证件类型", name: "女方身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "女方身份身份证件号码"})
  ON CREATE SET business_description: "女方身份身份证件号码", name: "女方身份身份证件号码", data_format: "C..400";

MERGE (n:DataElement {name: "出生日期(男)"})
  ON CREATE SET business_description: "出生日期(男)", name: "出生日期(男)", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "出生日期(女)"})
  ON CREATE SET business_description: "出生日期(女)", name: "出生日期(女)", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "身份类别(男)"})
  ON CREATE SET business_description: "身份类别(男)", name: "身份类别(男)", data_format: "C..800";

MERGE (n:DataElement {name: "身份类别(女)"})
  ON CREATE SET business_description: "身份类别(女)", name: "身份类别(女)", data_format: "C..800";

MERGE (n:DataElement {name: "国籍(男)"})
  ON CREATE SET business_description: "国籍(男)", name: "国籍(男)", data_format: "C..240";

MERGE (n:DataElement {name: "国籍(女)"})
  ON CREATE SET business_description: "国籍(女)", name: "国籍(女)", data_format: "C..240";

MERGE (n:DataElement {name: "民族(男)"})
  ON CREATE SET business_description: "民族(男)", name: "民族(男)", data_format: "C..4000";

MERGE (n:DataElement {name: "民族(女)"})
  ON CREATE SET business_description: "民族(女)", name: "民族(女)", data_format: "C..800";

MERGE (n:DataElement {name: "印制号（男）"})
  ON CREATE SET business_description: "印制号（男）", name: "印制号（男）", data_format: "C16";

MERGE (n:DataElement {name: "印制号（女）"})
  ON CREATE SET business_description: "印制号（女）", name: "印制号（女）", data_format: "C16";

MERGE (n:DataElement {name: "离婚判决案号"})
  ON CREATE SET business_description: "离婚判决案号", name: "离婚判决案号", data_format: "C..200";

MERGE (n:DataElement {name: "结案日期"})
  ON CREATE SET business_description: "结案日期", name: "结案日期", data_format: "C..200";

MERGE (n:DataElement {name: "婚姻登记类型"})
  ON CREATE SET business_description: "婚姻登记类型", name: "婚姻登记类型", data_format: "C..255";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET business_description: "由特定机构颁发的可以证明个人身份的证件的名称。", name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "被监护人身份证件号码"})
  ON CREATE SET name: "被监护人身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "被监护人姓名"})
  ON CREATE SET business_description: "被监护人姓名", name: "被监护人姓名", data_format: "C..800";

MERGE (n:DataElement {name: "监护人身份证件类型"})
  ON CREATE SET business_description: "监护人身份证件类型", name: "监护人身份证件类型", data_format: "C..100";

MERGE (n:DataElement {name: "监护人身份证件号码"})
  ON CREATE SET value_domain: "参考GB11643", business_description: "监护人身份证件号码", name: "监护人身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "监护人姓名"})
  ON CREATE SET business_description: "监护人姓名", name: "监护人姓名", data_format: "C..100";

MERGE (n:DataElement {name: "监护关系"})
  ON CREATE SET business_description: "监护关系", name: "监护关系", data_format: "C..100";

MERGE (n:DataElement {name: "父亲身份证件类型"})
  ON CREATE SET business_description: "父亲身份证件类型", name: "父亲身份证件类型", data_format: "C..100";

MERGE (n:DataElement {name: "父亲身份证件号码"})
  ON CREATE SET value_domain: "参考GB11643", business_description: "父亲身份证件号码", name: "父亲身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "父亲姓名"})
  ON CREATE SET business_description: "父亲姓名", name: "父亲姓名", data_format: "C..100";

MERGE (n:DataElement {name: "母亲身份证件类型"})
  ON CREATE SET business_description: "母亲身份证件类型", name: "母亲身份证件类型", data_format: "C..100";

MERGE (n:DataElement {name: "母亲身份证件号码"})
  ON CREATE SET value_domain: "参考GB11643", business_description: "母亲身份证件号码", name: "母亲身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "母亲姓名"})
  ON CREATE SET business_description: "母亲姓名", name: "母亲姓名", data_format: "C..100";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "邮箱账号"})
  ON CREATE SET business_description: "邮箱账号", name: "邮箱账号", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "地址编码"})
  ON CREATE SET business_description: "地址编码", name: "地址编码", data_format: "C200";

MERGE (n:DataElement {name: "地址名称"})
  ON CREATE SET business_description: "地址名称", name: "地址名称", data_format: "C..1000";

MERGE (n:DataElement {name: "省市区县"})
  ON CREATE SET business_description: "省市区县", name: "省市区县", data_format: "C600";

MERGE (n:DataElement {name: "乡镇或街道名称"})
  ON CREATE SET business_description: "乡镇或街道名称", name: "乡镇或街道名称", data_format: "C..1000";

MERGE (n:DataElement {name: "行政村或社区"})
  ON CREATE SET business_description: "行政村或社区", name: "行政村或社区", data_format: "C..1000";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "电话号码"})
  ON CREATE SET business_description: "电话号码", name: "电话号码", data_format: "C..50";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "农机机架号码"})
  ON CREATE SET business_description: "农机机架号码", name: "农机机架号码", data_format: "C..2040";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "农机驾驶室乘人数"})
  ON CREATE SET business_description: "农机驾驶室乘人数", name: "农机驾驶室乘人数", data_format: "N";

MERGE (n:DataElement {name: "农机类型"})
  ON CREATE SET value_domain: "参考NY/ T16 40", business_description: "农机类型", name: "农机类型", data_format: "C..2040";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "车辆识别代码"})
  ON CREATE SET value_domain: "参考GB 167 35", business_description: "车辆识别代码就是汽车的身份证号，它根据国家车辆管理标准确定，包含了车辆的生产厂家、年代、车型、车身型式及代码、发动机代码及组装地点等信息，是由17位字符组成", name: "车辆识别代码", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "车辆国产或进口"})
  ON CREATE SET value_domain: "1-国产2-进口", business_description: "指机动车是国产或者进口", name: "车辆国产或进口", data_format: "C8";

MERGE (n:DataElement {name: "车辆中文品牌"})
  ON CREATE SET business_description: "机动车品牌中文名称", name: "车辆中文品牌", data_format: "C..800";

MERGE (n:DataElement {name: "车辆型号"})
  ON CREATE SET business_description: "机动车车辆型号名称", name: "车辆型号", data_format: "C..256";

MERGE (n:DataElement {name: "车辆类型"})
  ON CREATE SET value_domain: "参考GA/ T 16. 4", business_description: "车辆类型", name: "车辆类型", data_format: "C..160";

MERGE (n:DataElement {name: "行驶证有效期至"})
  ON CREATE SET business_description: "行驶证有效期至", name: "行驶证有效期至", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "抵押物"})
  ON CREATE SET business_description: "抵押物", name: "抵押物", data_format: "C..2040";

MERGE (n:DataElement {name: "抵押状态"})
  ON CREATE SET value_domain: "1-正常2-注销", business_description: "抵押状态", name: "抵押状态", data_format: "C..2040";

MERGE (n:DataElement {name: "抵押期限起"})
  ON CREATE SET business_description: "抵押行为履行期限起", name: "抵押期限起", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "抵押期限止"})
  ON CREATE SET business_description: "抵押行为履行期限止", name: "抵押期限止", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "抵押权注销登记时间"})
  ON CREATE SET business_description: "抵押行为的结束时间", name: "抵押权注销登记时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "房屋地址"})
  ON CREATE SET business_description: "房屋的具体坐落地址", name: "房屋地址", data_format: "C..1600";

MERGE (n:DataElement {name: "房屋性质"})
  ON CREATE SET business_description: "具体指房屋的房屋性质一般都是说的产权性质(商品房、存量房、增量房、商业用房、经济适用住房、廉租房、解困房、集资房、房改房(已购公房)、微利房、平价房、回迁房、工业用房、公共租赁房、办公用房、公寓、农房、农民集聚房、农民公寓房)", name: "房屋性质", data_format: "C..800";

MERGE (n:DataElement {name: "房屋建筑面积"})
  ON CREATE SET business_description: "指外围水平面积及水平投影面积计算，房屋建筑面积其中包括房屋建筑面积、共有建筑面积、使用面积", name: "房屋建筑面积", data_format: "N(128,2)";

MERGE (n:DataElement {name: "房屋使用面积"})
  ON CREATE SET business_description: "套内建筑面积", name: "房屋使用面积", data_format: "N(128,2)";

MERGE (n:DataElement {name: "房屋名称"})
  ON CREATE SET business_description: "房屋所在小区名称及栋数", name: "房屋名称", data_format: "C..800";

MERGE (n:DataElement {name: "房屋房号"})
  ON CREATE SET business_description: "房屋的具体门牌号", name: "房屋房号", data_format: "C..800";

MERGE (n:DataElement {name: "购房合同签订日期"})
  ON CREATE SET business_description: "购房合同签订日期", name: "购房合同签订日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "开户银行"})
  ON CREATE SET business_description: "开户银行", name: "开户银行", data_format: "C..";

MERGE (n:DataElement {name: "发放金额"})
  ON CREATE SET business_description: "发放金额", name: "发放金额", data_format: "N(192,2)";

MERGE (n:DataElement {name: "贷款类型"})
  ON CREATE SET business_description: "贷款类型", name: "贷款类型", data_format: "C..100";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "出发时间"})
  ON CREATE SET business_description: "乘坐交通工具时的时间", name: "出发时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "到达时间"})
  ON CREATE SET business_description: "乘坐交通工具时的到达时间", name: "到达时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "始发站名称"})
  ON CREATE SET business_description: "乘坐交通工具时的起点名称，例如铁路出行的始发站，航班的起飞城市，轮船的始发港口", name: "始发站名称", data_format: "C..255";

MERGE (n:DataElement {name: "始发站代码"})
  ON CREATE SET business_description: "始发站代码", name: "始发站代码", data_format: "C..255";

MERGE (n:DataElement {name: "到达站名称"})
  ON CREATE SET business_description: "乘坐交通工具时的起点名称，例如铁路出行的始发站，航班到达的城市，轮船的到达港口", name: "到达站名称", data_format: "C..255";

MERGE (n:DataElement {name: "到达站代码"})
  ON CREATE SET business_description: "到达站代码", name: "到达站代码", data_format: "C..255";

MERGE (n:DataElement {name: "线路名称"})
  ON CREATE SET business_description: "交通线路名称", name: "线路名称", data_format: "C..255";

MERGE (n:DataElement {name: "购票时间"})
  ON CREATE SET business_description: "乘坐交通工具时的购票时间", name: "购票时间", data_format: "C..255";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "寄件人姓名"})
  ON CREATE SET business_description: "寄件人的姓名", name: "寄件人姓名", data_format: "C..800";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..1381";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C..1381";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..1381";

MERGE (n:DataElement {name: "医疗机构名称"})
  ON CREATE SET business_description: "医疗机构名称", name: "医疗机构名称", data_format: "C..100";

MERGE (n:DataElement {name: "孕产妇健康档案编号"})
  ON CREATE SET business_description: "孕产妇健康档案编号", name: "孕产妇健康档案编号", data_format: "C..20";

MERGE (n:DataElement {name: "产妇住院病案号"})
  ON CREATE SET business_description: "产妇住院病案号", name: "产妇住院病案号", data_format: "C..40";

MERGE (n:DataElement {name: "建档时间"})
  ON CREATE SET business_description: "建档时间", name: "建档时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "本次是否属于高危妊娠"})
  ON CREATE SET business_description: "本次是否属于高危妊娠", name: "本次是否属于高危妊娠", data_format: "C..5";

MERGE (n:DataElement {name: "妊娠合并症/并发症史"})
  ON CREATE SET business_description: "妊娠合并症/并发症史", name: "妊娠合并症/并发症史", data_format: "C..200";

MERGE (n:DataElement {name: "妊娠风险评估分级代码"})
  ON CREATE SET business_description: "妊娠风险评估分级代码", name: "妊娠风险评估分级代码", data_format: "C..10";

MERGE (n:DataElement {name: "孕次（次）"})
  ON CREATE SET business_description: "孕次（次）", name: "孕次（次）", data_format: "C..200";

MERGE (n:DataElement {name: "产次（次）"})
  ON CREATE SET business_description: "产次（次）", name: "产次（次）", data_format: "C..200";

MERGE (n:DataElement {name: "胎数"})
  ON CREATE SET business_description: "胎数", name: "胎数", data_format: "C..200";

MERGE (n:DataElement {name: "胎次"})
  ON CREATE SET business_description: "胎次", name: "胎次", data_format: "C..200";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "疫苗编码"})
  ON CREATE SET business_description: "疫苗编码", name: "疫苗编码", data_format: "C..500";

MERGE (n:DataElement {name: "接种类型"})
  ON CREATE SET business_description: "自然人接种疫苗的种类", name: "接种类型", data_format: "C..500";

MERGE (n:DataElement {name: "疫苗序号"})
  ON CREATE SET business_description: "疫苗序号", name: "疫苗序号", data_format: "C..500";

MERGE (n:DataElement {name: "生产企业"})
  ON CREATE SET business_description: "生产企业", name: "生产企业", data_format: "C..2000";

MERGE (n:DataElement {name: "接种日期"})
  ON CREATE SET business_description: "自然人接种疫苗的时间信息", name: "接种日期", data_format: "C..500";

MERGE (n:DataElement {name: "接种部位"})
  ON CREATE SET business_description: "接种部位", name: "接种部位", data_format: "C..500";

MERGE (n:DataElement {name: "接种医生"})
  ON CREATE SET business_description: "接种医生", name: "接种医生", data_format: "C..500";

MERGE (n:DataElement {name: "接种机构编码"})
  ON CREATE SET business_description: "接种机构编码", name: "接种机构编码", data_format: "C..500";

MERGE (n:DataElement {name: "费用标志"})
  ON CREATE SET business_description: "费用标志", name: "费用标志", data_format: "C..500";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..1381";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..1381";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C..1381";

MERGE (n:DataElement {name: "医疗机构代码"})
  ON CREATE SET business_description: "医疗机构代码", name: "医疗机构代码", data_format: "C..22";

MERGE (n:DataElement {name: "是否复诊"})
  ON CREATE SET business_description: "是否复诊", name: "是否复诊", data_format: "C..10";

MERGE (n:DataElement {name: "患者姓名"})
  ON CREATE SET business_description: "患者姓名", name: "患者姓名", data_format: "C..50";

MERGE (n:DataElement {name: "患者属性"})
  ON CREATE SET business_description: "患者属性", name: "患者属性", data_format: "C..20";

MERGE (n:DataElement {name: "是否急诊"})
  ON CREATE SET business_description: "是否急诊", name: "是否急诊", data_format: "C..1";

MERGE (n:DataElement {name: "就诊性质"})
  ON CREATE SET business_description: "就诊性质", name: "就诊性质", data_format: "C..10";

MERGE (n:DataElement {name: "就诊科室代码"})
  ON CREATE SET business_description: "科室代码", name: "就诊科室代码", data_format: "C..64";

MERGE (n:DataElement {name: "就诊科室名称"})
  ON CREATE SET business_description: "就诊科室名称", name: "就诊科室名称", data_format: "C..76";

MERGE (n:DataElement {name: "门诊就诊日期"})
  ON CREATE SET business_description: "门诊就诊日期", name: "门诊就诊日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "接诊时间"})
  ON CREATE SET business_description: "接诊时间", name: "接诊时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "完成就诊时间"})
  ON CREATE SET business_description: "完成就诊时间", name: "完成就诊时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "主诊医生编号"})
  ON CREATE SET business_description: "主诊医生编号", name: "主诊医生编号", data_format: "C..36";

MERGE (n:DataElement {name: "主诊医生姓名"})
  ON CREATE SET business_description: "主诊医生姓名", name: "主诊医生姓名", data_format: "C..50";

MERGE (n:DataElement {name: "门诊诊断代码"})
  ON CREATE SET business_description: "门诊主要诊断疾病编码", name: "门诊诊断代码", data_format: "C..64";

MERGE (n:DataElement {name: "门诊诊断名称（主要诊断）"})
  ON CREATE SET business_description: "自然人患疾病的临床诊断在特定分类体系中的名称", name: "门诊诊断名称（主要诊断）", data_format: "C..256";

MERGE (n:DataElement {name: "门诊诊断说明"})
  ON CREATE SET business_description: "门诊诊断说明", name: "门诊诊断说明", data_format: "C..512";

MERGE (n:DataElement {name: "主诉"})
  ON CREATE SET business_description: "因两组不同疾病的症状就诊时分段书写不管病人患有多少种疾病", name: "主诉", data_format: "C..1024";

MERGE (n:DataElement {name: "门诊症状-名称"})
  ON CREATE SET business_description: "门诊症状-名称", name: "门诊症状-名称", data_format: "C..120";

MERGE (n:DataElement {name: "门诊症状-诊断代码"})
  ON CREATE SET business_description: "门诊症状-诊断代码", name: "门诊症状-诊断代码", data_format: "C..40";

MERGE (n:DataElement {name: "留观观察"})
  ON CREATE SET business_description: "留观观察", name: "留观观察", data_format: "C..2";

MERGE (n:DataElement {name: "症状描述"})
  ON CREATE SET business_description: "症状描述", name: "症状描述", data_format: "C..1024";

MERGE (n:DataElement {name: "发病日期时间"})
  ON CREATE SET business_description: "发病日期时间", name: "发病日期时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "收缩压(mmhg)"})
  ON CREATE SET business_description: "收缩压(mmhg)", name: "收缩压(mmhg)", data_format: "N(10,2)";

MERGE (n:DataElement {name: "舒张压(mmhg)"})
  ON CREATE SET business_description: "舒张压(mmhg)", name: "舒张压(mmhg)", data_format: "N(10,2)";

MERGE (n:DataElement {name: "体温(℃)"})
  ON CREATE SET business_description: "体温(℃)", name: "体温(℃)", data_format: "N(10,2)";

MERGE (n:DataElement {name: "症状持续时间"})
  ON CREATE SET business_description: "症状持续时间", name: "症状持续时间", data_format: "C..3";

MERGE (n:DataElement {name: "门（急）诊号"})
  ON CREATE SET business_description: "按照某一特定编码规则赋予门诊就诊对象的顺序号", name: "门（急）诊号", data_format: "C..36";

MERGE (n:DataElement {name: "就诊流水号"})
  ON CREATE SET business_description: "就诊流水号", name: "就诊流水号", data_format: "C..36";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "学校唯一标识"})
  ON CREATE SET business_description: "学校唯一标识", name: "学校唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "学校名称"})
  ON CREATE SET business_description: "学校名称", name: "学校名称", data_format: "C..800";

MERGE (n:DataElement {name: "入学日期"})
  ON CREATE SET business_description: "入学年月日信息", name: "入学日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "毕业日期"})
  ON CREATE SET business_description: "毕业日期", name: "毕业日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "班级名称"})
  ON CREATE SET business_description: "所在班级名称", name: "班级名称", data_format: "C..255";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "学校唯一标识"})
  ON CREATE SET business_description: "学校唯一标识", name: "学校唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "学号"})
  ON CREATE SET business_description: "教育机构对学生的编号", name: "学号", data_format: "C..800";

MERGE (n:DataElement {name: "年级名称"})
  ON CREATE SET business_description: "所在年级名称", name: "年级名称", data_format: "C..400";

MERGE (n:DataElement {name: "班级名称"})
  ON CREATE SET business_description: "所在班级名称", name: "班级名称", data_format: "C..400";

MERGE (n:DataElement {name: "学校名称"})
  ON CREATE SET business_description: "学校名称", name: "学校名称", data_format: "C..800";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "学校唯一标识"})
  ON CREATE SET business_description: "学校唯一标识", name: "学校唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "学号"})
  ON CREATE SET business_description: "教育机构对学生的编号", name: "学号", data_format: "C..1000";

MERGE (n:DataElement {name: "年级名称"})
  ON CREATE SET business_description: "所在年级名称", name: "年级名称", data_format: "C..1000";

MERGE (n:DataElement {name: "班级名称"})
  ON CREATE SET business_description: "所在班级名称", name: "班级名称", data_format: "C..1000";

MERGE (n:DataElement {name: "学校名称"})
  ON CREATE SET business_description: "学校名称", name: "学校名称", data_format: "C..800";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "学校唯一标识"})
  ON CREATE SET business_description: "学校唯一标识", name: "学校唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "学号"})
  ON CREATE SET business_description: "教育机构对学生的编号", name: "学号", data_format: "C..800";

MERGE (n:DataElement {name: "入学日期"})
  ON CREATE SET business_description: "入学年月日信息", name: "入学日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "毕业日期"})
  ON CREATE SET business_description: "毕业日期", name: "毕业日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "所学专业"})
  ON CREATE SET value_domain: "参考GB/T 1683 5", business_description: "所学习的专业", name: "所学专业", data_format: "C..50";

MERGE (n:DataElement {name: "学制"})
  ON CREATE SET business_description: "专指各级各类学校的学习年限", name: "学制", data_format: "C50";

MERGE (n:DataElement {name: "年级名称"})
  ON CREATE SET business_description: "所在年级名称", name: "年级名称", data_format: "C..200";

MERGE (n:DataElement {name: "班级名称"})
  ON CREATE SET business_description: "所在班级名称", name: "班级名称", data_format: "C..200";

MERGE (n:DataElement {name: "学校名称"})
  ON CREATE SET business_description: "学校名称", name: "学校名称", data_format: "C..800";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "毕业日期"})
  ON CREATE SET business_description: "毕业日期", name: "毕业日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "毕业类型"})
  ON CREATE SET business_description: "毕业类型", name: "毕业类型", data_format: "C..2040";

MERGE (n:DataElement {name: "毕业证号码"})
  ON CREATE SET business_description: "毕业证号码", name: "毕业证号码", data_format: "C..2040";

MERGE (n:DataElement {name: "大学毕业生层次"})
  ON CREATE SET business_description: "大学毕业生层次", name: "大学毕业生层次", data_format: "C..2040";

MERGE (n:DataElement {name: "考生号"})
  ON CREATE SET business_description: "考生号", name: "考生号", data_format: "C..2040";

MERGE (n:DataElement {name: "科目代码"})
  ON CREATE SET business_description: "科目代码", name: "科目代码", data_format: "C..2040";

MERGE (n:DataElement {name: "科目名称"})
  ON CREATE SET business_description: "科目名称", name: "科目名称", data_format: "C..2040";

MERGE (n:DataElement {name: "考试日期"})
  ON CREATE SET business_description: "考试日期", name: "考试日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "考试成绩"})
  ON CREATE SET business_description: "考试成绩", name: "考试成绩", data_format: "C..2040";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "学历名称"})
  ON CREATE SET value_domain: "参考GB/T 4658", business_description: "受教育者在教育机构接受科学、文化知识训练并获得国家教育行政部门认可的学历证书的经历的名称(等同于文化程度)", name: "学历名称", data_format: "C..160";

MERGE (n:DataElement {name: "学历专业"})
  ON CREATE SET value_domain: "参考GB/T 1683 5", business_description: "学历专业", name: "学历专业", data_format: "C..48";

MERGE (n:DataElement {name: "学历授予单位"})
  ON CREATE SET business_description: "学历授予单位", name: "学历授予单位", data_format: "C..800";

MERGE (n:DataElement {name: "学历授予日期"})
  ON CREATE SET business_description: "指授予最高学历学位的年月日以学历证书的签发时间为准", name: "学历授予日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "学位类别码"})
  ON CREATE SET business_description: "学位类别码", name: "学位类别码", data_format: "C..400";

MERGE (n:DataElement {name: "学位名称"})
  ON CREATE SET value_domain: "参考GB/T 6864", business_description: "高等学校、科学研究机构或国家授予的表明专门人才学术水平的称号", name: "学位名称", data_format: "C..160";

MERGE (n:DataElement {name: "学位授予单位"})
  ON CREATE SET business_description: "学位授予单位", name: "学位授予单位", data_format: "C..800";

MERGE (n:DataElement {name: "学位授予日期"})
  ON CREATE SET business_description: "指授予最高学历学位的年月日以学位证书的签发时间为准", name: "学位授予日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "从业状况"})
  ON CREATE SET value_domain: "参考GB/T2261. 4", business_description: "按人员管理规定划分的人员的从业类别", name: "从业状况", data_format: "C..800";

MERGE (n:DataElement {name: "参加工作时间"})
  ON CREATE SET business_description: "根据有关规定经国家有关部门认定的首次参加工作的具体日期", name: "参加工作时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "从事当前专业起始年份"})
  ON CREATE SET business_description: "从事当前专业起始年份", name: "从事当前专业起始年份", data_format: "C4";

MERGE (n:DataElement {name: "职业类别"})
  ON CREATE SET value_domain: "参考GB/T14946 .1", business_description: "所从事的职业的类别", name: "职业类别", data_format: "C255";

MERGE (n:DataElement {name: "职业名称"})
  ON CREATE SET value_domain: "参考GB/T6565", business_description: "所从事的职业的名称", name: "职业名称", data_format: "C255";

MERGE (n:DataElement {name: "加入党派时间"})
  ON CREATE SET business_description: "加入党派时间", name: "加入党派时间", data_format: "C..50";

MERGE (n:DataElement {name: "工作单位名称"})
  ON CREATE SET business_description: "人员从业所在机构的名称", name: "工作单位名称", data_format: "C..800";

MERGE (n:DataElement {name: "工作单位主体类型"})
  ON CREATE SET business_description: "人员从业所在机构的主体类型", name: "工作单位主体类型", data_format: "C..800";

MERGE (n:DataElement {name: "工作单位统一社会信用代码"})
  ON CREATE SET business_description: "所在单位的统一社会信用代码", name: "工作单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "所在工作单位部门名称"})
  ON CREATE SET business_description: "工作单位内部部门名称", name: "所在工作单位部门名称", data_format: "C..200";

MERGE (n:DataElement {name: "工作单位通信地址"})
  ON CREATE SET business_description: "人员工作单位的邮政通信地址", name: "工作单位通信地址", data_format: "C..800";

MERGE (n:DataElement {name: "工作单位传真"})
  ON CREATE SET business_description: "工作单位传真", name: "工作单位传真", data_format: "C..50";

MERGE (n:DataElement {name: "工作单位电话号码"})
  ON CREATE SET business_description: "所在单位的电话号码", name: "工作单位电话号码", data_format: "C..50";

MERGE (n:DataElement {name: "劳动合同起始日期"})
  ON CREATE SET business_description: "劳动合同签署的起始年月日", name: "劳动合同起始日期", data_format: "C..50";

MERGE (n:DataElement {name: "劳动合同终止日期"})
  ON CREATE SET business_description: "解除劳动合同的年月日", name: "劳动合同终止日期", data_format: "C..50";

MERGE (n:DataElement {name: "入职日期"})
  ON CREATE SET business_description: "入职日期", name: "入职日期", data_format: "C..800";

MERGE (n:DataElement {name: "离职日期"})
  ON CREATE SET business_description: "离职日期", name: "离职日期", data_format: "C..800";

MERGE (n:DataElement {name: "岗位类别"})
  ON CREATE SET value_domain: "32-管理岗位14-专业技术岗位13-工勤技能岗位", business_description: "岗位类别", name: "岗位类别", data_format: "C..32";

MERGE (n:DataElement {name: "现任岗位时间"})
  ON CREATE SET business_description: "现任岗位时间", name: "现任岗位时间", data_format: "C..300";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "登记失业日期"})
  ON CREATE SET business_description: "登记失业日期", name: "登记失业日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "失业原因"})
  ON CREATE SET business_description: "失业原因", name: "失业原因", data_format: "C..500";

MERGE (n:DataElement {name: "就业困难类别"})
  ON CREATE SET business_description: "就业困难类别信息", name: "就业困难类别", data_format: "C5";

MERGE (n:DataElement {name: "就业创业证编号"})
  ON CREATE SET business_description: "就业创业登记登记信息编号", name: "就业创业证编号", data_format: "C..30";

MERGE (n:DataElement {name: "就业创业证发证机构"})
  ON CREATE SET business_description: "就业创业证证件发证机构名称", name: "就业创业证发证机构", data_format: "C..100";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "姓名"})
  ON CREATE SET business_description: "姓名", name: "姓名", data_format: "C..50";

MERGE (n:DataElement {name: "性别"})
  ON CREATE SET business_description: "性别", name: "性别", data_format: "C..10";

MERGE (n:DataElement {name: "受伤害部位"})
  ON CREATE SET business_description: "受伤害部位", name: "受伤害部位", data_format: "C..255";

MERGE (n:DataElement {name: "用人单位"})
  ON CREATE SET business_description: "用人单位", name: "用人单位", data_format: "C..50";

MERGE (n:DataElement {name: "统一社会信用代码"})
  ON CREATE SET business_description: "统一社会信用代码", name: "统一社会信用代码", data_format: "C..50";

MERGE (n:DataElement {name: "工伤发生时间"})
  ON CREATE SET business_description: "工伤发生时间", name: "工伤发生时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "工伤认定申请日期"})
  ON CREATE SET business_description: "工伤认定申请日期", name: "工伤认定申请日期", data_format: "C..20";

MERGE (n:DataElement {name: "认定申请人与工伤职工关系"})
  ON CREATE SET business_description: "认定申请人与工伤职工关系", name: "认定申请人与工伤职工关系", data_format: "C..50";

MERGE (n:DataElement {name: "工伤认定日期"})
  ON CREATE SET business_description: "工伤认定日期", name: "工伤认定日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "工伤认定结论"})
  ON CREATE SET business_description: "工伤认定结论", name: "工伤认定结论", data_format: "C..800";

MERGE (n:DataElement {name: "认定依据类别"})
  ON CREATE SET business_description: "认定依据类别", name: "认定依据类别", data_format: "C..50";

MERGE (n:DataElement {name: "受伤时的职业工种"})
  ON CREATE SET business_description: "受伤时的职业工种", name: "受伤时的职业工种", data_format: "C..50";

MERGE (n:DataElement {name: "事故类别"})
  ON CREATE SET business_description: "事故类别", name: "事故类别", data_format: "C..50";

MERGE (n:DataElement {name: "伤害程度"})
  ON CREATE SET business_description: "伤害程度", name: "伤害程度", data_format: "C..800";

MERGE (n:DataElement {name: "职业病名称"})
  ON CREATE SET business_description: "职业病名称", name: "职业病名称", data_format: "C..50";

MERGE (n:DataElement {name: "接触职业病危害月数"})
  ON CREATE SET business_description: "接触职业病危害月数", name: "接触职业病危害月数", data_format: "C..50";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "纳税人识别号"})
  ON CREATE SET business_description: "纳税人识别号码，一般为身份证号码，外国人采用国别和护照号码组合", name: "纳税人识别号", data_format: "C500";

MERGE (n:DataElement {name: "税种"})
  ON CREATE SET business_description: "税种名称", name: "税种", data_format: "C..400";

MERGE (n:DataElement {name: "自然人纳税所得项目"})
  ON CREATE SET business_description: "自然人纳税所得项目", name: "自然人纳税所得项目", data_format: "C..2400";

MERGE (n:DataElement {name: "收入额"})
  ON CREATE SET business_description: "税务收入金额，单位：元", name: "收入额", data_format: "N(20,2)";

MERGE (n:DataElement {name: "纳税税款所属时期"})
  ON CREATE SET business_description: "纳税人税款所属时期", name: "纳税税款所属时期", data_format: "C200";

MERGE (n:DataElement {name: "税款所属期"})
  ON CREATE SET business_description: "税款所属期", name: "税款所属期", data_format: "n8";

MERGE (n:DataElement {name: "应纳税所得额"})
  ON CREATE SET business_description: "应纳税所得金额", name: "应纳税所得额", data_format: "N(20,2)";

MERGE (n:DataElement {name: "应纳税率"})
  ON CREATE SET business_description: "税率信息", name: "应纳税率", data_format: "N(4,2)";

MERGE (n:DataElement {name: "缴税金额"})
  ON CREATE SET business_description: "缴纳税费的金额，单位：元", name: "缴税金额", data_format: "N(20,2)";

MERGE (n:DataElement {name: "实缴税额"})
  ON CREATE SET business_description: "实际缴纳税务金额，单位：元", name: "实缴税额", data_format: "N(20,2)";

MERGE (n:DataElement {name: "缴纳时间"})
  ON CREATE SET business_description: "缴纳时间", name: "缴纳时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "征税机构名称"})
  ON CREATE SET business_description: "征税机构名称", name: "征税机构名称", data_format: "C..500";

MERGE (n:DataElement {name: "个人所得税所得年份"})
  ON CREATE SET business_description: "个人所得税12万元申报时的年份", name: "个人所得税所得年份", data_format: "C50";

MERGE (n:DataElement {name: "个税征收机关"})
  ON CREATE SET business_description: "个人所得税征收机关名称", name: "个税征收机关", data_format: "C200";

MERGE (n:DataElement {name: "个税缴纳凭证号码"})
  ON CREATE SET business_description: "个人所得税纳税凭证号码", name: "个税缴纳凭证号码", data_format: "C300";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..3000";

MERGE (n:DataElement {name: "住房公积金账号"})
  ON CREATE SET business_description: "个人的住房公积金账号", name: "住房公积金账号", data_format: "C50";

MERGE (n:DataElement {name: "住房公积金单位账号"})
  ON CREATE SET business_description: "个人住房公积金单位缴存账号", name: "住房公积金单位账号", data_format: "C100";

MERGE (n:DataElement {name: "住房公积金缴存机构号"})
  ON CREATE SET business_description: "缴存公积金中心或分中心编号", name: "住房公积金缴存机构号", data_format: "C500";

MERGE (n:DataElement {name: "住房公积金开户日期"})
  ON CREATE SET business_description: "个人住房公积金账户开立的年月日", name: "住房公积金开户日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "住房公积金账户状态"})
  ON CREATE SET business_description: "个人账户状态代码", name: "住房公积金账户状态", data_format: "C50";

MERGE (n:DataElement {name: "住房公积金缴存基数"})
  ON CREATE SET business_description: "本年度住房公积金累计缴存基数", name: "住房公积金缴存基数", data_format: "N(20,2)";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "个人账号"})
  ON CREATE SET business_description: "个人账号", name: "个人账号", data_format: "C160";

MERGE (n:DataElement {name: "单位账号"})
  ON CREATE SET business_description: "单位账号", name: "单位账号", data_format: "C160";

MERGE (n:DataElement {name: "缴存机构号"})
  ON CREATE SET business_description: "缴存机构号", name: "缴存机构号", data_format: "C160";

MERGE (n:DataElement {name: "缴存基数"})
  ON CREATE SET business_description: "缴存基数", name: "缴存基数", data_format: "N(160,2)";

MERGE (n:DataElement {name: "个人缴存金额"})
  ON CREATE SET business_description: "个人缴存金额", name: "个人缴存金额", data_format: "N(160,2)";

MERGE (n:DataElement {name: "单位缴存金额"})
  ON CREATE SET business_description: "单位缴存金额", name: "单位缴存金额", data_format: "N(160,2)";

MERGE (n:DataElement {name: "缴存比例"})
  ON CREATE SET business_description: "缴存比例", name: "缴存比例", data_format: "C..2000";

MERGE (n:DataElement {name: "个人账户余额"})
  ON CREATE SET business_description: "个人账户余额", name: "个人账户余额", data_format: "N(160,2)";

MERGE (n:DataElement {name: "个人账户状态"})
  ON CREATE SET business_description: "个人账户状态", name: "个人账户状态", data_format: "C..2000";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..2000";

MERGE (n:DataElement {name: "汇缴月份"})
  ON CREATE SET business_description: "汇缴月份", name: "汇缴月份", data_format: "C48";

MERGE (n:DataElement {name: "缴存时间"})
  ON CREATE SET business_description: "缴存时间", name: "缴存时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C..20";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "离退休证号"})
  ON CREATE SET business_description: "离退休证号", name: "离退休证号", data_format: "C..60";

MERGE (n:DataElement {name: "申请退休原因"})
  ON CREATE SET business_description: "人员申请退休原因", name: "申请退休原因", data_format: "C..1600";

MERGE (n:DataElement {name: "退休时所在单位名称"})
  ON CREATE SET business_description: "个人退休时所在单位的名称", name: "退休时所在单位名称", data_format: "C..800";

MERGE (n:DataElement {name: "离退休职务"})
  ON CREATE SET business_description: "离退休时所属的职务", name: "离退休职务", data_format: "C..160";

MERGE (n:DataElement {name: "离退休日期"})
  ON CREATE SET business_description: "个人离退休日期", name: "离退休日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "离退休金总额"})
  ON CREATE SET business_description: "个人离退休金总额，单位：元", name: "离退休金总额", data_format: "N(160,2)";

MERGE (n:DataElement {name: "离退休人员类别"})
  ON CREATE SET value_domain: "1-离休2-退休", business_description: "离退休类别", name: "离退休人员类别", data_format: "C..20";

MERGE (n:DataElement {name: "参加革命工作日期"})
  ON CREATE SET business_description: "参加革命工作日期", name: "参加革命工作日期", data_format: "C..20";

MERGE (n:DataElement {name: "法定离退休日期"})
  ON CREATE SET business_description: "法定离退休日期", name: "法定离退休日期", data_format: "C..20";

MERGE (n:DataElement {name: "离退休类别"})
  ON CREATE SET business_description: "离退休类别", name: "离退休类别", data_format: "C..60";

MERGE (n:DataElement {name: "地方离退休类别"})
  ON CREATE SET business_description: "地方离退休类别", name: "地方离退休类别", data_format: "C..60";

MERGE (n:DataElement {name: "地方离退休类别名称"})
  ON CREATE SET business_description: "地方离退休类别名称", name: "地方离退休类别名称", data_format: "C..100";

MERGE (n:DataElement {name: "待遇享受开始年月"})
  ON CREATE SET business_description: "待遇享受开始年月", name: "待遇享受开始年月", data_format: "C..20";

MERGE (n:DataElement {name: "社会化管理形式"})
  ON CREATE SET business_description: "社会化管理形式", name: "社会化管理形式", data_format: "C..100";

MERGE (n:DataElement {name: "延迟退休标识"})
  ON CREATE SET business_description: "延迟退休标识", name: "延迟退休标识", data_format: "C..20";

MERGE (n:DataElement {name: "弹性退休标识"})
  ON CREATE SET business_description: "弹性退休标识", name: "弹性退休标识", data_format: "C..20";

MERGE (n:DataElement {name: "病残津贴标识"})
  ON CREATE SET business_description: "病残津贴标识", name: "病残津贴标识", data_format: "C..20";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "社会保障号码"})
  ON CREATE SET business_description: "社会保障号码", name: "社会保障号码", data_format: "C..200";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..200";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C..200";

MERGE (n:DataElement {name: "参保所属地"})
  ON CREATE SET business_description: "参保所属地", name: "参保所属地", data_format: "C..100";

MERGE (n:DataElement {name: "参保开始日期"})
  ON CREATE SET business_description: "参保开始日期", name: "参保开始日期", data_format: "C..50";

MERGE (n:DataElement {name: "本次缴费开始年月"})
  ON CREATE SET business_description: "本次缴费开始年月", name: "本次缴费开始年月", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保参保状态"})
  ON CREATE SET business_description: "社保参保状态", name: "社保参保状态", data_format: "C..200";

MERGE (n:DataElement {name: "社保终止日期"})
  ON CREATE SET business_description: "社保终止日期", name: "社保终止日期", data_format: "C..50";

MERGE (n:DataElement {name: "账户建立年月"})
  ON CREATE SET business_description: "账户建立年月", name: "账户建立年月", data_format: "C..100";

MERGE (n:DataElement {name: "征缴方式"})
  ON CREATE SET business_description: "征缴方式", name: "征缴方式", data_format: "C..100";

MERGE (n:DataElement {name: "用工形式"})
  ON CREATE SET business_description: "用工形式", name: "用工形式", data_format: "C..100";

MERGE (n:DataElement {name: "个人缴费状态"})
  ON CREATE SET business_description: "个人缴费状态", name: "个人缴费状态", data_format: "C50";

MERGE (n:DataElement {name: "参保身份"})
  ON CREATE SET business_description: "参保身份", name: "参保身份", data_format: "C..100";

MERGE (n:DataElement {name: "地方参保身份码值"})
  ON CREATE SET business_description: "地方参保身份码值", name: "地方参保身份码值", data_format: "C50";

MERGE (n:DataElement {name: "地方参保身份名称"})
  ON CREATE SET business_description: "地方参保身份名称", name: "地方参保身份名称", data_format: "C..100";

MERGE (n:DataElement {name: "劳动关系开始日期"})
  ON CREATE SET business_description: "劳动关系开始日期", name: "劳动关系开始日期", data_format: "C..50";

MERGE (n:DataElement {name: "劳动关系终止日期"})
  ON CREATE SET business_description: "劳动关系终止日期", name: "劳动关系终止日期", data_format: "C..50";

MERGE (n:DataElement {name: "当前有效标志"})
  ON CREATE SET business_description: "当前有效标志", name: "当前有效标志", data_format: "C50";

MERGE (n:DataElement {name: "人员参保关系类型"})
  ON CREATE SET business_description: "人员参保关系类型", name: "人员参保关系类型", data_format: "C..100";

MERGE (n:DataElement {name: "缴费人员类别"})
  ON CREATE SET business_description: "缴费人员类别", name: "缴费人员类别", data_format: "C50";

MERGE (n:DataElement {name: "个人参保日期"})
  ON CREATE SET business_description: "个人参保日期", name: "个人参保日期", data_format: "C..50";

MERGE (n:DataElement {name: "险种类型"})
  ON CREATE SET name: "险种类型", data_format: "C..200";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "社保编码"})
  ON CREATE SET business_description: "社保编码", name: "社保编码", data_format: "C144";

MERGE (n:DataElement {name: "社保险种类型"})
  ON CREATE SET business_description: "社保险种类型", name: "社保险种类型", data_format: "C24";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C144";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "社保缴费日期"})
  ON CREATE SET business_description: "社保缴费日期", name: "社保缴费日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费起始日期"})
  ON CREATE SET business_description: "社保缴费起始日期", name: "社保缴费起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费截止日期"})
  ON CREATE SET business_description: "社保缴费截止日期", name: "社保缴费截止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费工资"})
  ON CREATE SET business_description: "社保缴费工资", name: "社保缴费工资", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费基数"})
  ON CREATE SET business_description: "社保缴费基数", name: "社保缴费基数", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费月份"})
  ON CREATE SET business_description: "社保缴费月份", name: "社保缴费月份", data_format: "C48";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "社会保障号码"})
  ON CREATE SET business_description: "社会保障号码", name: "社会保障号码", data_format: "C..200";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..200";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C..200";

MERGE (n:DataElement {name: "参保所属地"})
  ON CREATE SET business_description: "参保所属地", name: "参保所属地", data_format: "C..100";

MERGE (n:DataElement {name: "参保开始日期"})
  ON CREATE SET business_description: "参保开始日期", name: "参保开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保参保状态"})
  ON CREATE SET business_description: "社保参保状态", name: "社保参保状态", data_format: "C..200";

MERGE (n:DataElement {name: "社保终止日期"})
  ON CREATE SET business_description: "社保终止日期", name: "社保终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "账户建立年月"})
  ON CREATE SET business_description: "账户建立年月", name: "账户建立年月", data_format: "C..100";

MERGE (n:DataElement {name: "征缴方式"})
  ON CREATE SET business_description: "征缴方式", name: "征缴方式", data_format: "C..100";

MERGE (n:DataElement {name: "用工形式"})
  ON CREATE SET business_description: "用工形式", name: "用工形式", data_format: "C..100";

MERGE (n:DataElement {name: "个人缴费状态"})
  ON CREATE SET business_description: "个人缴费状态", name: "个人缴费状态", data_format: "C50";

MERGE (n:DataElement {name: "参保身份"})
  ON CREATE SET business_description: "参保身份", name: "参保身份", data_format: "C..100";

MERGE (n:DataElement {name: "地方参保身份码值"})
  ON CREATE SET business_description: "地方参保身份码值", name: "地方参保身份码值", data_format: "C50";

MERGE (n:DataElement {name: "地方参保身份名称"})
  ON CREATE SET business_description: "地方参保身份名称", name: "地方参保身份名称", data_format: "C..100";

MERGE (n:DataElement {name: "劳动关系开始日期"})
  ON CREATE SET business_description: "劳动关系开始日期", name: "劳动关系开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "劳动关系终止日期"})
  ON CREATE SET business_description: "劳动关系终止日期", name: "劳动关系终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "当前有效标志"})
  ON CREATE SET business_description: "当前有效标志", name: "当前有效标志", data_format: "C50";

MERGE (n:DataElement {name: "人员参保关系类型"})
  ON CREATE SET business_description: "人员参保关系类型", name: "人员参保关系类型", data_format: "C..100";

MERGE (n:DataElement {name: "缴费人员类别"})
  ON CREATE SET business_description: "缴费人员类别", name: "缴费人员类别", data_format: "C50";

MERGE (n:DataElement {name: "个人参保日期"})
  ON CREATE SET business_description: "个人参保日期", name: "个人参保日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "社保编码"})
  ON CREATE SET business_description: "社保编码", name: "社保编码", data_format: "C144";

MERGE (n:DataElement {name: "社保险种类型"})
  ON CREATE SET business_description: "社保险种类型", name: "社保险种类型", data_format: "C24";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C144";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "社保缴费日期"})
  ON CREATE SET business_description: "社保缴费日期", name: "社保缴费日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费起始日期"})
  ON CREATE SET business_description: "社保缴费起始日期", name: "社保缴费起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费截止日期"})
  ON CREATE SET business_description: "社保缴费截止日期", name: "社保缴费截止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费工资"})
  ON CREATE SET business_description: "社保缴费工资", name: "社保缴费工资", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费基数"})
  ON CREATE SET business_description: "社保缴费基数", name: "社保缴费基数", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费月份"})
  ON CREATE SET business_description: "社保缴费月份", name: "社保缴费月份", data_format: "C48";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "社会保障号码"})
  ON CREATE SET business_description: "社会保障号码", name: "社会保障号码", data_format: "C..200";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..200";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C..200";

MERGE (n:DataElement {name: "参保所属地"})
  ON CREATE SET business_description: "参保所属地", name: "参保所属地", data_format: "C..100";

MERGE (n:DataElement {name: "参保开始日期"})
  ON CREATE SET business_description: "参保开始日期", name: "参保开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "本次缴费开始年月"})
  ON CREATE SET business_description: "本次缴费开始年月", name: "本次缴费开始年月", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保参保状态"})
  ON CREATE SET business_description: "社保参保状态", name: "社保参保状态", data_format: "C..200";

MERGE (n:DataElement {name: "社保终止日期"})
  ON CREATE SET business_description: "社保终止日期", name: "社保终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "账户建立年月"})
  ON CREATE SET business_description: "账户建立年月", name: "账户建立年月", data_format: "C..100";

MERGE (n:DataElement {name: "征缴方式"})
  ON CREATE SET business_description: "征缴方式", name: "征缴方式", data_format: "C..100";

MERGE (n:DataElement {name: "用工形式"})
  ON CREATE SET business_description: "用工形式", name: "用工形式", data_format: "C..100";

MERGE (n:DataElement {name: "个人缴费状态"})
  ON CREATE SET business_description: "个人缴费状态", name: "个人缴费状态", data_format: "C50";

MERGE (n:DataElement {name: "参保身份"})
  ON CREATE SET business_description: "参保身份", name: "参保身份", data_format: "C..100";

MERGE (n:DataElement {name: "地方参保身份码值"})
  ON CREATE SET business_description: "地方参保身份码值", name: "地方参保身份码值", data_format: "C50";

MERGE (n:DataElement {name: "地方参保身份名称"})
  ON CREATE SET business_description: "地方参保身份名称", name: "地方参保身份名称", data_format: "C..100";

MERGE (n:DataElement {name: "劳动关系开始日期"})
  ON CREATE SET business_description: "劳动关系开始日期", name: "劳动关系开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "劳动关系终止日期"})
  ON CREATE SET business_description: "劳动关系终止日期", name: "劳动关系终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "当前有效标志"})
  ON CREATE SET business_description: "当前有效标志", name: "当前有效标志", data_format: "C50";

MERGE (n:DataElement {name: "人员参保关系类型"})
  ON CREATE SET business_description: "人员参保关系类型", name: "人员参保关系类型", data_format: "C..100";

MERGE (n:DataElement {name: "缴费人员类别"})
  ON CREATE SET business_description: "缴费人员类别", name: "缴费人员类别", data_format: "C50";

MERGE (n:DataElement {name: "个人参保日期"})
  ON CREATE SET business_description: "个人参保日期", name: "个人参保日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "社保编码"})
  ON CREATE SET business_description: "社保编码", name: "社保编码", data_format: "C144";

MERGE (n:DataElement {name: "社保险种类型"})
  ON CREATE SET business_description: "社保险种类型", name: "社保险种类型", data_format: "C24";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C144";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "社保缴费日期"})
  ON CREATE SET business_description: "社保缴费日期", name: "社保缴费日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费起始日期"})
  ON CREATE SET business_description: "社保缴费起始日期", name: "社保缴费起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费截止日期"})
  ON CREATE SET business_description: "社保缴费截止日期", name: "社保缴费截止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费工资"})
  ON CREATE SET business_description: "社保缴费工资", name: "社保缴费工资", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费基数"})
  ON CREATE SET business_description: "社保缴费基数", name: "社保缴费基数", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费月份"})
  ON CREATE SET business_description: "社保缴费月份", name: "社保缴费月份", data_format: "C48";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "社会保障号码"})
  ON CREATE SET business_description: "社会保障号码", name: "社会保障号码", data_format: "C..200";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..200";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C..200";

MERGE (n:DataElement {name: "参保所属地"})
  ON CREATE SET business_description: "参保所属地", name: "参保所属地", data_format: "C..100";

MERGE (n:DataElement {name: "参保开始日期"})
  ON CREATE SET business_description: "参保开始日期", name: "参保开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "本次缴费开始年月"})
  ON CREATE SET business_description: "本次缴费开始年月", name: "本次缴费开始年月", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保参保状态"})
  ON CREATE SET business_description: "社保参保状态", name: "社保参保状态", data_format: "C..200";

MERGE (n:DataElement {name: "社保终止日期"})
  ON CREATE SET business_description: "社保终止日期", name: "社保终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "账户建立年月"})
  ON CREATE SET business_description: "账户建立年月", name: "账户建立年月", data_format: "C..100";

MERGE (n:DataElement {name: "征缴方式"})
  ON CREATE SET business_description: "征缴方式", name: "征缴方式", data_format: "C..100";

MERGE (n:DataElement {name: "用工形式"})
  ON CREATE SET business_description: "用工形式", name: "用工形式", data_format: "C..100";

MERGE (n:DataElement {name: "个人缴费状态"})
  ON CREATE SET business_description: "个人缴费状态", name: "个人缴费状态", data_format: "C50";

MERGE (n:DataElement {name: "参保身份"})
  ON CREATE SET business_description: "参保身份", name: "参保身份", data_format: "C..100";

MERGE (n:DataElement {name: "地方参保身份码值"})
  ON CREATE SET business_description: "地方参保身份码值", name: "地方参保身份码值", data_format: "C50";

MERGE (n:DataElement {name: "地方参保身份名称"})
  ON CREATE SET business_description: "地方参保身份名称", name: "地方参保身份名称", data_format: "C..100";

MERGE (n:DataElement {name: "劳动关系开始日期"})
  ON CREATE SET business_description: "劳动关系开始日期", name: "劳动关系开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "劳动关系终止日期"})
  ON CREATE SET business_description: "劳动关系终止日期", name: "劳动关系终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "当前有效标志"})
  ON CREATE SET business_description: "当前有效标志", name: "当前有效标志", data_format: "C50";

MERGE (n:DataElement {name: "人员参保关系类型"})
  ON CREATE SET business_description: "人员参保关系类型", name: "人员参保关系类型", data_format: "C..100";

MERGE (n:DataElement {name: "缴费人员类别"})
  ON CREATE SET business_description: "缴费人员类别", name: "缴费人员类别", data_format: "C50";

MERGE (n:DataElement {name: "个人参保日期"})
  ON CREATE SET business_description: "个人参保日期", name: "个人参保日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "社保编码"})
  ON CREATE SET business_description: "社保编码", name: "社保编码", data_format: "C144";

MERGE (n:DataElement {name: "社保险种类型"})
  ON CREATE SET business_description: "社保险种类型", name: "社保险种类型", data_format: "C24";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C144";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "社保缴费日期"})
  ON CREATE SET business_description: "社保缴费日期", name: "社保缴费日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费起始日期"})
  ON CREATE SET business_description: "社保缴费起始日期", name: "社保缴费起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费截止日期"})
  ON CREATE SET business_description: "社保缴费截止日期", name: "社保缴费截止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费工资"})
  ON CREATE SET business_description: "社保缴费工资", name: "社保缴费工资", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费基数"})
  ON CREATE SET business_description: "社保缴费基数", name: "社保缴费基数", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费月"})
  ON CREATE SET business_description: "社保缴费月份", name: "社保缴费月", data_format: "C48";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "社会保障号码"})
  ON CREATE SET business_description: "社会保障号码", name: "社会保障号码", data_format: "C..200";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..200";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C..200";

MERGE (n:DataElement {name: "参保所属地"})
  ON CREATE SET business_description: "参保所属地", name: "参保所属地", data_format: "C..100";

MERGE (n:DataElement {name: "参保开始日期"})
  ON CREATE SET business_description: "参保开始日期", name: "参保开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "本次缴费开始年月"})
  ON CREATE SET business_description: "本次缴费开始年月", name: "本次缴费开始年月", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保参保状态"})
  ON CREATE SET business_description: "社保参保状态", name: "社保参保状态", data_format: "C..200";

MERGE (n:DataElement {name: "社保终止日期"})
  ON CREATE SET business_description: "社保终止日期", name: "社保终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "账户建立年月"})
  ON CREATE SET business_description: "账户建立年月", name: "账户建立年月", data_format: "C..100";

MERGE (n:DataElement {name: "征缴方式"})
  ON CREATE SET business_description: "征缴方式", name: "征缴方式", data_format: "C..100";

MERGE (n:DataElement {name: "用工形式"})
  ON CREATE SET business_description: "用工形式", name: "用工形式", data_format: "C..100";

MERGE (n:DataElement {name: "个人缴费状态"})
  ON CREATE SET business_description: "个人缴费状态", name: "个人缴费状态", data_format: "C50";

MERGE (n:DataElement {name: "参保身份"})
  ON CREATE SET business_description: "参保身份", name: "参保身份", data_format: "C..100";

MERGE (n:DataElement {name: "地方参保身份码值"})
  ON CREATE SET business_description: "地方参保身份码值", name: "地方参保身份码值", data_format: "C50";

MERGE (n:DataElement {name: "地方参保身份名称"})
  ON CREATE SET business_description: "地方参保身份名称", name: "地方参保身份名称", data_format: "C..100";

MERGE (n:DataElement {name: "劳动关系开始日期"})
  ON CREATE SET business_description: "劳动关系开始日期", name: "劳动关系开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "劳动关系终止日期"})
  ON CREATE SET business_description: "劳动关系终止日期", name: "劳动关系终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "当前有效标志"})
  ON CREATE SET business_description: "当前有效标志", name: "当前有效标志", data_format: "C50";

MERGE (n:DataElement {name: "人员参保关系类型"})
  ON CREATE SET business_description: "人员参保关系类型", name: "人员参保关系类型", data_format: "C..100";

MERGE (n:DataElement {name: "缴费人员类别"})
  ON CREATE SET business_description: "缴费人员类别", name: "缴费人员类别", data_format: "C50";

MERGE (n:DataElement {name: "个人参保日期"})
  ON CREATE SET business_description: "个人参保日期", name: "个人参保日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "社保编码"})
  ON CREATE SET business_description: "社保编码", name: "社保编码", data_format: "C144";

MERGE (n:DataElement {name: "社保险种类型"})
  ON CREATE SET business_description: "社保险种类型", name: "社保险种类型", data_format: "C24";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C144";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "社保缴费日期"})
  ON CREATE SET business_description: "社保缴费日期", name: "社保缴费日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费起始日期"})
  ON CREATE SET business_description: "社保缴费起始日期", name: "社保缴费起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费截止日期"})
  ON CREATE SET business_description: "社保缴费截止日期", name: "社保缴费截止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费工资"})
  ON CREATE SET business_description: "社保缴费工资", name: "社保缴费工资", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费基数"})
  ON CREATE SET business_description: "社保缴费基数", name: "社保缴费基数", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费月份"})
  ON CREATE SET business_description: "社保缴费月份", name: "社保缴费月份", data_format: "C48";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "社会保障号码"})
  ON CREATE SET business_description: "社会保障号码", name: "社会保障号码", data_format: "C..200";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..200";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C..200";

MERGE (n:DataElement {name: "参保地行政区划代码"})
  ON CREATE SET business_description: "参保地行政区划代码", name: "参保地行政区划代码", data_format: "C..100";

MERGE (n:DataElement {name: "参保开始日期"})
  ON CREATE SET business_description: "参保开始日期", name: "参保开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保参保状态"})
  ON CREATE SET business_description: "社保参保状态", name: "社保参保状态", data_format: "C..200";

MERGE (n:DataElement {name: "社保终止日期"})
  ON CREATE SET business_description: "社保终止日期", name: "社保终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "账户建立年月"})
  ON CREATE SET business_description: "账户建立年月", name: "账户建立年月", data_format: "C..100";

MERGE (n:DataElement {name: "征缴方式"})
  ON CREATE SET business_description: "征缴方式", name: "征缴方式", data_format: "C..100";

MERGE (n:DataElement {name: "用工形式"})
  ON CREATE SET business_description: "用工形式", name: "用工形式", data_format: "C..100";

MERGE (n:DataElement {name: "个人缴费状态"})
  ON CREATE SET business_description: "个人缴费状态", name: "个人缴费状态", data_format: "C50";

MERGE (n:DataElement {name: "参保身份"})
  ON CREATE SET business_description: "参保身份", name: "参保身份", data_format: "C..100";

MERGE (n:DataElement {name: "地方参保身份码值"})
  ON CREATE SET business_description: "地方参保身份码值", name: "地方参保身份码值", data_format: "C50";

MERGE (n:DataElement {name: "地方参保身份名称"})
  ON CREATE SET business_description: "地方参保身份名称", name: "地方参保身份名称", data_format: "C..100";

MERGE (n:DataElement {name: "劳动关系开始日期"})
  ON CREATE SET business_description: "劳动关系开始日期", name: "劳动关系开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "劳动关系终止日期"})
  ON CREATE SET business_description: "劳动关系终止日期", name: "劳动关系终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "当前有效标志"})
  ON CREATE SET business_description: "当前有效标志", name: "当前有效标志", data_format: "C50";

MERGE (n:DataElement {name: "人员参保关系类型"})
  ON CREATE SET business_description: "人员参保关系类型", name: "人员参保关系类型", data_format: "C..100";

MERGE (n:DataElement {name: "缴费人员类别"})
  ON CREATE SET business_description: "缴费人员类别", name: "缴费人员类别", data_format: "C50";

MERGE (n:DataElement {name: "个人参保日期"})
  ON CREATE SET business_description: "个人参保日期", name: "个人参保日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "社保编码"})
  ON CREATE SET business_description: "社保编码", name: "社保编码", data_format: "C144";

MERGE (n:DataElement {name: "社保险种类型"})
  ON CREATE SET business_description: "社保险种类型", name: "社保险种类型", data_format: "C24";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C144";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "社保缴费日期"})
  ON CREATE SET business_description: "社保缴费日期", name: "社保缴费日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费起始日期"})
  ON CREATE SET business_description: "社保缴费起始日期", name: "社保缴费起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费截止日期"})
  ON CREATE SET business_description: "社保缴费截止日期", name: "社保缴费截止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费工资"})
  ON CREATE SET business_description: "社保缴费工资", name: "社保缴费工资", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费基数"})
  ON CREATE SET business_description: "社保缴费基数", name: "社保缴费基数", data_format: "N(20,2)";

MERGE (n:DataElement {name: "社保缴费月份"})
  ON CREATE SET business_description: "社保缴费月份", name: "社保缴费月份", data_format: "C48";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "社会保障号码"})
  ON CREATE SET business_description: "社会保障号码", name: "社会保障号码", data_format: "C..200";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..200";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C..200";

MERGE (n:DataElement {name: "参保所属地"})
  ON CREATE SET business_description: "参保所属地", name: "参保所属地", data_format: "C..100";

MERGE (n:DataElement {name: "参保开始日期"})
  ON CREATE SET business_description: "参保开始日期", name: "参保开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "本次缴费开始年月"})
  ON CREATE SET business_description: "本次缴费开始年月", name: "本次缴费开始年月", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保参保状态"})
  ON CREATE SET business_description: "社保参保状态", name: "社保参保状态", data_format: "C..200";

MERGE (n:DataElement {name: "社保终止日期"})
  ON CREATE SET business_description: "社保终止日期", name: "社保终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "账户建立年月"})
  ON CREATE SET business_description: "账户建立年月", name: "账户建立年月", data_format: "C..100";

MERGE (n:DataElement {name: "征缴方式"})
  ON CREATE SET business_description: "征缴方式", name: "征缴方式", data_format: "C..100";

MERGE (n:DataElement {name: "用工形式"})
  ON CREATE SET business_description: "用工形式", name: "用工形式", data_format: "C..100";

MERGE (n:DataElement {name: "个人缴费状态"})
  ON CREATE SET business_description: "个人缴费状态", name: "个人缴费状态", data_format: "C50";

MERGE (n:DataElement {name: "参保身份"})
  ON CREATE SET business_description: "参保身份", name: "参保身份", data_format: "C..100";

MERGE (n:DataElement {name: "地方参保身份码值"})
  ON CREATE SET business_description: "地方参保身份码值", name: "地方参保身份码值", data_format: "C50";

MERGE (n:DataElement {name: "地方参保身份名称"})
  ON CREATE SET business_description: "地方参保身份名称", name: "地方参保身份名称", data_format: "C..100";

MERGE (n:DataElement {name: "劳动关系开始日期"})
  ON CREATE SET business_description: "劳动关系开始日期", name: "劳动关系开始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "劳动关系终止日期"})
  ON CREATE SET business_description: "劳动关系终止日期", name: "劳动关系终止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "当前有效标志"})
  ON CREATE SET business_description: "当前有效标志", name: "当前有效标志", data_format: "C50";

MERGE (n:DataElement {name: "人员参保关系类型"})
  ON CREATE SET business_description: "人员参保关系类型", name: "人员参保关系类型", data_format: "C..100";

MERGE (n:DataElement {name: "缴费人员类别"})
  ON CREATE SET business_description: "缴费人员类别", name: "缴费人员类别", data_format: "C50";

MERGE (n:DataElement {name: "个人参保日期"})
  ON CREATE SET business_description: "个人参保日期", name: "个人参保日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "社保编码"})
  ON CREATE SET business_description: "社保编码", name: "社保编码", data_format: "C144";

MERGE (n:DataElement {name: "社保险种类型"})
  ON CREATE SET business_description: "社保险种类型", name: "社保险种类型", data_format: "C24";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C144";

MERGE (n:DataElement {name: "单位统一社会信用代码"})
  ON CREATE SET business_description: "单位统一社会信用代码", name: "单位统一社会信用代码", data_format: "C18";

MERGE (n:DataElement {name: "社保缴费日期"})
  ON CREATE SET business_description: "社保缴费日期", name: "社保缴费日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费起始日期"})
  ON CREATE SET business_description: "社保缴费起始日期", name: "社保缴费起始日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费截止日期"})
  ON CREATE SET business_description: "社保缴费截止日期", name: "社保缴费截止日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "社保缴费工资"})
  ON CREATE SET business_description: "社保缴费工资", name: "社保缴费工资", data_format: "N(20,2)";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "活动名称"})
  ON CREATE SET business_description: "活动名称", name: "活动名称", data_format: "C..800";

MERGE (n:DataElement {name: "志愿者活动总时长"})
  ON CREATE SET business_description: "志愿者活动总时长", name: "志愿者活动总时长", data_format: "N(15,2)";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..1600";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C400";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..1600";

MERGE (n:DataElement {name: "证书编号-弃用"})
  ON CREATE SET name: "证书编号-弃用", data_format: "C..2400";

MERGE (n:DataElement {name: "资质等级"})
  ON CREATE SET business_description: "资质等级", name: "资质等级", data_format: "C..2400";

MERGE (n:DataElement {name: "证件有效期起"})
  ON CREATE SET business_description: "证件有效期起", name: "证件有效期起", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件有效期止"})
  ON CREATE SET business_description: "证件有效期止", name: "证件有效期止", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件签发机关名称"})
  ON CREATE SET business_description: "证件签发机关名称", name: "证件签发机关名称", data_format: "C..640";

MERGE (n:DataElement {name: "发证机关-弃用"})
  ON CREATE SET business_description: "发证机关-弃用", name: "发证机关-弃用", data_format: "C..1280";

MERGE (n:DataElement {name: "证件签发日期"})
  ON CREATE SET business_description: "证件签发日期", name: "证件签发日期", data_format: "C..1280";

MERGE (n:DataElement {name: "证件编号"})
  ON CREATE SET business_description: "证件编号", name: "证件编号", data_format: "C..1920";

MERGE (n:DataElement {name: "备案机构代码"})
  ON CREATE SET business_description: "备案机构代码", name: "备案机构代码", data_format: "C..1280";

MERGE (n:DataElement {name: "备案机构名称"})
  ON CREATE SET business_description: "备案机构名称", name: "备案机构名称", data_format: "C..1280";

MERGE (n:DataElement {name: "是否生成新的证书号-0.是1.否"})
  ON CREATE SET business_description: "是否生成新的证书号-0.是1.否", name: "是否生成新的证书号-0.是1.否", data_format: "C..1280";

MERGE (n:DataElement {name: "状态"})
  ON CREATE SET business_description: "状态0.有效1.失效", name: "状态", data_format: "C..1280";

MERGE (n:DataElement {name: "批次号"})
  ON CREATE SET business_description: "批次号", name: "批次号", data_format: "C..1280";

MERGE (n:DataElement {name: "从业范围"})
  ON CREATE SET business_description: "从业范围", name: "从业范围", data_format: "C..1280";

MERGE (n:DataElement {name: "证件名称"})
  ON CREATE SET business_description: "证件名称", name: "证件名称", data_format: "C..2400";

MERGE (n:DataElement {name: "区划代码"})
  ON CREATE SET business_description: "区划代码", name: "区划代码", data_format: "C..2560";

MERGE (n:DataElement {name: "证件签名值"})
  ON CREATE SET business_description: "证件签名值", name: "证件签名值", data_format: "C..400";

MERGE (n:DataElement {name: "证件条码"})
  ON CREATE SET business_description: "证件条码", name: "证件条码", data_format: "C..400";

MERGE (n:DataElement {name: "证件签名公钥值"})
  ON CREATE SET business_description: "证件签名公钥值", name: "证件签名公钥值", data_format: "C..400";

MERGE (n:DataElement {name: "证件签名hash值"})
  ON CREATE SET business_description: "证件签名hash值", name: "证件签名hash值", data_format: "C..400";

MERGE (n:DataElement {name: "证件签发机关代码"})
  ON CREATE SET business_description: "证件签发机关代码", name: "证件签发机关代码", data_format: "C..400";

MERGE (n:DataElement {name: "证件初次签发日期"})
  ON CREATE SET business_description: "证件初次签发日期", name: "证件初次签发日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件注销日期"})
  ON CREATE SET business_description: "证件注销日期", name: "证件注销日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件注销原因"})
  ON CREATE SET business_description: "证件注销原因", name: "证件注销原因", data_format: "C..800";

MERGE (n:DataElement {name: "证件类型"})
  ON CREATE SET business_description: "证件类型", name: "证件类型", data_format: "C96";

MERGE (n:DataElement {name: "证件时间戳"})
  ON CREATE SET business_description: "证件时间戳", name: "证件时间戳", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C10";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "手机号码"})
  ON CREATE SET business_description: "手机号码", name: "手机号码", data_format: "C..400";

MERGE (n:DataElement {name: "准驾车型"})
  ON CREATE SET business_description: "准驾车型", name: "准驾车型", data_format: "C..400";

MERGE (n:DataElement {name: "办理地址"})
  ON CREATE SET business_description: "办理地址", name: "办理地址", data_format: "C..400";

MERGE (n:DataElement {name: "初次领证日期"})
  ON CREATE SET business_description: "初次领证日期", name: "初次领证日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "有效期始"})
  ON CREATE SET business_description: "有效期始", name: "有效期始", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "有效期止"})
  ON CREATE SET business_description: "有效期止", name: "有效期止", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "姓名"})
  ON CREATE SET business_description: "姓名", name: "姓名", data_format: "C..150";

MERGE (n:DataElement {name: "职称名称"})
  ON CREATE SET business_description: "职称名称", name: "职称名称", data_format: "C..555";

MERGE (n:DataElement {name: "现从事专业技术工作"})
  ON CREATE SET business_description: "现从事专业技术工作", name: "现从事专业技术工作", data_format: "C..555";

MERGE (n:DataElement {name: "单位名称"})
  ON CREATE SET business_description: "单位名称", name: "单位名称", data_format: "C..555";

MERGE (n:DataElement {name: "现行政职务"})
  ON CREATE SET business_description: "现行政职务", name: "现行政职务", data_format: "C..255";

MERGE (n:DataElement {name: "评定时间"})
  ON CREATE SET business_description: "评定时间", name: "评定时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "许可文件类型"})
  ON CREATE SET business_description: "许可文件名称，如种子经营许可证、药品监督管理部门批文等。", name: "许可文件类型", data_format: "C..100";

MERGE (n:DataElement {name: "许可颁发机关"})
  ON CREATE SET business_description: "许可文件颁发机关。", name: "许可颁发机关", data_format: "C..100";

MERGE (n:DataElement {name: "许可颁发日期"})
  ON CREATE SET business_description: "许可文件颁发日期。", name: "许可颁发日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "许可状态"})
  ON CREATE SET business_description: "许可文件状态。", name: "许可状态", data_format: "n8";

MERGE (n:DataElement {name: "许可有效期自"})
  ON CREATE SET business_description: "许可有效期起始时间。", name: "许可有效期自", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "许可有效期至"})
  ON CREATE SET business_description: "许可有效期截止时间。", name: "许可有效期至", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "许可内容"})
  ON CREATE SET business_description: "许可内容、范围。", name: "许可内容", data_format: "C..4000";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "证件编号"})
  ON CREATE SET business_description: "证件编号", name: "证件编号", data_format: "C..300";

MERGE (n:DataElement {name: "证件名称"})
  ON CREATE SET business_description: "证件名称", name: "证件名称", data_format: "C..100";

MERGE (n:DataElement {name: "证件类型"})
  ON CREATE SET business_description: "证件类型", name: "证件类型", data_format: "C..200";

MERGE (n:DataElement {name: "证件签发机关名称"})
  ON CREATE SET business_description: "证件签发机关名称", name: "证件签发机关名称", data_format: "C..100";

MERGE (n:DataElement {name: "从业资格证件签发机关代码"})
  ON CREATE SET business_description: "从业资格证件签发机关代码", name: "从业资格证件签发机关代码", data_format: "C..201";

MERGE (n:DataElement {name: "证件状态"})
  ON CREATE SET business_description: "证件状态", name: "证件状态", data_format: "C..202";

MERGE (n:DataElement {name: "证件有效期起"})
  ON CREATE SET business_description: "证件有效期起", name: "证件有效期起", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件有效期止"})
  ON CREATE SET business_description: "证件有效期止", name: "证件有效期止", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件签发日期"})
  ON CREATE SET business_description: "证件签发日期", name: "证件签发日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "从业资格证件初次签发日期"})
  ON CREATE SET business_description: "从业资格证件初次签发日期", name: "从业资格证件初次签发日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件注销原因"})
  ON CREATE SET business_description: "证件注销原因", name: "证件注销原因", data_format: "C..100";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "证件编号"})
  ON CREATE SET business_description: "证件编号", name: "证件编号", data_format: "C..1600";

MERGE (n:DataElement {name: "证件名称"})
  ON CREATE SET business_description: "证件名称", name: "证件名称", data_format: "C..100";

MERGE (n:DataElement {name: "证件类型"})
  ON CREATE SET business_description: "证照类型", name: "证件类型", data_format: "C..400";

MERGE (n:DataElement {name: "证件签发机关名称"})
  ON CREATE SET business_description: "发证机关名称", name: "证件签发机关名称", data_format: "C..800";

MERGE (n:DataElement {name: "证件签发机关代码"})
  ON CREATE SET business_description: "签发机关编码", name: "证件签发机关代码", data_format: "C..160";

MERGE (n:DataElement {name: "证件状态"})
  ON CREATE SET business_description: "证件有效状态", name: "证件状态", data_format: "C200";

MERGE (n:DataElement {name: "证件有效期起"})
  ON CREATE SET business_description: "证件有效期开始时间", name: "证件有效期起", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件有效期止"})
  ON CREATE SET business_description: "证件有效期结束时间", name: "证件有效期止", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件签发日期"})
  ON CREATE SET business_description: "证件签发的时间", name: "证件签发日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政执法所属地区"})
  ON CREATE SET business_description: "执业资格证件所在地区", name: "行政执法所属地区", data_format: "C..1600";

MERGE (n:DataElement {name: "证件初次签发日期"})
  ON CREATE SET business_description: "证件签发的时间", name: "证件初次签发日期", data_format: "C..200";

MERGE (n:DataElement {name: "证件注销日期"})
  ON CREATE SET business_description: "证件注销时间", name: "证件注销日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "证件注销原因"})
  ON CREATE SET business_description: "证件注销原因", name: "证件注销原因", data_format: "C..4000";

MERGE (n:DataElement {name: "行政区划"})
  ON CREATE SET business_description: "行政区划", name: "行政区划", data_format: "C..400";

MERGE (n:DataElement {name: "技术职称"})
  ON CREATE SET business_description: "技术职称", name: "技术职称", data_format: "C..4000";

MERGE (n:DataElement {name: "性别"})
  ON CREATE SET business_description: "性别", name: "性别", data_format: "C..800";

MERGE (n:DataElement {name: "姓名"})
  ON CREATE SET business_description: "姓名", name: "姓名", data_format: "C..400";

MERGE (n:DataElement {name: "民族"})
  ON CREATE SET business_description: "民族", name: "民族", data_format: "C..255";

MERGE (n:DataElement {name: "工作科室"})
  ON CREATE SET business_description: "工作科室", name: "工作科室", data_format: "C..400";

MERGE (n:DataElement {name: "国籍"})
  ON CREATE SET business_description: "国籍", name: "国籍", data_format: "C..400";

MERGE (n:DataElement {name: "主要执业机构"})
  ON CREATE SET business_description: "主要执业机构", name: "主要执业机构", data_format: "C..400";

MERGE (n:DataElement {name: "执业范围"})
  ON CREATE SET business_description: "执业范围", name: "执业范围", data_format: "C..400";

MERGE (n:DataElement {name: "证件所在地区"})
  ON CREATE SET business_description: "证件所在地区", name: "证件所在地区", data_format: "C..200";

MERGE (n:DataElement {name: "证件有效期"})
  ON CREATE SET business_description: "证件有效期", name: "证件有效期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "执业级别"})
  ON CREATE SET business_description: "执业级别", name: "执业级别", data_format: "C..50";

MERGE (n:DataElement {name: "任职资格"})
  ON CREATE SET business_description: "任职资格", name: "任职资格", data_format: "C..100";

MERGE (n:DataElement {name: "政治面貌"})
  ON CREATE SET value_domain: "（1.团员；2.党员；3.民主人士；4.群众；5.其他）", business_description: "政治面貌", name: "政治面貌", data_format: "C..800";

MERGE (n:DataElement {name: "手机号码"})
  ON CREATE SET business_description: "手机号码", name: "手机号码", data_format: "C..300";

MERGE (n:DataElement {name: "执业单位联系电话"})
  ON CREATE SET business_description: "执业单位联系电话", name: "执业单位联系电话", data_format: "C..500";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..1600";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C400";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..1600";

MERGE (n:DataElement {name: "认证与荣誉名称"})
  ON CREATE SET business_description: "荣誉表彰详细名称", name: "认证与荣誉名称", data_format: "C..1600";

MERGE (n:DataElement {name: "有效期"})
  ON CREATE SET business_description: "有效期", name: "有效期", data_format: "C32";

MERGE (n:DataElement {name: "荣誉名称"})
  ON CREATE SET business_description: "荣誉表彰详细名称", name: "荣誉名称", data_format: "C..400";

MERGE (n:DataElement {name: "审核状态"})
  ON CREATE SET value_domain: "0-待审核，1-通过审核，2-未通过审核", business_description: "审核状态，0-待审核，1-通过审核，2-未通过审核", name: "审核状态", data_format: "C..800";

MERGE (n:DataElement {name: "荣誉级别"})
  ON CREATE SET business_description: "荣誉级别、等级", name: "荣誉级别", data_format: "C..240";

MERGE (n:DataElement {name: "级别"})
  ON CREATE SET business_description: "荣誉级别、等级", name: "级别", data_format: "C..1000";

MERGE (n:DataElement {name: "证书类型"})
  ON CREATE SET business_description: "证书类型", name: "证书类型", data_format: "C..";

MERGE (n:DataElement {name: "荣誉认定日期"})
  ON CREATE SET business_description: "荣誉认定日期", name: "荣誉认定日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "荣誉奖励对象"})
  ON CREATE SET business_description: "荣誉奖励对象", name: "荣誉奖励对象", data_format: "C..800";

MERGE (n:DataElement {name: "证书编号"})
  ON CREATE SET business_description: "荣誉证书编号", name: "证书编号", data_format: "C..";

MERGE (n:DataElement {name: "荣誉证书有效期自"})
  ON CREATE SET business_description: "荣誉证书有效期起始日期", name: "荣誉证书有效期自", data_format: "C..240";

MERGE (n:DataElement {name: "荣誉证书有效期至"})
  ON CREATE SET business_description: "荣誉证书有效期截止日期", name: "荣誉证书有效期至", data_format: "C..240";

MERGE (n:DataElement {name: "荣誉颁发机构名称"})
  ON CREATE SET business_description: "荣誉颁发机构名称", name: "荣誉颁发机构名称", data_format: "C..400";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "行政奖励决定文号"})
  ON CREATE SET business_description: "行政奖励决定文号", name: "行政奖励决定文号", data_format: "C..2000";

MERGE (n:DataElement {name: "行政奖励名称"})
  ON CREATE SET business_description: "行政奖励、良好行为名称", name: "行政奖励名称", data_format: "C..1000";

MERGE (n:DataElement {name: "行政奖励决定内容"})
  ON CREATE SET business_description: "行政奖励决定内容", name: "行政奖励决定内容", data_format: "C..2000";

MERGE (n:DataElement {name: "行政奖励日期"})
  ON CREATE SET business_description: "行政奖励日期", name: "行政奖励日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政奖励部门"})
  ON CREATE SET business_description: "行政奖励部门", name: "行政奖励部门", data_format: "C..200";

MERGE (n:DataElement {name: "授奖等级"})
  ON CREATE SET business_description: "授奖等级", name: "授奖等级", data_format: "C..100";

MERGE (n:DataElement {name: "项目名称"})
  ON CREATE SET business_description: "项目名称", name: "项目名称", data_format: "C300";

MERGE (n:DataElement {name: "年度"})
  ON CREATE SET business_description: "年度", name: "年度", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "开始时间"})
  ON CREATE SET business_description: "开始时间", name: "开始时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "结束时间"})
  ON CREATE SET business_description: "结束时间", name: "结束时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "奖励类型"})
  ON CREATE SET business_description: "奖励类型", name: "奖励类型", data_format: "C300";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "行政处罚对象所在组织机构统一社会信用代码"})
  ON CREATE SET business_description: "行政处罚对象所在组织机构统一社会信用代码", name: "行政处罚对象所在组织机构统一社会信用代码", data_format: "C144";

MERGE (n:DataElement {name: "行政处罚对象所在组织机构代码"})
  ON CREATE SET business_description: "处罚对象所在组织机构代码", name: "行政处罚对象所在组织机构代码", data_format: "C..240";

MERGE (n:DataElement {name: "行政处罚种类"})
  ON CREATE SET business_description: "行政处罚种类，是指行政处罚外在的具体表现形式", name: "行政处罚种类", data_format: "C40";

MERGE (n:DataElement {name: "行政违法行为类型"})
  ON CREATE SET business_description: "违法行为类型", name: "行政违法行为类型", data_format: "C..320";

MERGE (n:DataElement {name: "行政处罚决定书文号"})
  ON CREATE SET business_description: "行政处罚决定书文号", name: "行政处罚决定书文号", data_format: "C..800";

MERGE (n:DataElement {name: "行政处罚内容"})
  ON CREATE SET business_description: "处罚内容信息", name: "行政处罚内容", data_format: "C..16000";

MERGE (n:DataElement {name: "行政处罚决定"})
  ON CREATE SET business_description: "行政处罚决定", name: "行政处罚决定", data_format: "C..8000";

MERGE (n:DataElement {name: "行政处罚依据"})
  ON CREATE SET business_description: "处罚依据的法律文件等", name: "行政处罚依据", data_format: "C..16000";

MERGE (n:DataElement {name: "行政处罚日期"})
  ON CREATE SET business_description: "处罚日期信息", name: "行政处罚日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政处罚交款标记"})
  ON CREATE SET business_description: "行政处罚交款标记", name: "行政处罚交款标记", data_format: "C..80";

MERGE (n:DataElement {name: "行政处罚年限"})
  ON CREATE SET business_description: "行政处罚年限", name: "行政处罚年限", data_format: "C..400";

MERGE (n:DataElement {name: "行政处罚机关"})
  ON CREATE SET business_description: "行政处罚机关", name: "行政处罚机关", data_format: "C..800";

MERGE (n:DataElement {name: "行政处罚机构编号(行政处罚机关编号)"})
  ON CREATE SET business_description: "行政处罚机构编号(行政处罚机关编号)", name: "行政处罚机构编号(行政处罚机关编号)", data_format: "C..800";

MERGE (n:DataElement {name: "行政处罚部门级别"})
  ON CREATE SET value_domain: "省级", business_description: "行政处罚部门级别", name: "行政处罚部门级别", data_format: "C..160";

MERGE (n:DataElement {name: "不良行为登记日期"})
  ON CREATE SET business_description: "行政处罚、不良行为登记日期", name: "不良行为登记日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政违法行为发生日期"})
  ON CREATE SET business_description: "行政违法、不良行为发生日期", name: "行政违法行为发生日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政处罚金额"})
  ON CREATE SET business_description: "处罚金额数，单位：元", name: "行政处罚金额", data_format: "N(24,2)";

MERGE (n:DataElement {name: "行政处罚是否信息公开"})
  ON CREATE SET value_domain: "T/F", business_description: "行政处罚是否信息公开", name: "行政处罚是否信息公开", data_format: "C8";

MERGE (n:DataElement {name: "行政处罚公开时间"})
  ON CREATE SET business_description: "公开时间", name: "行政处罚公开时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政处罚公开结束时间"})
  ON CREATE SET business_description: "公开结束时间", name: "行政处罚公开结束时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "行政强制申请日期"})
  ON CREATE SET business_description: "查封申请日期", name: "行政强制申请日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政强制对象所在组织机构统一社会信用代码"})
  ON CREATE SET business_description: "行政强制对象所在组织机构统一社会信用代码", name: "行政强制对象所在组织机构统一社会信用代码", data_format: "C..50";

MERGE (n:DataElement {name: "行政强制执行文号"})
  ON CREATE SET business_description: "用来标识行政强制文书的编号", name: "行政强制执行文号", data_format: "C..100";

MERGE (n:DataElement {name: "行政强制分类"})
  ON CREATE SET business_description: "行政强制是指行政机关为了实现行政目的，依据法定职权和程序做出的对相对人的人身、财产和行为采取的强制性措施", name: "行政强制分类", data_format: "C..20";

MERGE (n:DataElement {name: "临时查封时间"})
  ON CREATE SET business_description: "临时查封的具体时间", name: "临时查封时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "查封信息行政区编码"})
  ON CREATE SET business_description: "查封信息行政区编码", name: "查封信息行政区编码", data_format: "C..50";

MERGE (n:DataElement {name: "行政强制执行时间"})
  ON CREATE SET business_description: "行政强制执行的具体时间", name: "行政强制执行时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政强制相对人分类"})
  ON CREATE SET business_description: "指行政相对人，是指行政管理法律关系中与行政主体相对应的另一方当事人，即行政主体的行政行为影响其权益的个人或组织", name: "行政强制相对人分类", data_format: "C..100";

MERGE (n:DataElement {name: "解除临时查封时间"})
  ON CREATE SET business_description: "解除临时查封的具体时间", name: "解除临时查封时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "行政强制解封日期"})
  ON CREATE SET business_description: "解封日期", name: "行政强制解封日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "行政确认类别"})
  ON CREATE SET business_description: "行政确认类别", name: "行政确认类别", data_format: "C..100";

MERGE (n:DataElement {name: "行政确认文书号"})
  ON CREATE SET business_description: "行政确认文书号", name: "行政确认文书号", data_format: "C..100";

MERGE (n:DataElement {name: "行政确认日期"})
  ON CREATE SET business_description: "行政确认日期", name: "行政确认日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "行政给付事项"})
  ON CREATE SET business_description: "行政给付事项", name: "行政给付事项", data_format: "C..2000";

MERGE (n:DataElement {name: "行政给付审核结果"})
  ON CREATE SET business_description: "给付审核结果", name: "行政给付审核结果", data_format: "C..1000";

MERGE (n:DataElement {name: "行政给付费用"})
  ON CREATE SET business_description: "给付费用数额", name: "行政给付费用", data_format: "C..300";

MERGE (n:DataElement {name: "行政给付日期"})
  ON CREATE SET business_description: "行政给付日期", name: "行政给付日期", data_format: "C..30";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "行政裁决被申请人"})
  ON CREATE SET business_description: "行政裁决被申请人姓名或名称", name: "行政裁决被申请人", data_format: "C..1000";

MERGE (n:DataElement {name: "行政裁决申请事项"})
  ON CREATE SET business_description: "行政裁决申请事项", name: "行政裁决申请事项", data_format: "C..4000";

MERGE (n:DataElement {name: "行政裁决实施机关"})
  ON CREATE SET business_description: "行政裁决实施机关名称", name: "行政裁决实施机关", data_format: "C..1000";

MERGE (n:DataElement {name: "行政裁决日期"})
  ON CREATE SET business_description: "行政裁决日期", name: "行政裁决日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "是否列入失信黑名单"})
  ON CREATE SET business_description: "确定自然人是否被列入失信黑名单", name: "是否列入失信黑名单", data_format: "n8";

MERGE (n:DataElement {name: "列入失信黑名单日期"})
  ON CREATE SET business_description: "确定自然人被列入失信黑名单的日期", name: "列入失信黑名单日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "列入失信黑名单事由"})
  ON CREATE SET business_description: "自然人被列入失信黑名单的原因", name: "列入失信黑名单事由", data_format: "C..16000";

MERGE (n:DataElement {name: "退出失信黑名单日期"})
  ON CREATE SET business_description: "自然人退出失信黑名单的日期", name: "退出失信黑名单日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "退出失信黑名单原因"})
  ON CREATE SET business_description: "自然人退出失信黑名单的原因", name: "退出失信黑名单原因", data_format: "C..16000";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "司法案件案号"})
  ON CREATE SET business_description: "司法案件案号", name: "司法案件案号", data_format: "C..800";

MERGE (n:DataElement {name: "司法案件案号代码"})
  ON CREATE SET business_description: "司法案件案号代码", name: "司法案件案号代码", data_format: "C..800";

MERGE (n:DataElement {name: "司法案件原告人"})
  ON CREATE SET business_description: "司法案件原告人", name: "司法案件原告人", data_format: "C..800";

MERGE (n:DataElement {name: "司法案件案由"})
  ON CREATE SET business_description: "司法案件案由", name: "司法案件案由", data_format: "C..2400";

MERGE (n:DataElement {name: "司法案件立案日期"})
  ON CREATE SET business_description: "司法案件立案日期", name: "司法案件立案日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "司法案件判决结果"})
  ON CREATE SET business_description: "司法案件判决结果", name: "司法案件判决结果", data_format: "C..2560";

MERGE (n:DataElement {name: "执行案件报结日期"})
  ON CREATE SET business_description: "执行案件报结日期", name: "执行案件报结日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "执行案件结案方式"})
  ON CREATE SET business_description: "执行案件结案方式", name: "执行案件结案方式", data_format: "C..2000";

MERGE (n:DataElement {name: "司法案件被告人"})
  ON CREATE SET business_description: "司法案件被告人", name: "司法案件被告人", data_format: "C..800";

MERGE (n:DataElement {name: "被告身份证件号码"})
  ON CREATE SET business_description: "被告身份证件号码", name: "被告身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "法院名称"})
  ON CREATE SET business_description: "法院名称", name: "法院名称", data_format: "C..200";

MERGE (n:DataElement {name: "案件类型"})
  ON CREATE SET business_description: "案件类型", name: "案件类型", data_format: "C..200";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..200";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C50";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..200";

MERGE (n:DataElement {name: "失信行为"})
  ON CREATE SET business_description: "描述失信被执行人的失信行为", name: "失信行为", data_format: "C..2000";

MERGE (n:DataElement {name: "失信被执行依据文号"})
  ON CREATE SET business_description: "失信被执行依据的文书号码", name: "失信被执行依据文号", data_format: "C..255";

MERGE (n:DataElement {name: "失信被执行认定日期"})
  ON CREATE SET business_description: "失信被执行认定的时间", name: "失信被执行认定日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "失信被执行立案日期"})
  ON CREATE SET business_description: "失信被执行立案的时间", name: "失信被执行立案日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "失信被执行履行情况"})
  ON CREATE SET business_description: "失信被执行履行情况", name: "失信被执行履行情况", data_format: "C..20";

MERGE (n:DataElement {name: "列入事由/情形（中文名称）"})
  ON CREATE SET business_description: "列入事由/情形（中文名称）", name: "列入事由/情形（中文名称）", data_format: "C..2000";

MERGE (n:DataElement {name: "处罚执行金额/处罚金额"})
  ON CREATE SET business_description: "处罚执行金额/处罚金额", name: "处罚执行金额/处罚金额", data_format: "C..255";

MERGE (n:DataElement {name: "执行依据"})
  ON CREATE SET business_description: "执行依据", name: "执行依据", data_format: "C..300";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..3000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "强制执行申请执行人"})
  ON CREATE SET business_description: "强制执行申请执行人", name: "强制执行申请执行人", data_format: "C..800";

MERGE (n:DataElement {name: "强制执行法院代码"})
  ON CREATE SET business_description: "法院统一代码", name: "强制执行法院代码", data_format: "C..400";

MERGE (n:DataElement {name: "强制执行法院名称"})
  ON CREATE SET business_description: "司法执行法院的名称", name: "强制执行法院名称", data_format: "C..800";

MERGE (n:DataElement {name: "强制执行依据文书号"})
  ON CREATE SET business_description: "法院执法文书号", name: "强制执行依据文书号", data_format: "C..800";

MERGE (n:DataElement {name: "强制执行立案时间"})
  ON CREATE SET business_description: "法院立案时间", name: "强制执行立案时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "做出强制执行依据单位"})
  ON CREATE SET business_description: "做出强制执行依据单位", name: "做出强制执行依据单位", data_format: "C..800";

MERGE (n:DataElement {name: "被强制执行人的履行情况"})
  ON CREATE SET business_description: "被执行人履行信息", name: "被强制执行人的履行情况", data_format: "C..800";

MERGE (n:DataElement {name: "强制执行发布时间"})
  ON CREATE SET business_description: "案件发布时间", name: "强制执行发布时间", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..1000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..1000";

MERGE (n:DataElement {name: "案号"})
  ON CREATE SET business_description: "案号", name: "案号", data_format: "C..1000";

MERGE (n:DataElement {name: "援助方式"})
  ON CREATE SET business_description: "援助方式", name: "援助方式", data_format: "C..1000";

MERGE (n:DataElement {name: "受理时间"})
  ON CREATE SET business_description: "受理时间", name: "受理时间", data_format: "C..1000";

MERGE (n:DataElement {name: "涉及案件名称"})
  ON CREATE SET business_description: "涉及案件名称", name: "涉及案件名称", data_format: "C..1000";

MERGE (n:DataElement {name: "指定原因"})
  ON CREATE SET business_description: "指定原因", name: "指定原因", data_format: "C..1000";

MERGE (n:DataElement {name: "指定机关"})
  ON CREATE SET business_description: "指定机关", name: "指定机关", data_format: "C..1000";

MERGE (n:DataElement {name: "案件类别"})
  ON CREATE SET business_description: "案件类别", name: "案件类别", data_format: "C..1000";

MERGE (n:DataElement {name: "审查日期"})
  ON CREATE SET business_description: "审查日期", name: "审查日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "案件承办人"})
  ON CREATE SET business_description: "案件承办人", name: "案件承办人", data_format: "C..1000";

MERGE (n:DataElement {name: "案件承办单位"})
  ON CREATE SET business_description: "案件承办单位", name: "案件承办单位", data_format: "C..1000";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "违纪类型"})
  ON CREATE SET business_description: "违纪所属类型", name: "违纪类型", data_format: "C40";

MERGE (n:DataElement {name: "违纪内容"})
  ON CREATE SET business_description: "违纪的内容信息", name: "违纪内容", data_format: "C..16000";

MERGE (n:DataElement {name: "违纪人所在机构名称"})
  ON CREATE SET business_description: "违纪人所在机构名称", name: "违纪人所在机构名称", data_format: "C..800";

MERGE (n:DataElement {name: "违纪处理意见"})
  ON CREATE SET business_description: "违纪人处理意见", name: "违纪处理意见", data_format: "C..8000";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "信息类别"})
  ON CREATE SET value_domain: "1-申诉2-举报3-咨询4-其他", business_description: "申诉举报信息类型", name: "信息类别", data_format: "C..255";

MERGE (n:DataElement {name: "关键字描述"})
  ON CREATE SET business_description: "申诉举报关键字描述", name: "关键字描述", data_format: "C..255";

MERGE (n:DataElement {name: "问题类别"})
  ON CREATE SET business_description: "申诉举报反馈问题类别", name: "问题类别", data_format: "C..255";

MERGE (n:DataElement {name: "具体问题"})
  ON CREATE SET business_description: "具体问题描述信息", name: "具体问题", data_format: "C..16000";

MERGE (n:DataElement {name: "自然人唯一标识"})
  ON CREATE SET name: "自然人唯一标识", data_format: "C..800";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "上访人身份证明"})
  ON CREATE SET business_description: "上访人员身份证明", name: "上访人身份证明", data_format: "C..400";

MERGE (n:DataElement {name: "信访日期"})
  ON CREATE SET business_description: "信访日期", name: "信访日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "信访事件"})
  ON CREATE SET business_description: "信访事件内容", name: "信访事件", data_format: "C..16000";

MERGE (n:DataElement {name: "信访事由"})
  ON CREATE SET business_description: "信访事件缘由", name: "信访事由", data_format: "C..16000";

MERGE (n:DataElement {name: "信访部门"})
  ON CREATE SET business_description: "信访上访部门", name: "信访部门", data_format: "C..160";

MERGE (n:DataElement {name: "维权内容"})
  ON CREATE SET business_description: "维权内容", name: "维权内容", data_format: "C..16000";

MERGE (n:DataElement {name: "维权日期"})
  ON CREATE SET business_description: "维权日期", name: "维权日期", data_format: "YYYYMMDD";

MERGE (n:DataElement {name: "自然人唯一标"})
  ON CREATE SET name: "自然人唯一标", data_format: "C..3000";

MERGE (n:DataElement {name: "身份证件类型"})
  ON CREATE SET name: "身份证件类型", data_format: "C16";

MERGE (n:DataElement {name: "身份证件号码"})
  ON CREATE SET name: "身份证件号码", data_format: "C..800";

MERGE (n:DataElement {name: "投诉人"})
  ON CREATE SET business_description: "投诉人", name: "投诉人", data_format: "C..255";

MERGE (n:DataElement {name: "投诉内容"})
  ON CREATE SET business_description: "投诉内容", name: "投诉内容", data_format: "C..";

MERGE (n:DataElement {name: "投诉电话"})
  ON CREATE SET business_description: "投诉电话", name: "投诉电话", data_format: "C..800";

MERGE (n:DataElement {name: "受理申诉举报类型"})
  ON CREATE SET value_domain: "10-受理20-不受理", business_description: "受理申诉举报类型信息", name: "受理申诉举报类型", data_format: "C16";

MERGE (n:DataElement {name: "办理部门"})
  ON CREATE SET business_description: "涉及案件办理部门", name: "办理部门", data_format: "C..800";

MERGE (n:DataElement {name: "协助单位类型"})
  ON CREATE SET business_description: "协调单位类型信息", name: "协助单位类型", data_format: "C..160";

MERGE (n:DataElement {name: "消费安全事件类型"})
  ON CREATE SET business_description: "消费安全事件类型信息", name: "消费安全事件类型", data_format: "C16";

MERGE (n:DataElement {name: "反馈登记人"})
  ON CREATE SET business_description: "事件反馈登记人信息", name: "反馈登记人", data_format: "C..240";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "shbzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "shbzhm", length: "200", nullable: "True", comment: "社会保障号码", business_term: "社会保障号码";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "200", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "cbdxzqhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cbdxzqhdm", length: "100", nullable: "True", comment: "参保所属地", business_term: "参保所属地";

MERGE (n:Field {name: "cbksrq"})
  ON CREATE SET data_type: "VARCHAR", name: "cbksrq", length: "50", nullable: "True", comment: "参保开始日期", business_term: "参保开始日期";

MERGE (n:Field {name: "bcjfksny"})
  ON CREATE SET data_type: "VARCHAR", name: "bcjfksny", length: "50", nullable: "True", comment: "本次缴费开始年月", business_term: "本次缴费开始年月";

MERGE (n:Field {name: "sbcbzt"})
  ON CREATE SET data_type: "VARCHAR", name: "sbcbzt", length: "200", nullable: "True", comment: "社保参保状态", business_term: "社保参保状态";

MERGE (n:Field {name: "sbzzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbzzrq", length: "50", nullable: "True", comment: "社保终止日期", business_term: "社保终止日期";

MERGE (n:Field {name: "zhjlny"})
  ON CREATE SET data_type: "VARCHAR", name: "zhjlny", length: "100", nullable: "True", comment: "账户建立年月", business_term: "账户建立年月";

MERGE (n:Field {name: "zjfs"})
  ON CREATE SET data_type: "VARCHAR", name: "zjfs", length: "100", nullable: "True", comment: "征缴方式", business_term: "征缴方式";

MERGE (n:Field {name: "ygxs"})
  ON CREATE SET data_type: "VARCHAR", name: "ygxs", length: "100", nullable: "True", comment: "用工形式", business_term: "用工形式";

MERGE (n:Field {name: "grjfzt"})
  ON CREATE SET data_type: "VARCHAR", name: "grjfzt", length: "50", nullable: "True", comment: "个人缴费状态", business_term: "个人缴费状态";

MERGE (n:Field {name: "cbsf"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsf", length: "100", nullable: "True", comment: "参保身份", business_term: "参保身份";

MERGE (n:Field {name: "dfcbsfmz"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmz", length: "50", nullable: "True", comment: "地方参保身份码值", business_term: "地方参保身份码值";

MERGE (n:Field {name: "dfcbsfmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmc", length: "100", nullable: "True", comment: "地方参保身份名称", business_term: "地方参保身份名称";

MERGE (n:Field {name: "ldgxksrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxksrq", nullable: "True", comment: "劳动关系开始日期", business_term: "劳动关系开始日期";

MERGE (n:Field {name: "ldgxzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxzzrq", nullable: "True", comment: "劳动关系终止日期", business_term: "劳动关系终止日期";

MERGE (n:Field {name: "dqyxbz"})
  ON CREATE SET data_type: "VARCHAR", name: "dqyxbz", length: "50", nullable: "True", comment: "当前有效标志", business_term: "当前有效标志";

MERGE (n:Field {name: "rycbgxlx"})
  ON CREATE SET data_type: "VARCHAR", name: "rycbgxlx", length: "100", nullable: "True", comment: "人员参保关系类型", business_term: "人员参保关系类型";

MERGE (n:Field {name: "jfrylb"})
  ON CREATE SET data_type: "VARCHAR", name: "jfrylb", length: "50", nullable: "True", comment: "缴费人员类别", business_term: "缴费人员类别";

MERGE (n:Field {name: "grcbrq"})
  ON CREATE SET data_type: "VARCHAR", name: "grcbrq", length: "50", nullable: "True", comment: "个人参保日期", business_term: "个人参保日期";

MERGE (n:Field {name: "xzcfje"})
  ON CREATE SET data_type: "NUMERIC", name: "xzcfje", nullable: "True", comment: "行政处罚金额";

MERGE (n:Field {name: "xzcfsfxxgk"})
  ON CREATE SET data_type: "CHAR", name: "xzcfsfxxgk", length: "8", nullable: "True", comment: "行政处罚是否信息公开";

MERGE (n:Field {name: "xzcfgksj"})
  ON CREATE SET data_type: "DATE", name: "xzcfgksj", nullable: "True", comment: "行政处罚公开时间";

MERGE (n:Field {name: "xzcfgkjssj"})
  ON CREATE SET data_type: "DATE", name: "xzcfgkjssj", nullable: "True", comment: "行政处罚公开结束时间";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xzcjbsqr"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcjbsqr", length: "1000", nullable: "True", comment: "行政裁决被申请人", business_term: "行政裁决被申请人";

MERGE (n:Field {name: "xzcjsqsx"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcjsqsx", length: "4000", nullable: "True", comment: "行政裁决申请事项", business_term: "行政裁决申请事项";

MERGE (n:Field {name: "xzcjssjg"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcjssjg", length: "1000", nullable: "True", comment: "行政裁决实施机关", business_term: "行政裁决实施机关";

MERGE (n:Field {name: "xzcjrq"})
  ON CREATE SET data_type: "DATE", name: "xzcjrq", nullable: "True", comment: "行政裁决日期", business_term: "行政裁决日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "160", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "3000", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xlmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xlmc", length: "160", nullable: "True", comment: "学历名称", business_term: "学历名称";

MERGE (n:Field {name: "xlzy"})
  ON CREATE SET data_type: "VARCHAR", name: "xlzy", length: "48", nullable: "True", comment: "学历专业", business_term: "学历专业";

MERGE (n:Field {name: "xlsydw"})
  ON CREATE SET data_type: "VARCHAR", name: "xlsydw", length: "800", nullable: "True", comment: "学历授予单位", business_term: "学历授予单位";

MERGE (n:Field {name: "xlsyrq"})
  ON CREATE SET data_type: "DATE", name: "xlsyrq", nullable: "True", comment: "学历授予日期", business_term: "学历授予日期";

MERGE (n:Field {name: "xwlbm"})
  ON CREATE SET data_type: "VARCHAR", name: "xwlbm", length: "400", nullable: "True", comment: "学位类别码", business_term: "学位类别码";

MERGE (n:Field {name: "xwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xwmc", length: "160", nullable: "True", comment: "学位名称", business_term: "学位名称";

MERGE (n:Field {name: "xwsydw"})
  ON CREATE SET data_type: "VARCHAR", name: "xwsydw", length: "800", nullable: "True", comment: "学位授予单位", business_term: "学位授予单位";

MERGE (n:Field {name: "xwsyrq"})
  ON CREATE SET data_type: "DATE", name: "xwsyrq", nullable: "True", comment: "学位授予日期", business_term: "学位授予日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "jg"})
  ON CREATE SET data_type: "VARCHAR", name: "jg", length: "100", nullable: "True", comment: "籍贯", business_term: "籍贯";

MERGE (n:Field {name: "hklb"})
  ON CREATE SET data_type: "VARCHAR", name: "hklb", length: "20", nullable: "True", comment: "户口类别", business_term: "户口类别";

MERGE (n:Field {name: "hjszd"})
  ON CREATE SET data_type: "VARCHAR", name: "hjszd", length: "200", nullable: "True", comment: "户籍所在地", business_term: "户籍所在地";

MERGE (n:Field {name: "hjdssxdm"})
  ON CREATE SET data_type: "VARCHAR", name: "hjdssxdm", length: "100", nullable: "True", comment: "户籍地省市县代码", business_term: "户籍地省市县代码";

MERGE (n:Field {name: "hjdxz"})
  ON CREATE SET data_type: "VARCHAR", name: "hjdxz", length: "2000", nullable: "True", comment: "户籍地详址", business_term: "户籍地详址";

MERGE (n:Field {name: "hjdjlxdm"})
  ON CREATE SET data_type: "VARCHAR", name: "hjdjlxdm", length: "40", nullable: "True", comment: "户籍地街路巷代码", business_term: "户籍地街路巷代码";

MERGE (n:Field {name: "hzxm"})
  ON CREATE SET data_type: "VARCHAR", name: "hzxm", length: "100", nullable: "True", comment: "户主姓名", business_term: "户主姓名";

MERGE (n:Field {name: "hzsfhm"})
  ON CREATE SET data_type: "VARCHAR", name: "hzsfhm", length: "100", nullable: "True", comment: "户主身份号码", business_term: "户主身份号码";

MERGE (n:Field {name: "hjqfdw"})
  ON CREATE SET data_type: "VARCHAR", name: "hjqfdw", length: "50", nullable: "True", comment: "户籍签发单位", business_term: "户籍签发单位";

MERGE (n:Field {name: "hjqfsj"})
  ON CREATE SET data_type: "DATE", name: "hjqfsj", nullable: "True", comment: "户籍签发时间", business_term: "户籍签发时间";

MERGE (n:Field {name: "hjzxbs"})
  ON CREATE SET data_type: "VARCHAR", name: "hjzxbs", length: "20", nullable: "True", comment: "户籍注销标识", business_term: "户籍注销标识";

MERGE (n:Field {name: "hjzxrq"})
  ON CREATE SET data_type: "DATE", name: "hjzxrq", nullable: "True", comment: "户籍注销日期", business_term: "户籍注销日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "dhhm"})
  ON CREATE SET data_type: "VARCHAR", name: "dhhm", length: "100", nullable: "True", comment: "电话号码", business_term: "电话号码";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "fwdz"})
  ON CREATE SET data_type: "VARCHAR", name: "fwdz", length: "1600", nullable: "True", comment: "房屋地址", business_term: "房屋地址";

MERGE (n:Field {name: "fwxz"})
  ON CREATE SET data_type: "VARCHAR", name: "fwxz", length: "800", nullable: "True", comment: "房屋性质", business_term: "房屋性质";

MERGE (n:Field {name: "fwjzmj"})
  ON CREATE SET data_type: "NUMERIC", name: "fwjzmj", nullable: "True", comment: "房屋建筑面积", business_term: "房屋建筑面积";

MERGE (n:Field {name: "fwsymj"})
  ON CREATE SET data_type: "NUMERIC", name: "fwsymj", nullable: "True", comment: "房屋使用面积", business_term: "房屋使用面积";

MERGE (n:Field {name: "fwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "fwmc", length: "800", nullable: "True", comment: "房屋名称", business_term: "房屋名称";

MERGE (n:Field {name: "fwfh"})
  ON CREATE SET data_type: "VARCHAR", name: "fwfh", length: "800", nullable: "True", comment: "房屋房号", business_term: "房屋房号";

MERGE (n:Field {name: "gfhtqdrq"})
  ON CREATE SET data_type: "DATE", name: "gfhtqdrq", nullable: "True", comment: "购房合同签订日期", business_term: "购房合同签订日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "shbzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "shbzhm", length: "200", nullable: "True", comment: "社会保障号码", business_term: "社会保障号码";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "200", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "cbdxzqhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cbdxzqhdm", length: "100", nullable: "True", comment: "参保地行政区划代码", business_term: "参保地行政区划代码";

MERGE (n:Field {name: "cbksrq"})
  ON CREATE SET data_type: "DATE", name: "cbksrq", nullable: "True", comment: "参保开始日期", business_term: "参保开始日期";

MERGE (n:Field {name: "sbcbzt"})
  ON CREATE SET data_type: "VARCHAR", name: "sbcbzt", length: "200", nullable: "True", comment: "社保参保状态", business_term: "社保参保状态";

MERGE (n:Field {name: "sbzzrq"})
  ON CREATE SET data_type: "DATE", name: "sbzzrq", nullable: "True", comment: "社保终止日期", business_term: "社保终止日期";

MERGE (n:Field {name: "zhjlny"})
  ON CREATE SET data_type: "VARCHAR", name: "zhjlny", length: "100", nullable: "True", comment: "账户建立年月", business_term: "账户建立年月";

MERGE (n:Field {name: "zjfs"})
  ON CREATE SET data_type: "VARCHAR", name: "zjfs", length: "100", nullable: "True", comment: "征缴方式", business_term: "征缴方式";

MERGE (n:Field {name: "ygxs"})
  ON CREATE SET data_type: "VARCHAR", name: "ygxs", length: "100", nullable: "True", comment: "用工形式", business_term: "用工形式";

MERGE (n:Field {name: "grjfzt"})
  ON CREATE SET data_type: "CHAR", name: "grjfzt", length: "50", nullable: "True", comment: "个人缴费状态", business_term: "个人缴费状态";

MERGE (n:Field {name: "cbsf"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsf", length: "100", nullable: "True", comment: "参保身份", business_term: "参保身份";

MERGE (n:Field {name: "dfcbsfmz"})
  ON CREATE SET data_type: "CHAR", name: "dfcbsfmz", length: "50", nullable: "True", comment: "地方参保身份码值", business_term: "地方参保身份码值";

MERGE (n:Field {name: "dfcbsfmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmc", length: "100", nullable: "True", comment: "地方参保身份名称", business_term: "地方参保身份名称";

MERGE (n:Field {name: "ldgxksrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxksrq", nullable: "True", comment: "劳动关系开始日期", business_term: "劳动关系开始日期";

MERGE (n:Field {name: "ldgxzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxzzrq", nullable: "True", comment: "劳动关系终止日期", business_term: "劳动关系终止日期";

MERGE (n:Field {name: "dqyxbz"})
  ON CREATE SET data_type: "CHAR", name: "dqyxbz", length: "50", nullable: "True", comment: "当前有效标志", business_term: "当前有效标志";

MERGE (n:Field {name: "rycbgxlx"})
  ON CREATE SET data_type: "VARCHAR", name: "rycbgxlx", length: "100", nullable: "True", comment: "人员参保关系类型", business_term: "人员参保关系类型";

MERGE (n:Field {name: "jfrylb"})
  ON CREATE SET data_type: "CHAR", name: "jfrylb", length: "50", nullable: "True", comment: "缴费人员类别", business_term: "缴费人员类别";

MERGE (n:Field {name: "grcbrq"})
  ON CREATE SET data_type: "DATE", name: "grcbrq", nullable: "True", comment: "个人参保日期", business_term: "个人参保日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "yxzh"})
  ON CREATE SET data_type: "VARCHAR", name: "yxzh", length: "800", nullable: "True", comment: "邮箱账号", business_term: "邮箱账号";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "3000", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "djsyrq"})
  ON CREATE SET data_type: "DATE", name: "djsyrq", nullable: "True", comment: "登记失业日期", business_term: "登记失业日期";

MERGE (n:Field {name: "syyy"})
  ON CREATE SET data_type: "VARCHAR", name: "syyy", length: "4000", nullable: "True", comment: "失业原因", business_term: "失业原因";

MERGE (n:Field {name: "jyknlb"})
  ON CREATE SET data_type: "CHAR", name: "jyknlb", length: "40", nullable: "True", comment: "就业困难类别", business_term: "就业困难类别";

MERGE (n:Field {name: "jycyzbh"})
  ON CREATE SET data_type: "VARCHAR", name: "jycyzbh", length: "240", nullable: "True", comment: "就业创业证编号", business_term: "就业创业证编号";

MERGE (n:Field {name: "jycyzfzjg"})
  ON CREATE SET data_type: "VARCHAR", name: "jycyzfzjg", length: "800", nullable: "True", comment: "就业创业证发证机构", business_term: "就业创业证发证机构";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "2000", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xxwys"})
  ON CREATE SET data_type: "VARCHAR", name: "xxwys", length: "3000", nullable: "True", comment: "学校唯一标识", business_term: "学校唯一标识";

MERGE (n:Field {name: "xh"})
  ON CREATE SET data_type: "VARCHAR", name: "xh", length: "800", nullable: "True", comment: "学号", business_term: "学号";

MERGE (n:Field {name: "rxrq"})
  ON CREATE SET data_type: "DATE", name: "rxrq", nullable: "True", comment: "入学日期", business_term: "入学日期";

MERGE (n:Field {name: "byrq"})
  ON CREATE SET data_type: "DATE", name: "byrq", nullable: "True", comment: "毕业日期", business_term: "毕业日期";

MERGE (n:Field {name: "sxzy"})
  ON CREATE SET data_type: "VARCHAR", name: "sxzy", length: "50", nullable: "True", comment: "所学专业", business_term: "所学专业";

MERGE (n:Field {name: "xz"})
  ON CREATE SET data_type: "CHAR", name: "xz", length: "50", nullable: "True", comment: "学制", business_term: "学制";

MERGE (n:Field {name: "njmc"})
  ON CREATE SET data_type: "VARCHAR", name: "njmc", length: "200", nullable: "True", comment: "年级名称", business_term: "年级名称";

MERGE (n:Field {name: "bjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "bjmc", length: "200", nullable: "True", comment: "班级名称", business_term: "班级名称";

MERGE (n:Field {name: "xxmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xxmc", length: "800", nullable: "True", comment: "学校名称", business_term: "学校名称";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "csyxzmbh"})
  ON CREATE SET data_type: "CHAR", name: "csyxzmbh", length: "160", nullable: "True", comment: "出生医学证明编号", business_term: "出生医学证明编号";

MERGE (n:Field {name: "p_flag"})
  ON CREATE SET data_type: "CHAR", name: "p_flag", length: "160", nullable: "True", comment: "证照状态", business_term: "证照状态";

MERGE (n:Field {name: "csyxzmfqsfzh"})
  ON CREATE SET data_type: "CHAR", name: "csyxzmfqsfzh", length: "144", nullable: "True", comment: "出生医学证明父亲身份证号", business_term: "出生医学证明父亲身份证号";

MERGE (n:Field {name: "csyxzmmqsfzh"})
  ON CREATE SET data_type: "CHAR", name: "csyxzmmqsfzh", length: "144", nullable: "True", comment: "出生医学证明母亲身份证号", business_term: "出生医学证明母亲身份证号";

MERGE (n:Field {name: "csyxzmqfrq"})
  ON CREATE SET data_type: "DATE", name: "csyxzmqfrq", nullable: "True", comment: "出生医学证明签发日期", business_term: "出生医学证明签发日期";

MERGE (n:Field {name: "csyxzmqfjg"})
  ON CREATE SET data_type: "VARCHAR", name: "csyxzmqfjg", length: "800", nullable: "True", comment: "出生医学证明签发机构", business_term: "出生医学证明签发机构";

MERGE (n:Field {name: "csdxzqhxz"})
  ON CREATE SET data_type: "VARCHAR", name: "csdxzqhxz", length: "800", nullable: "True", comment: "出生地行政区划地址";

MERGE (n:Field {name: "mq_xm"})
  ON CREATE SET data_type: "VARCHAR", name: "mq_xm", length: "500", nullable: "True", comment: "母亲姓名", business_term: "母亲姓名";

MERGE (n:Field {name: "fq_xm"})
  ON CREATE SET data_type: "VARCHAR", name: "fq_xm", length: "500", nullable: "True", comment: "父亲姓名", business_term: "父亲姓名";

MERGE (n:Field {name: "cssj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "cssj", nullable: "True", comment: "出生时间", business_term: "出生时间";

MERGE (n:Field {name: "csyz"})
  ON CREATE SET data_type: "INTEGER", name: "csyz", nullable: "True", comment: "出生孕周", business_term: "出生孕周";

MERGE (n:Field {name: "cstz"})
  ON CREATE SET data_type: "NUMERIC", name: "cstz", nullable: "True", comment: "出生体重", business_term: "出生体重";

MERGE (n:Field {name: "cssz"})
  ON CREATE SET data_type: "NUMERIC", name: "cssz", nullable: "True", comment: "出生身长", business_term: "出生身长";

MERGE (n:Field {name: "csd_qhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "csd_qhdm", length: "200", nullable: "True", comment: "出生地行政区划代码", business_term: "出生地行政区划代码";

MERGE (n:Field {name: "etgrbsh"})
  ON CREATE SET data_type: "VARCHAR", name: "etgrbsh", length: "200", nullable: "True", comment: "儿童个人标识号", business_term: "儿童个人标识号";

MERGE (n:Field {name: "bshlb"})
  ON CREATE SET data_type: "VARCHAR", name: "bshlb", length: "200", nullable: "True", comment: "标识号类别", business_term: "标识号类别";

MERGE (n:Field {name: "jsry"})
  ON CREATE SET data_type: "VARCHAR", name: "jsry", length: "200", nullable: "True", comment: "接生人员", business_term: "接生人员";

MERGE (n:Field {name: "zcjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zcjgmc", length: "400", nullable: "True", comment: "医疗机构名称", business_term: "医疗机构名称";

MERGE (n:Field {name: "xsexm"})
  ON CREATE SET data_type: "VARCHAR", name: "xsexm", length: "500", nullable: "True", comment: "新生儿姓名", business_term: "新生儿姓名";

MERGE (n:Field {name: "xsexb"})
  ON CREATE SET data_type: "VARCHAR", name: "xsexb", length: "10", nullable: "True", comment: "新生儿性别", business_term: "新生儿性别";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1381", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "1381", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1381", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "yljgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "yljgmc", length: "100", nullable: "True", comment: "医疗机构名称", business_term: "医疗机构名称";

MERGE (n:Field {name: "cfjkdah"})
  ON CREATE SET data_type: "VARCHAR", name: "cfjkdah", length: "20", nullable: "True", comment: "孕产妇健康档案编号", business_term: "孕产妇健康档案编号";

MERGE (n:Field {name: "cfzybah"})
  ON CREATE SET data_type: "VARCHAR", name: "cfzybah", length: "40", nullable: "True", comment: "产妇住院病案号", business_term: "产妇住院病案号";

MERGE (n:Field {name: "jdsj"})
  ON CREATE SET data_type: "DATE", name: "jdsj", nullable: "True", comment: "建档时间", business_term: "建档时间";

MERGE (n:Field {name: "gwrs"})
  ON CREATE SET data_type: "VARCHAR", name: "gwrs", length: "5", nullable: "True", comment: "本次是否属于高危妊娠", business_term: "本次是否属于高危妊娠";

MERGE (n:Field {name: "rsbfz"})
  ON CREATE SET data_type: "VARCHAR", name: "rsbfz", length: "200", nullable: "True", comment: "妊娠合并症/并发症史", business_term: "妊娠合并症/并发症史";

MERGE (n:Field {name: "rsfxdm"})
  ON CREATE SET data_type: "VARCHAR", name: "rsfxdm", length: "10", nullable: "True", comment: "妊娠风险评估分级代码", business_term: "妊娠风险评估分级代码";

MERGE (n:Field {name: "cfyc"})
  ON CREATE SET data_type: "VARCHAR", name: "cfyc", length: "200", nullable: "True", comment: "孕次（次）", business_term: "孕次（次）";

MERGE (n:Field {name: "cfcc"})
  ON CREATE SET data_type: "VARCHAR", name: "cfcc", length: "200", nullable: "True", comment: "产次（次）", business_term: "产次（次）";

MERGE (n:Field {name: "cfts"})
  ON CREATE SET data_type: "VARCHAR", name: "cfts", length: "200", nullable: "True", comment: "胎数", business_term: "胎数";

MERGE (n:Field {name: "cftc"})
  ON CREATE SET data_type: "VARCHAR", name: "cftc", length: "200", nullable: "True", comment: "胎次", business_term: "胎次";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "xxwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "xxwybs", length: "48", nullable: "True", comment: "学校唯一标识";

MERGE (n:Field {name: "xxmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xxmc", length: "800", nullable: "True", comment: "学校名称";

MERGE (n:Field {name: "xh"})
  ON CREATE SET data_type: "VARCHAR", name: "xh", length: "48", nullable: "True", comment: "学号";

MERGE (n:Field {name: "rxrq"})
  ON CREATE SET data_type: "DATE", name: "rxrq", nullable: "True", comment: "入学日期";

MERGE (n:Field {name: "byrq"})
  ON CREATE SET data_type: "DATE", name: "byrq", nullable: "True", comment: "毕业日期";

MERGE (n:Field {name: "sxzy"})
  ON CREATE SET data_type: "VARCHAR", name: "sxzy", length: "48", nullable: "True", comment: "所学专业";

MERGE (n:Field {name: "xz"})
  ON CREATE SET data_type: "CHAR", name: "xz", length: "8", nullable: "True", comment: "学制";

MERGE (n:Field {name: "yxmc"})
  ON CREATE SET data_type: "VARCHAR", name: "yxmc", length: "800", nullable: "True", comment: "院系名称";

MERGE (n:Field {name: "njmc"})
  ON CREATE SET data_type: "VARCHAR", name: "njmc", length: "400", nullable: "True", comment: "年级名称";

MERGE (n:Field {name: "bjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "bjmc", length: "400", nullable: "True", comment: "班级名称";

MERGE (n:Field {name: "sfkns"})
  ON CREATE SET data_type: "VARCHAR", name: "sfkns", length: "400", nullable: "True", comment: "是否困难生";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "grzh"})
  ON CREATE SET data_type: "CHAR", name: "grzh", length: "160", nullable: "True", comment: "个人账号", business_term: "个人账号";

MERGE (n:Field {name: "dwzh"})
  ON CREATE SET data_type: "CHAR", name: "dwzh", length: "160", nullable: "True", comment: "单位账号", business_term: "单位账号";

MERGE (n:Field {name: "jcjgh"})
  ON CREATE SET data_type: "CHAR", name: "jcjgh", length: "160", nullable: "True", comment: "缴存机构号", business_term: "缴存机构号";

MERGE (n:Field {name: "jcjs"})
  ON CREATE SET data_type: "NUMERIC", name: "jcjs", nullable: "True", comment: "缴存基数", business_term: "缴存基数";

MERGE (n:Field {name: "grjcje"})
  ON CREATE SET data_type: "NUMERIC", name: "grjcje", nullable: "True", comment: "个人缴存金额", business_term: "个人缴存金额";

MERGE (n:Field {name: "dwjcje"})
  ON CREATE SET data_type: "NUMERIC", name: "dwjcje", nullable: "True", comment: "单位缴存金额", business_term: "单位缴存金额";

MERGE (n:Field {name: "jcbl"})
  ON CREATE SET data_type: "VARCHAR", name: "jcbl", length: "2000", nullable: "True", comment: "缴存比例", business_term: "缴存比例";

MERGE (n:Field {name: "grzhye"})
  ON CREATE SET data_type: "NUMERIC", name: "grzhye", nullable: "True", comment: "个人账户余额", business_term: "个人账户余额";

MERGE (n:Field {name: "grzhzt"})
  ON CREATE SET data_type: "VARCHAR", name: "grzhzt", length: "2000", nullable: "True", comment: "个人账户状态", business_term: "个人账户状态";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "2000", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "hjyf"})
  ON CREATE SET data_type: "CHAR", name: "hjyf", length: "48", nullable: "True", comment: "汇缴月份", business_term: "汇缴月份";

MERGE (n:Field {name: "jcsj"})
  ON CREATE SET data_type: "DATE", name: "jcsj", nullable: "True", comment: "缴存时间", business_term: "缴存时间";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sfrsfzm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfrsfzm", length: "400", nullable: "True", comment: "上访人身份证明", business_term: "上访人身份证明";

MERGE (n:Field {name: "xfrq"})
  ON CREATE SET data_type: "DATE", name: "xfrq", nullable: "True", comment: "信访日期", business_term: "信访日期";

MERGE (n:Field {name: "xfsj"})
  ON CREATE SET data_type: "VARCHAR", name: "xfsj", length: "16000", nullable: "True", comment: "信访事件", business_term: "信访事件";

MERGE (n:Field {name: "xfsy"})
  ON CREATE SET data_type: "VARCHAR", name: "xfsy", length: "16000", nullable: "True", comment: "信访事由", business_term: "信访事由";

MERGE (n:Field {name: "xfbm"})
  ON CREATE SET data_type: "VARCHAR", name: "xfbm", length: "160", nullable: "True", comment: "信访部门", business_term: "信访部门";

MERGE (n:Field {name: "wqnr"})
  ON CREATE SET data_type: "VARCHAR", name: "wqnr", length: "16000", nullable: "True", comment: "维权内容", business_term: "维权内容";

MERGE (n:Field {name: "wqrq"})
  ON CREATE SET data_type: "DATE", name: "wqrq", nullable: "True", comment: "维权日期", business_term: "维权日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xzjljdwh"})
  ON CREATE SET data_type: "VARCHAR", name: "xzjljdwh", length: "2000", nullable: "True", comment: "行政奖励决定文号", business_term: "行政奖励决定文号";

MERGE (n:Field {name: "xzjlmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xzjlmc", length: "1000", nullable: "True", comment: "行政奖励名称", business_term: "行政奖励名称";

MERGE (n:Field {name: "xzjljdnr"})
  ON CREATE SET data_type: "VARCHAR", name: "xzjljdnr", length: "2000", nullable: "True", comment: "行政奖励决定内容", business_term: "行政奖励决定内容";

MERGE (n:Field {name: "xzjlrq"})
  ON CREATE SET data_type: "DATE", name: "xzjlrq", nullable: "True", comment: "行政奖励日期", business_term: "行政奖励日期";

MERGE (n:Field {name: "xzjlbm"})
  ON CREATE SET data_type: "VARCHAR", name: "xzjlbm", length: "200", nullable: "True", comment: "行政奖励部门", business_term: "行政奖励部门";

MERGE (n:Field {name: "sjdj"})
  ON CREATE SET data_type: "VARCHAR", name: "sjdj", length: "100", nullable: "True", comment: "授奖等级", business_term: "授奖等级";

MERGE (n:Field {name: "xmmc"})
  ON CREATE SET data_type: "CHAR", name: "xmmc", length: "300", nullable: "True", comment: "项目名称", business_term: "项目名称";

MERGE (n:Field {name: "sbnd"})
  ON CREATE SET data_type: "DATE", name: "sbnd", nullable: "True", comment: "年度", business_term: "年度";

MERGE (n:Field {name: "kssj"})
  ON CREATE SET data_type: "DATE", name: "kssj", nullable: "True", comment: "开始时间", business_term: "开始时间";

MERGE (n:Field {name: "jssj"})
  ON CREATE SET data_type: "DATE", name: "jssj", nullable: "True", comment: "结束时间", business_term: "结束时间";

MERGE (n:Field {name: "jllx"})
  ON CREATE SET data_type: "CHAR", name: "jllx", length: "300", nullable: "True", comment: "奖励类型", business_term: "奖励类型";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "shbzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "shbzhm", length: "200", nullable: "True", comment: "社会保障号码", business_term: "社会保障号码";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "200", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "cbdxzqhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cbdxzqhdm", length: "100", nullable: "True", comment: "参保所属地", business_term: "参保所属地";

MERGE (n:Field {name: "cbksrq"})
  ON CREATE SET data_type: "VARCHAR", name: "cbksrq", length: "50", nullable: "True", comment: "参保开始日期", business_term: "参保开始日期";

MERGE (n:Field {name: "bcjfksny"})
  ON CREATE SET data_type: "VARCHAR", name: "bcjfksny", length: "50", nullable: "True", comment: "本次缴费开始年月", business_term: "本次缴费开始年月";

MERGE (n:Field {name: "sbcbzt"})
  ON CREATE SET data_type: "VARCHAR", name: "sbcbzt", length: "200", nullable: "True", comment: "社保参保状态", business_term: "社保参保状态";

MERGE (n:Field {name: "sbzzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbzzrq", length: "50", nullable: "True", comment: "社保终止日期", business_term: "社保终止日期";

MERGE (n:Field {name: "zhjlny"})
  ON CREATE SET data_type: "VARCHAR", name: "zhjlny", length: "100", nullable: "True", comment: "账户建立年月", business_term: "账户建立年月";

MERGE (n:Field {name: "zjfs"})
  ON CREATE SET data_type: "VARCHAR", name: "zjfs", length: "100", nullable: "True", comment: "征缴方式", business_term: "征缴方式";

MERGE (n:Field {name: "ygxs"})
  ON CREATE SET data_type: "VARCHAR", name: "ygxs", length: "100", nullable: "True", comment: "用工形式", business_term: "用工形式";

MERGE (n:Field {name: "grjfzt"})
  ON CREATE SET data_type: "VARCHAR", name: "grjfzt", length: "50", nullable: "True", comment: "个人缴费状态", business_term: "个人缴费状态";

MERGE (n:Field {name: "cbsf"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsf", length: "100", nullable: "True", comment: "参保身份", business_term: "参保身份";

MERGE (n:Field {name: "dfcbsfmz"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmz", length: "50", nullable: "True", comment: "地方参保身份码值", business_term: "地方参保身份码值";

MERGE (n:Field {name: "dfcbsfmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmc", length: "100", nullable: "True", comment: "地方参保身份名称", business_term: "地方参保身份名称";

MERGE (n:Field {name: "ldgxksrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxksrq", nullable: "True", comment: "劳动关系开始日期", business_term: "劳动关系开始日期";

MERGE (n:Field {name: "ldgxzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxzzrq", nullable: "True", comment: "劳动关系终止日期", business_term: "劳动关系终止日期";

MERGE (n:Field {name: "dqyxbz"})
  ON CREATE SET data_type: "VARCHAR", name: "dqyxbz", length: "50", nullable: "True", comment: "当前有效标志", business_term: "当前有效标志";

MERGE (n:Field {name: "rycbgxlx"})
  ON CREATE SET data_type: "VARCHAR", name: "rycbgxlx", length: "100", nullable: "True", comment: "人员参保关系类型", business_term: "人员参保关系类型";

MERGE (n:Field {name: "jfrylb"})
  ON CREATE SET data_type: "VARCHAR", name: "jfrylb", length: "50", nullable: "True", comment: "缴费人员类别", business_term: "缴费人员类别";

MERGE (n:Field {name: "grcbrq"})
  ON CREATE SET data_type: "VARCHAR", name: "grcbrq", length: "50", nullable: "True", comment: "个人参保日期", business_term: "个人参保日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1600", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "400", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1600", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "rzyrymc"})
  ON CREATE SET data_type: "VARCHAR", name: "rzyrymc", length: "1600", nullable: "True", comment: "认证与荣誉名称", business_term: "认证与荣誉名称";

MERGE (n:Field {name: "yxq"})
  ON CREATE SET data_type: "CHAR", name: "yxq", length: "32", nullable: "True", comment: "有效期", business_term: "有效期";

MERGE (n:Field {name: "rymc"})
  ON CREATE SET data_type: "VARCHAR", name: "rymc", length: "400", nullable: "True", comment: "荣誉名称", business_term: "荣誉名称";

MERGE (n:Field {name: "shzt"})
  ON CREATE SET data_type: "VARCHAR", name: "shzt", length: "800", nullable: "True", comment: "审核状态", business_term: "审核状态";

MERGE (n:Field {name: "ryjb"})
  ON CREATE SET data_type: "VARCHAR", name: "ryjb", length: "240", nullable: "True", comment: "荣誉级别", business_term: "荣誉级别";

MERGE (n:Field {name: "jb"})
  ON CREATE SET data_type: "VARCHAR", name: "jb", length: "1000", nullable: "True", comment: "级别", business_term: "级别";

MERGE (n:Field {name: "zslx"})
  ON CREATE SET data_type: "TEXT", name: "zslx", nullable: "True", comment: "证书类型", business_term: "证书类型";

MERGE (n:Field {name: "ryrdrq"})
  ON CREATE SET data_type: "DATE", name: "ryrdrq", nullable: "True", comment: "荣誉认定日期", business_term: "荣誉认定日期";

MERGE (n:Field {name: "ryjldx"})
  ON CREATE SET data_type: "VARCHAR", name: "ryjldx", length: "800", nullable: "True", comment: "荣誉奖励对象", business_term: "荣誉奖励对象";

MERGE (n:Field {name: "zsbh"})
  ON CREATE SET data_type: "TEXT", name: "zsbh", nullable: "True", comment: "证书编号", business_term: "证书编号";

MERGE (n:Field {name: "ryzsyxqz"})
  ON CREATE SET data_type: "VARCHAR", name: "ryzsyxqz", length: "240", nullable: "True", comment: "荣誉证书有效期自", business_term: "荣誉证书有效期自";

MERGE (n:Field {name: "ryzsyxqzh"})
  ON CREATE SET data_type: "VARCHAR", name: "ryzsyxqzh", length: "240", nullable: "True", comment: "荣誉证书有效期至", business_term: "荣誉证书有效期至";

MERGE (n:Field {name: "rybfjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "rybfjgmc", length: "400", nullable: "True", comment: "荣誉颁发机构名称", business_term: "荣誉颁发机构名称";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "100", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "zyzgzjbh"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzgzjbh", length: "300", nullable: "True", comment: "证件编号", business_term: "证件编号";

MERGE (n:Field {name: "zyzgzjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzgzjmc", length: "100", nullable: "True", comment: "证件名称", business_term: "证件名称";

MERGE (n:Field {name: "zyzgzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzgzjlx", length: "200", nullable: "True", comment: "证件类型", business_term: "证件类型";

MERGE (n:Field {name: "zyzgzjqfjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzgzjqfjgmc", length: "100", nullable: "True", comment: "证件签发机关名称", business_term: "证件签发机关名称";

MERGE (n:Field {name: "zyzgzjqfjgdm"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzgzjqfjgdm", length: "201", nullable: "True", comment: "从业资格证件签发机关代码", business_term: "从业资格证件签发机关代码";

MERGE (n:Field {name: "zyzgzjzt"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzgzjzt", length: "202", nullable: "True", comment: "证件状态", business_term: "证件状态";

MERGE (n:Field {name: "zyzgzjyxqq"})
  ON CREATE SET data_type: "DATE", name: "zyzgzjyxqq", nullable: "True", comment: "证件有效期起", business_term: "证件有效期起";

MERGE (n:Field {name: "zyzgzjyxqz"})
  ON CREATE SET data_type: "DATE", name: "zyzgzjyxqz", nullable: "True", comment: "证件有效期止", business_term: "证件有效期止";

MERGE (n:Field {name: "zyzgzjqfrq"})
  ON CREATE SET data_type: "DATE", name: "zyzgzjqfrq", nullable: "True", comment: "证件签发日期", business_term: "证件签发日期";

MERGE (n:Field {name: "zyzgzjccqfrq"})
  ON CREATE SET data_type: "DATE", name: "zyzgzjccqfrq", nullable: "True", comment: "从业资格证件初次签发日期", business_term: "从业资格证件初次签发日期";

MERGE (n:Field {name: "zyzgzjzxyy"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzgzjzxyy", length: "100", nullable: "True", comment: "证件注销原因", business_term: "证件注销原因";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "255", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "25", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "255", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "ah"})
  ON CREATE SET data_type: "VARCHAR", name: "ah", length: "255", nullable: "True", comment: "案号";

MERGE (n:Field {name: "zczxyjdw"})
  ON CREATE SET data_type: "VARCHAR", name: "zczxyjdw", length: "800", nullable: "True", comment: "作出执行依据单位";

MERGE (n:Field {name: "sxbzxrxm"})
  ON CREATE SET data_type: "VARCHAR", name: "sxbzxrxm", length: "800", nullable: "True", comment: "被执行人姓名";

MERGE (n:Field {name: "lasj"})
  ON CREATE SET data_type: "DATE", name: "lasj", nullable: "True", comment: "立案时间";

MERGE (n:Field {name: "flsxwsqddyw"})
  ON CREATE SET data_type: "VARCHAR", name: "flsxwsqddyw", length: "800", nullable: "True", comment: "法律生效文书确定的义务";

MERGE (n:Field {name: "fbsj"})
  ON CREATE SET data_type: "DATE", name: "fbsj", nullable: "True", comment: "发布时间";

MERGE (n:Field {name: "bzxrdlxqk"})
  ON CREATE SET data_type: "VARCHAR", name: "bzxrdlxqk", length: "16000", nullable: "True", comment: "被执行人的履行情况";

MERGE (n:Field {name: "sxbzxrjtqx"})
  ON CREATE SET data_type: "VARCHAR", name: "sxbzxrjtqx", length: "16000", nullable: "True", comment: "失信被执行人具体情况";

MERGE (n:Field {name: "wlxbf"})
  ON CREATE SET data_type: "VARCHAR", name: "wlxbf", length: "2400", nullable: "True", comment: "未履行部分";

MERGE (n:Field {name: "nfzrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "nfzrrwybs", length: "800", nullable: "True", comment: "男方自然人唯一标识";

MERGE (n:Field {name: "nvfzrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "nvfzrrwybs", length: "800", nullable: "True", comment: "女方自然人唯一标识";

MERGE (n:Field {name: "jlhzzh"})
  ON CREATE SET data_type: "CHAR", name: "jlhzzh", length: "400", nullable: "True", comment: "结离婚证字号";

MERGE (n:Field {name: "nfhyzk"})
  ON CREATE SET data_type: "CHAR", name: "nfhyzk", length: "16", nullable: "True", comment: "婚姻状况(男)";

MERGE (n:Field {name: "nvfhyzk"})
  ON CREATE SET data_type: "CHAR", name: "nvfhyzk", length: "16", nullable: "True", comment: "婚姻状况(女)";

MERGE (n:Field {name: "djrq"})
  ON CREATE SET data_type: "DATE", name: "djrq", nullable: "True", comment: "登记日期";

MERGE (n:Field {name: "nfxm"})
  ON CREATE SET data_type: "VARCHAR", name: "nfxm", length: "800", nullable: "True", comment: "男方姓名";

MERGE (n:Field {name: "nfsfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "nfsfzjlx", length: "16", nullable: "True", comment: "男方身份证件类型";

MERGE (n:Field {name: "nfsfsfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "nfsfsfzjhm", length: "400", nullable: "True", comment: "男方身份证件号码";

MERGE (n:Field {name: "nvfxm"})
  ON CREATE SET data_type: "VARCHAR", name: "nvfxm", length: "800", nullable: "True", comment: "女方姓名";

MERGE (n:Field {name: "nvfsfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "nvfsfzjlx", length: "16", nullable: "True", comment: "女方身份证件类型";

MERGE (n:Field {name: "nvfsfsfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "nvfsfsfzjhm", length: "400", nullable: "True", comment: "女方身份证件号码";

MERGE (n:Field {name: "birth_man"})
  ON CREATE SET data_type: "DATE", name: "birth_man", nullable: "True", comment: "出生日期(男)";

MERGE (n:Field {name: "birth_woman"})
  ON CREATE SET data_type: "DATE", name: "birth_woman", nullable: "True", comment: "出生日期(女)";

MERGE (n:Field {name: "id_type_man"})
  ON CREATE SET data_type: "VARCHAR", name: "id_type_man", length: "800", nullable: "True", comment: "身份类别(男)";

MERGE (n:Field {name: "id_type_woman"})
  ON CREATE SET data_type: "VARCHAR", name: "id_type_woman", length: "800", nullable: "True", comment: "身份类别(女)";

MERGE (n:Field {name: "nation_man"})
  ON CREATE SET data_type: "VARCHAR", name: "nation_man", length: "240", nullable: "True", comment: "国籍(男)";

MERGE (n:Field {name: "nation_woman"})
  ON CREATE SET data_type: "VARCHAR", name: "nation_woman", length: "240", nullable: "True", comment: "国籍(女)";

MERGE (n:Field {name: "folk_man"})
  ON CREATE SET data_type: "VARCHAR", name: "folk_man", length: "4000", nullable: "True", comment: "民族(男)";

MERGE (n:Field {name: "folk_woman"})
  ON CREATE SET data_type: "VARCHAR", name: "folk_woman", length: "800", nullable: "True", comment: "民族(女)";

MERGE (n:Field {name: "print_num_man"})
  ON CREATE SET data_type: "CHAR", name: "print_num_man", length: "16", nullable: "True", comment: "印制号(男)";

MERGE (n:Field {name: "print_num_woman"})
  ON CREATE SET data_type: "CHAR", name: "print_num_woman", length: "16", nullable: "True", comment: "印制号(女)";

MERGE (n:Field {name: "lhpjah"})
  ON CREATE SET data_type: "VARCHAR", name: "lhpjah", length: "200", nullable: "True", comment: "离婚判决案号";

MERGE (n:Field {name: "jarq"})
  ON CREATE SET data_type: "DATE", name: "jarq", nullable: "True", comment: "结案日期";

MERGE (n:Field {name: "hydjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "hydjlx", length: "255", nullable: "True", comment: "婚姻登记类型";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "ymbm"})
  ON CREATE SET data_type: "VARCHAR", name: "ymbm", length: "500", nullable: "True", comment: "疫苗编码", business_term: "疫苗编码";

MERGE (n:Field {name: "jzlx"})
  ON CREATE SET data_type: "VARCHAR", name: "jzlx", length: "500", nullable: "True", comment: "接种类型", business_term: "接种类型";

MERGE (n:Field {name: "ymxh"})
  ON CREATE SET data_type: "VARCHAR", name: "ymxh", length: "500", nullable: "True", comment: "疫苗序号", business_term: "疫苗序号";

MERGE (n:Field {name: "scqy"})
  ON CREATE SET data_type: "VARCHAR", name: "scqy", length: "2000", nullable: "True", comment: "生产企业", business_term: "生产企业";

MERGE (n:Field {name: "jzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "jzrq", length: "500", nullable: "True", comment: "接种日期", business_term: "接种日期";

MERGE (n:Field {name: "jzbw"})
  ON CREATE SET data_type: "VARCHAR", name: "jzbw", length: "500", nullable: "True", comment: "接种部位", business_term: "接种部位";

MERGE (n:Field {name: "jzys"})
  ON CREATE SET data_type: "VARCHAR", name: "jzys", length: "500", nullable: "True", comment: "接种医生", business_term: "接种医生";

MERGE (n:Field {name: "jzjgbm"})
  ON CREATE SET data_type: "VARCHAR", name: "jzjgbm", length: "500", nullable: "True", comment: "接种机构编码", business_term: "接种机构编码";

MERGE (n:Field {name: "fybz"})
  ON CREATE SET data_type: "VARCHAR", name: "fybz", length: "500", nullable: "True", comment: "费用标志", business_term: "费用标志";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xzqzsqrq"})
  ON CREATE SET data_type: "DATE", name: "xzqzsqrq", nullable: "True", comment: "行政强制申请日期", business_term: "行政强制申请日期";

MERGE (n:Field {name: "xzqzdxszzzjgtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "xzqzdxszzzjgtyshxydm", length: "50", nullable: "True", comment: "行政强制对象所在组织机构统一社会信用代码", business_term: "行政强制对象所在组织机构统一社会信用代码";

MERGE (n:Field {name: "xzqzzxwh"})
  ON CREATE SET data_type: "VARCHAR", name: "xzqzzxwh", length: "100", nullable: "True", comment: "行政强制执行文号", business_term: "行政强制执行文号";

MERGE (n:Field {name: "xzqzfl"})
  ON CREATE SET data_type: "VARCHAR", name: "xzqzfl", length: "20", nullable: "True", comment: "行政强制分类", business_term: "行政强制分类";

MERGE (n:Field {name: "lscfsj"})
  ON CREATE SET data_type: "DATE", name: "lscfsj", nullable: "True", comment: "临时查封时间", business_term: "临时查封时间";

MERGE (n:Field {name: "cfxxxzqbm"})
  ON CREATE SET data_type: "VARCHAR", name: "cfxxxzqbm", length: "50", nullable: "True", comment: "查封信息行政区编码", business_term: "查封信息行政区编码";

MERGE (n:Field {name: "xzqzzxsj"})
  ON CREATE SET data_type: "DATE", name: "xzqzzxsj", nullable: "True", comment: "行政强制执行时间", business_term: "行政强制执行时间";

MERGE (n:Field {name: "xzqzxdrfl"})
  ON CREATE SET data_type: "VARCHAR", name: "xzqzxdrfl", length: "100", nullable: "True", comment: "行政强制相对人分类", business_term: "行政强制相对人分类";

MERGE (n:Field {name: "jclscfsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "jclscfsj", nullable: "True", comment: "解除临时查封时间", business_term: "解除临时查封时间";

MERGE (n:Field {name: "xzqzjfrq"})
  ON CREATE SET data_type: "DATE", name: "xzqzjfrq", nullable: "True", comment: "行政强制解封日期", business_term: "行政强制解封日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "szbzje"})
  ON CREATE SET data_type: "NUMERIC", name: "szbzje", nullable: "True", comment: "丧葬补助金额", business_term: "丧葬补助金额";

MERGE (n:Field {name: "szbzlx"})
  ON CREATE SET data_type: "CHAR", name: "szbzlx", length: "8", nullable: "True", comment: "丧葬补助类型", business_term: "丧葬补助类型";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "cqzbh"})
  ON CREATE SET data_type: "VARCHAR", name: "cqzbh", length: "5000", nullable: "True", comment: "产权证编号";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "bdcqdjsj"})
  ON CREATE SET data_type: "DATE", name: "bdcqdjsj", nullable: "True", comment: "不动产登记时间";

MERGE (n:Field {name: "bdcdyh"})
  ON CREATE SET data_type: "CHAR", name: "bdcdyh", length: "224", nullable: "True", comment: "不动产单元号";

MERGE (n:Field {name: "bdcdjjg"})
  ON CREATE SET data_type: "VARCHAR", name: "bdcdjjg", length: "400", nullable: "True", comment: "不动产登记机构";

MERGE (n:Field {name: "bdcqgyfs"})
  ON CREATE SET data_type: "VARCHAR", name: "bdcqgyfs", length: "1600", nullable: "True", comment: "不动产权共有方式";

MERGE (n:Field {name: "bdcgyqk"})
  ON CREATE SET data_type: "VARCHAR", name: "bdcgyqk", length: "32000", nullable: "True", comment: "不动产共有情况";

MERGE (n:Field {name: "bdcqlxz"})
  ON CREATE SET data_type: "VARCHAR", name: "bdcqlxz", length: "800", nullable: "True", comment: "不动产权利性质";

MERGE (n:Field {name: "bdcqllx"})
  ON CREATE SET data_type: "VARCHAR", name: "bdcqllx", length: "800", nullable: "True", comment: "不动产权利类型";

MERGE (n:Field {name: "fwyt"})
  ON CREATE SET data_type: "VARCHAR", name: "fwyt", length: "1000", nullable: "True", comment: "房屋用途";

MERGE (n:Field {name: "scjzmj"})
  ON CREATE SET data_type: "VARCHAR", name: "scjzmj", length: "400", nullable: "True", comment: "实测建筑面积";

MERGE (n:Field {name: "qszt"})
  ON CREATE SET data_type: "VARCHAR", name: "qszt", length: "10", nullable: "True", comment: "权属状态";

MERGE (n:Field {name: "fwzl"})
  ON CREATE SET data_type: "VARCHAR", name: "fwzl", length: "3000", nullable: "True", comment: "房屋坐落";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "cmzw"})
  ON CREATE SET data_type: "VARCHAR", name: "cmzw", length: "2040", nullable: "True", comment: "船名(中文)";

MERGE (n:Field {name: "cmyw"})
  ON CREATE SET data_type: "VARCHAR", name: "cmyw", length: "2040", nullable: "True", comment: "船名(英文)";

MERGE (n:Field {name: "ch"})
  ON CREATE SET data_type: "VARCHAR", name: "ch", length: "2040", nullable: "True", comment: "船号";

MERGE (n:Field {name: "cjgzw"})
  ON CREATE SET data_type: "VARCHAR", name: "cjgzw", length: "2040", nullable: "True", comment: "船籍港(中文)";

MERGE (n:Field {name: "cjgyw"})
  ON CREATE SET data_type: "VARCHAR", name: "cjgyw", length: "2040", nullable: "True", comment: "船籍港(英文)";

MERGE (n:Field {name: "czdw"})
  ON CREATE SET data_type: "VARCHAR", name: "czdw", length: "2040", nullable: "True", comment: "船总吨位";

MERGE (n:Field {name: "cbsyqzh"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsyqzh", length: "2040", nullable: "True", comment: "船舶所有权证号";

MERGE (n:Field {name: "cbzsh"})
  ON CREATE SET data_type: "VARCHAR", name: "cbzsh", length: "2040", nullable: "True", comment: "船舶证书号";

MERGE (n:Field {name: "cmdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cmdm", length: "2040", nullable: "True", comment: "船名代码";

MERGE (n:Field {name: "cz"})
  ON CREATE SET data_type: "VARCHAR", name: "cz", length: "2040", nullable: "True", comment: "船质";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "被监护人身份证件号码", business_term: "被监护人身份证件号码";

MERGE (n:Field {name: "bjhrxm"})
  ON CREATE SET data_type: "VARCHAR", name: "bjhrxm", length: "800", nullable: "True", comment: "被监护人姓名", business_term: "被监护人姓名";

MERGE (n:Field {name: "jhrsfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "jhrsfzjlx", length: "100", nullable: "True", comment: "监护人身份证件类型", business_term: "监护人身份证件类型";

MERGE (n:Field {name: "jhrsfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "jhrsfzjhm", length: "800", nullable: "True", comment: "监护人身份证件号码", business_term: "监护人身份证件号码";

MERGE (n:Field {name: "jhrxm"})
  ON CREATE SET data_type: "VARCHAR", name: "jhrxm", length: "100", nullable: "True", comment: "监护人姓名", business_term: "监护人姓名";

MERGE (n:Field {name: "jhgx"})
  ON CREATE SET data_type: "VARCHAR", name: "jhgx", length: "100", nullable: "True", comment: "监护关系", business_term: "监护关系";

MERGE (n:Field {name: "fqsfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "fqsfzjlx", length: "100", nullable: "True", comment: "父亲身份证件类型", business_term: "父亲身份证件类型";

MERGE (n:Field {name: "fqsfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "fqsfzjhm", length: "800", nullable: "True", comment: "父亲身份证件号码", business_term: "父亲身份证件号码";

MERGE (n:Field {name: "fqxm"})
  ON CREATE SET data_type: "VARCHAR", name: "fqxm", length: "100", nullable: "True", comment: "父亲姓名", business_term: "父亲姓名";

MERGE (n:Field {name: "mqsfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "mqsfzjlx", length: "100", nullable: "True", comment: "母亲身份证件类型", business_term: "母亲身份证件类型";

MERGE (n:Field {name: "mqsfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "mqsfzjhm", length: "800", nullable: "True", comment: "母亲身份证件号码", business_term: "母亲身份证件号码";

MERGE (n:Field {name: "mqxm"})
  ON CREATE SET data_type: "VARCHAR", name: "mqxm", length: "100", nullable: "True", comment: "母亲姓名", business_term: "母亲姓名";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "clsbdm"})
  ON CREATE SET data_type: "VARCHAR", name: "clsbdm", length: "200", nullable: "True", comment: "车辆识别代码";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "clgchjk"})
  ON CREATE SET data_type: "CHAR", name: "clgchjk", length: "8", nullable: "True", comment: "车辆国产或进口";

MERGE (n:Field {name: "clzwpp"})
  ON CREATE SET data_type: "VARCHAR", name: "clzwpp", length: "800", nullable: "True", comment: "车辆中文品牌";

MERGE (n:Field {name: "clxh"})
  ON CREATE SET data_type: "VARCHAR", name: "clxh", length: "256", nullable: "True", comment: "车辆型号";

MERGE (n:Field {name: "cllx"})
  ON CREATE SET data_type: "VARCHAR", name: "cllx", length: "160", nullable: "True", comment: "车辆类型";

MERGE (n:Field {name: "xszyxqz"})
  ON CREATE SET data_type: "DATE", name: "xszyxqz", nullable: "True", comment: "行驶证有效期至";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "shbzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "shbzhm", length: "200", nullable: "True", comment: "社会保障号码", business_term: "社会保障号码";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "200", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "cbdxzqhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cbdxzqhdm", length: "100", nullable: "True", comment: "参保所属地", business_term: "参保所属地";

MERGE (n:Field {name: "cbksrq"})
  ON CREATE SET data_type: "VARCHAR", name: "cbksrq", length: "50", nullable: "True", comment: "参保开始日期", business_term: "参保开始日期";

MERGE (n:Field {name: "bcjfksny"})
  ON CREATE SET data_type: "VARCHAR", name: "bcjfksny", length: "50", nullable: "True", comment: "本次缴费开始年月", business_term: "本次缴费开始年月";

MERGE (n:Field {name: "sbcbzt"})
  ON CREATE SET data_type: "VARCHAR", name: "sbcbzt", length: "200", nullable: "True", comment: "社保参保状态", business_term: "社保参保状态";

MERGE (n:Field {name: "sbzzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbzzrq", length: "50", nullable: "True", comment: "社保终止日期", business_term: "社保终止日期";

MERGE (n:Field {name: "zhjlny"})
  ON CREATE SET data_type: "VARCHAR", name: "zhjlny", length: "100", nullable: "True", comment: "账户建立年月", business_term: "账户建立年月";

MERGE (n:Field {name: "zjfs"})
  ON CREATE SET data_type: "VARCHAR", name: "zjfs", length: "100", nullable: "True", comment: "征缴方式", business_term: "征缴方式";

MERGE (n:Field {name: "ygxs"})
  ON CREATE SET data_type: "VARCHAR", name: "ygxs", length: "100", nullable: "True", comment: "用工形式", business_term: "用工形式";

MERGE (n:Field {name: "grjfzt"})
  ON CREATE SET data_type: "VARCHAR", name: "grjfzt", length: "50", nullable: "True", comment: "个人缴费状态", business_term: "个人缴费状态";

MERGE (n:Field {name: "cbsf"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsf", length: "100", nullable: "True", comment: "参保身份", business_term: "参保身份";

MERGE (n:Field {name: "dfcbsfmz"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmz", length: "50", nullable: "True", comment: "地方参保身份码值", business_term: "地方参保身份码值";

MERGE (n:Field {name: "dfcbsfmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmc", length: "100", nullable: "True", comment: "地方参保身份名称", business_term: "地方参保身份名称";

MERGE (n:Field {name: "ldgxksrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxksrq", nullable: "True", comment: "劳动关系开始日期", business_term: "劳动关系开始日期";

MERGE (n:Field {name: "ldgxzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxzzrq", nullable: "True", comment: "劳动关系终止日期", business_term: "劳动关系终止日期";

MERGE (n:Field {name: "dqyxbz"})
  ON CREATE SET data_type: "VARCHAR", name: "dqyxbz", length: "50", nullable: "True", comment: "当前有效标志", business_term: "当前有效标志";

MERGE (n:Field {name: "rycbgxlx"})
  ON CREATE SET data_type: "VARCHAR", name: "rycbgxlx", length: "100", nullable: "True", comment: "人员参保关系类型", business_term: "人员参保关系类型";

MERGE (n:Field {name: "jfrylb"})
  ON CREATE SET data_type: "VARCHAR", name: "jfrylb", length: "50", nullable: "True", comment: "缴费人员类别", business_term: "缴费人员类别";

MERGE (n:Field {name: "grcbrq"})
  ON CREATE SET data_type: "VARCHAR", name: "grcbrq", length: "50", nullable: "True", comment: "个人参保日期", business_term: "个人参保日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "dyw"})
  ON CREATE SET data_type: "VARCHAR", name: "dyw", length: "2040", nullable: "True", comment: "抵押物", business_term: "抵押物";

MERGE (n:Field {name: "dyzt"})
  ON CREATE SET data_type: "VARCHAR", name: "dyzt", length: "2040", nullable: "True", comment: "抵押状态", business_term: "抵押状态";

MERGE (n:Field {name: "dyqxq"})
  ON CREATE SET data_type: "DATE", name: "dyqxq", nullable: "True", comment: "抵押期限起", business_term: "抵押期限起";

MERGE (n:Field {name: "dyqxz"})
  ON CREATE SET data_type: "DATE", name: "dyqxz", nullable: "True", comment: "抵押期限止", business_term: "抵押期限止";

MERGE (n:Field {name: "dyqzxdjsj"})
  ON CREATE SET data_type: "DATE", name: "dyqzxdjsj", nullable: "True", comment: "抵押权注销登记时间", business_term: "抵押权注销登记时间";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1381", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1381", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "1381", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "yljgdm"})
  ON CREATE SET data_type: "VARCHAR", name: "yljgdm", length: "22", nullable: "True", comment: "医疗机构代码", business_term: "医疗机构代码";

MERGE (n:Field {name: "sffz"})
  ON CREATE SET data_type: "VARCHAR", name: "sffz", length: "10", nullable: "True", comment: "是否复诊", business_term: "是否复诊";

MERGE (n:Field {name: "hzxm"})
  ON CREATE SET data_type: "VARCHAR", name: "hzxm", length: "50", nullable: "True", comment: "患者姓名", business_term: "患者姓名";

MERGE (n:Field {name: "hzsx"})
  ON CREATE SET data_type: "VARCHAR", name: "hzsx", length: "20", nullable: "True", comment: "患者属性", business_term: "患者属性";

MERGE (n:Field {name: "sfjz"})
  ON CREATE SET data_type: "VARCHAR", name: "sfjz", length: "1", nullable: "True", comment: "是否急诊", business_term: "是否急诊";

MERGE (n:Field {name: "jzxz"})
  ON CREATE SET data_type: "VARCHAR", name: "jzxz", length: "10", nullable: "True", comment: "就诊性质", business_term: "就诊性质";

MERGE (n:Field {name: "jzksbm"})
  ON CREATE SET data_type: "VARCHAR", name: "jzksbm", length: "64", nullable: "True", comment: "就诊科室代码", business_term: "就诊科室代码";

MERGE (n:Field {name: "jzksmc"})
  ON CREATE SET data_type: "VARCHAR", name: "jzksmc", length: "76", nullable: "True", comment: "就诊科室名称", business_term: "就诊科室名称";

MERGE (n:Field {name: "jzksrq"})
  ON CREATE SET data_type: "DATE", name: "jzksrq", nullable: "True", comment: "门诊就诊日期", business_term: "门诊就诊日期";

MERGE (n:Field {name: "jzsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "jzsj", nullable: "True", comment: "接诊时间", business_term: "接诊时间";

MERGE (n:Field {name: "wcjzsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "wcjzsj", nullable: "True", comment: "完成就诊时间", business_term: "完成就诊时间";

MERGE (n:Field {name: "zzysbh"})
  ON CREATE SET data_type: "VARCHAR", name: "zzysbh", length: "36", nullable: "True", comment: "主诊医生编号", business_term: "主诊医生编号";

MERGE (n:Field {name: "zzysxm"})
  ON CREATE SET data_type: "VARCHAR", name: "zzysxm", length: "50", nullable: "True", comment: "主诊医生姓名", business_term: "主诊医生姓名";

MERGE (n:Field {name: "mzzddm"})
  ON CREATE SET data_type: "VARCHAR", name: "mzzddm", length: "64", nullable: "True", comment: "门诊诊断代码", business_term: "门诊诊断代码";

MERGE (n:Field {name: "mzzdmc"})
  ON CREATE SET data_type: "VARCHAR", name: "mzzdmc", length: "256", nullable: "True", comment: "门诊诊断名称（主要诊断）", business_term: "门诊诊断名称（主要诊断）";

MERGE (n:Field {name: "jzzdsm"})
  ON CREATE SET data_type: "VARCHAR", name: "jzzdsm", length: "512", nullable: "True", comment: "门诊诊断说明", business_term: "门诊诊断说明";

MERGE (n:Field {name: "zs"})
  ON CREATE SET data_type: "VARCHAR", name: "zs", length: "1024", nullable: "True", comment: "主诉", business_term: "主诉";

MERGE (n:Field {name: "mzzzmc"})
  ON CREATE SET data_type: "VARCHAR", name: "mzzzmc", length: "120", nullable: "True", comment: "门诊症状-名称", business_term: "门诊症状-名称";

MERGE (n:Field {name: "mzzzzddm"})
  ON CREATE SET data_type: "VARCHAR", name: "mzzzzddm", length: "40", nullable: "True", comment: "门诊症状-诊断代码", business_term: "门诊症状-诊断代码";

MERGE (n:Field {name: "lggc"})
  ON CREATE SET data_type: "VARCHAR", name: "lggc", length: "2", nullable: "True", comment: "留观观察", business_term: "留观观察";

MERGE (n:Field {name: "zzms"})
  ON CREATE SET data_type: "VARCHAR", name: "zzms", length: "1024", nullable: "True", comment: "症状描述", business_term: "症状描述";

MERGE (n:Field {name: "fbrqsj"})
  ON CREATE SET data_type: "DATE", name: "fbrqsj", nullable: "True", comment: "发病日期时间", business_term: "发病日期时间";

MERGE (n:Field {name: "ssy"})
  ON CREATE SET data_type: "NUMERIC", name: "ssy", nullable: "True", comment: "收缩压(mmHg)";

MERGE (n:Field {name: "szy"})
  ON CREATE SET data_type: "NUMERIC", name: "szy", nullable: "True", comment: "舒张压(mmHg)";

MERGE (n:Field {name: "tw"})
  ON CREATE SET data_type: "NUMERIC", name: "tw", nullable: "True", comment: "体温(℃)", business_term: "体温(℃)";

MERGE (n:Field {name: "zzcxsj"})
  ON CREATE SET data_type: "VARCHAR", name: "zzcxsj", length: "3", nullable: "True", comment: "症状持续时间", business_term: "症状持续时间";

MERGE (n:Field {name: "mjzh"})
  ON CREATE SET data_type: "VARCHAR", name: "mjzh", length: "36", nullable: "True", comment: "门（急）诊号", business_term: "门（急）诊号";

MERGE (n:Field {name: "jzlsh"})
  ON CREATE SET data_type: "VARCHAR", name: "jzlsh", length: "36", nullable: "True", comment: "就诊流水号", business_term: "就诊流水号";

MERGE (n:Field {name: "jzksrq_new"})
  ON CREATE SET data_type: "DATE", name: "jzksrq_new", nullable: "True", comment: "门诊就诊日期_new";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "xxwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "xxwybs", length: "800", nullable: "True", comment: "学校唯一标识", business_term: "学校唯一标识";

MERGE (n:Field {name: "xxmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xxmc", length: "800", nullable: "True", comment: "学校名称", business_term: "学校名称";

MERGE (n:Field {name: "rxrq"})
  ON CREATE SET data_type: "DATE", name: "rxrq", nullable: "True", comment: "入学日期", business_term: "入学日期";

MERGE (n:Field {name: "byrq"})
  ON CREATE SET data_type: "DATE", name: "byrq", nullable: "True", comment: "毕业日期", business_term: "毕业日期";

MERGE (n:Field {name: "bjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "bjmc", length: "400", nullable: "True", comment: "班级名称", business_term: "班级名称";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1600", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "400", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1600", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sxxw"})
  ON CREATE SET data_type: "VARCHAR", name: "sxxw", length: "2000", nullable: "True", comment: "失信行为", business_term: "失信行为";

MERGE (n:Field {name: "sxbzxyjwh"})
  ON CREATE SET data_type: "VARCHAR", name: "sxbzxyjwh", length: "2000", nullable: "True", comment: "失信被执行依据文号", business_term: "失信被执行依据文号";

MERGE (n:Field {name: "sxbzxrdrq"})
  ON CREATE SET data_type: "DATE", name: "sxbzxrdrq", nullable: "True", comment: "失信被执行认定日期", business_term: "失信被执行认定日期";

MERGE (n:Field {name: "sxbzxlarq"})
  ON CREATE SET data_type: "DATE", name: "sxbzxlarq", nullable: "True", comment: "失信被执行立案日期", business_term: "失信被执行立案日期";

MERGE (n:Field {name: "sxbzxlxqk"})
  ON CREATE SET data_type: "VARCHAR", name: "sxbzxlxqk", length: "160", nullable: "True", comment: "失信被执行履行情况", business_term: "失信被执行履行情况";

MERGE (n:Field {name: "serillrea_cn"})
  ON CREATE SET data_type: "VARCHAR", name: "serillrea_cn", length: "1600", nullable: "True", comment: "列入事由/情形（中文名称）", business_term: "列入事由/情形（中文名称）";

MERGE (n:Field {name: "punishexecuteamount"})
  ON CREATE SET data_type: "VARCHAR", name: "punishexecuteamount", length: "2000", nullable: "True", comment: "处罚执行金额/处罚金额", business_term: "处罚执行金额/处罚金额";

MERGE (n:Field {name: "zxyj"})
  ON CREATE SET data_type: "VARCHAR", name: "zxyj", length: "2400", nullable: "True", comment: "执行依据", business_term: "执行依据";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sbbm"})
  ON CREATE SET data_type: "VARCHAR", name: "sbbm", length: "200", nullable: "True", comment: "社保编码", business_term: "社保编码";

MERGE (n:Field {name: "sbxzlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sbxzlx", length: "50", nullable: "True", comment: "社保险种类型", business_term: "社保险种类型";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "50", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "sbjfrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfrq", length: "50", nullable: "True", comment: "社保缴费日期", business_term: "社保缴费日期";

MERGE (n:Field {name: "sbjfqsrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfqsrq", length: "50", nullable: "True", comment: "社保缴费起始日期", business_term: "社保缴费起始日期";

MERGE (n:Field {name: "sbjfjzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjzrq", length: "50", nullable: "True", comment: "社保缴费截止日期", business_term: "社保缴费截止日期";

MERGE (n:Field {name: "sbjfgz"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfgz", length: "50", nullable: "True", comment: "社保缴费工资", business_term: "社保缴费工资";

MERGE (n:Field {name: "sbjfjs"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjs", length: "50", nullable: "True", comment: "社保缴费基数", business_term: "社保缴费基数";

MERGE (n:Field {name: "sbjfyf"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfyf", length: "50", nullable: "True", comment: "社保缴费月份";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sbbm"})
  ON CREATE SET data_type: "CHAR", name: "sbbm", length: "144", nullable: "True", comment: "社保编码", business_term: "社保编码";

MERGE (n:Field {name: "sbxzlx"})
  ON CREATE SET data_type: "CHAR", name: "sbxzlx", length: "24", nullable: "True", comment: "社保险种类型", business_term: "社保险种类型";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "CHAR", name: "dwmc", length: "144", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "CHAR", name: "dwtyshxydm", length: "18", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "sbjfrq"})
  ON CREATE SET data_type: "DATE", name: "sbjfrq", nullable: "True", comment: "社保缴费日期", business_term: "社保缴费日期";

MERGE (n:Field {name: "sbjfqsrq"})
  ON CREATE SET data_type: "DATE", name: "sbjfqsrq", nullable: "True", comment: "社保起始日期";

MERGE (n:Field {name: "sbjfjzrq"})
  ON CREATE SET data_type: "DATE", name: "sbjfjzrq", nullable: "True", comment: "社保终止日期";

MERGE (n:Field {name: "sbjfgz"})
  ON CREATE SET data_type: "NUMERIC", name: "sbjfgz", nullable: "True", comment: "社保缴费工资", business_term: "社保缴费工资";

MERGE (n:Field {name: "sbjfjs"})
  ON CREATE SET data_type: "NUMERIC", name: "sbjfjs", nullable: "True", comment: "社保缴费基数", business_term: "社保缴费基数";

MERGE (n:Field {name: "sbjfyf"})
  ON CREATE SET data_type: "CHAR", name: "sbjfyf", length: "48", nullable: "True", comment: "社保缴费月份", business_term: "社保缴费月份";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "wjlx"})
  ON CREATE SET data_type: "CHAR", name: "wjlx", length: "40", nullable: "True", comment: "违纪类型", business_term: "违纪类型";

MERGE (n:Field {name: "wjnr"})
  ON CREATE SET data_type: "VARCHAR", name: "wjnr", length: "16000", nullable: "True", comment: "违纪内容", business_term: "违纪内容";

MERGE (n:Field {name: "wjrszjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "wjrszjgmc", length: "800", nullable: "True", comment: "违纪人所在机构名称", business_term: "违纪人所在机构名称";

MERGE (n:Field {name: "wjclyj"})
  ON CREATE SET data_type: "VARCHAR", name: "wjclyj", length: "8000", nullable: "True", comment: "违纪处理意见", business_term: "违纪处理意见";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "jjrxm"})
  ON CREATE SET data_type: "VARCHAR", name: "jjrxm", length: "800", nullable: "True", comment: "寄件人姓名", business_term: "寄件人姓名";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "dzbm"})
  ON CREATE SET data_type: "CHAR", name: "dzbm", length: "200", nullable: "True", comment: "地址编码", business_term: "地址编码";

MERGE (n:Field {name: "dzmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dzmc", length: "1000", nullable: "True", comment: "地址名称", business_term: "地址名称";

MERGE (n:Field {name: "ssqx"})
  ON CREATE SET data_type: "CHAR", name: "ssqx", length: "600", nullable: "True", comment: "省市区县", business_term: "省市区县";

MERGE (n:Field {name: "xzhjdmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xzhjdmc", length: "1000", nullable: "True", comment: "乡镇或街道名称", business_term: "乡镇或街道名称";

MERGE (n:Field {name: "xzchsq"})
  ON CREATE SET data_type: "VARCHAR", name: "xzchsq", length: "1000", nullable: "True", comment: "行政村或社区", business_term: "行政村或社区";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1600", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "400", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1600", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "zsbh"})
  ON CREATE SET data_type: "VARCHAR", name: "zsbh", length: "2400", nullable: "True", comment: "证书编号-弃用", business_term: "证书编号-弃用";

MERGE (n:Field {name: "zzdj"})
  ON CREATE SET data_type: "VARCHAR", name: "zzdj", length: "2400", nullable: "True", comment: "资质等级", business_term: "资质等级";

MERGE (n:Field {name: "zjyxqq"})
  ON CREATE SET data_type: "DATE", name: "zjyxqq", nullable: "True", comment: "证件有效期起", business_term: "证件有效期起";

MERGE (n:Field {name: "zjyxqz"})
  ON CREATE SET data_type: "DATE", name: "zjyxqz", nullable: "True", comment: "证件有效期止", business_term: "证件有效期止";

MERGE (n:Field {name: "zjqfjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqfjgmc", length: "640", nullable: "True", comment: "证件签发机关名称", business_term: "证件签发机关名称";

MERGE (n:Field {name: "fzjg"})
  ON CREATE SET data_type: "VARCHAR", name: "fzjg", length: "1280", nullable: "True", comment: "发证机关-弃用", business_term: "发证机关-弃用";

MERGE (n:Field {name: "zjqfrq"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqfrq", length: "1280", nullable: "True", comment: "证件签发日期", business_term: "证件签发日期";

MERGE (n:Field {name: "zjbh"})
  ON CREATE SET data_type: "VARCHAR", name: "zjbh", length: "1920", nullable: "True", comment: "证件编号", business_term: "证件编号";

MERGE (n:Field {name: "bajgdm"})
  ON CREATE SET data_type: "VARCHAR", name: "bajgdm", length: "1280", nullable: "True", comment: "备案机构代码", business_term: "备案机构代码";

MERGE (n:Field {name: "bajgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "bajgmc", length: "1280", nullable: "True", comment: "备案机构名称", business_term: "备案机构名称";

MERGE (n:Field {name: "sfscxdzsh"})
  ON CREATE SET data_type: "VARCHAR", name: "sfscxdzsh", length: "1280", nullable: "True", comment: "是否生成新的证书号";

MERGE (n:Field {name: "zt"})
  ON CREATE SET data_type: "VARCHAR", name: "zt", length: "1280", nullable: "True", comment: "状态", business_term: "状态";

MERGE (n:Field {name: "cd_batch"})
  ON CREATE SET data_type: "VARCHAR", name: "cd_batch", length: "1280", nullable: "True", comment: "批次号", business_term: "批次号";

MERGE (n:Field {name: "cyfw"})
  ON CREATE SET data_type: "VARCHAR", name: "cyfw", length: "1280", nullable: "True", comment: "从业范围", business_term: "从业范围";

MERGE (n:Field {name: "zjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zjmc", length: "2400", nullable: "True", comment: "证件名称", business_term: "证件名称";

MERGE (n:Field {name: "qhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "qhdm", length: "2560", nullable: "True", comment: "区划代码", business_term: "区划代码";

MERGE (n:Field {name: "zjqmz"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqmz", length: "400", nullable: "True", comment: "证件签名值", business_term: "证件签名值";

MERGE (n:Field {name: "zzjtm"})
  ON CREATE SET data_type: "VARCHAR", name: "zzjtm", length: "400", nullable: "True", comment: "证件条码", business_term: "证件条码";

MERGE (n:Field {name: "zjqmgyz"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqmgyz", length: "400", nullable: "True", comment: "证件签名公钥值", business_term: "证件签名公钥值";

MERGE (n:Field {name: "zjqmhashz"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqmhashz", length: "400", nullable: "True", comment: "证件签名hash值", business_term: "证件签名hash值";

MERGE (n:Field {name: "zjqfjgdm"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqfjgdm", length: "400", nullable: "True", comment: "证件签发机关代码", business_term: "证件签发机关代码";

MERGE (n:Field {name: "zjccqfrq"})
  ON CREATE SET data_type: "DATE", name: "zjccqfrq", nullable: "True", comment: "证件初次签发日期", business_term: "证件初次签发日期";

MERGE (n:Field {name: "zjzxrq"})
  ON CREATE SET data_type: "DATE", name: "zjzxrq", nullable: "True", comment: "证件注销日期", business_term: "证件注销日期";

MERGE (n:Field {name: "zjzxyy"})
  ON CREATE SET data_type: "VARCHAR", name: "zjzxyy", length: "800", nullable: "True", comment: "证件注销原因", business_term: "证件注销原因";

MERGE (n:Field {name: "zjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "zjlx", length: "96", nullable: "True", comment: "证件类型", business_term: "证件类型";

MERGE (n:Field {name: "zjsjc"})
  ON CREATE SET data_type: "DATE", name: "zjsjc", nullable: "True", comment: "证件时间戳", business_term: "证件时间戳";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sbbm"})
  ON CREATE SET data_type: "VARCHAR", name: "sbbm", length: "200", nullable: "True", comment: "社保编码", business_term: "社保编码";

MERGE (n:Field {name: "sbxzlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sbxzlx", length: "50", nullable: "True", comment: "社保险种类型", business_term: "社保险种类型";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "50", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "sbjfrq"})
  ON CREATE SET data_type: "DATE", name: "sbjfrq", nullable: "True", comment: "社保缴费日期", business_term: "社保缴费日期";

MERGE (n:Field {name: "sbjfqsrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfqsrq", length: "50", nullable: "True", comment: "社保缴费起始日期", business_term: "社保缴费起始日期";

MERGE (n:Field {name: "sbjfjzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjzrq", length: "50", nullable: "True", comment: "社保缴费截止日期", business_term: "社保缴费截止日期";

MERGE (n:Field {name: "sbjfgz"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfgz", length: "50", nullable: "True", comment: "社保缴费工资", business_term: "社保缴费工资";

MERGE (n:Field {name: "sbjfjs"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjs", length: "50", nullable: "True", comment: "社保缴费基数", business_term: "社保缴费基数";

MERGE (n:Field {name: "sbjfyf"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfyf", length: "50", nullable: "True", comment: "社保缴费月份", business_term: "社保缴费月份";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sbbm"})
  ON CREATE SET data_type: "VARCHAR", name: "sbbm", length: "200", nullable: "True", comment: "社保编码", business_term: "社保编码";

MERGE (n:Field {name: "sbxzlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sbxzlx", length: "50", nullable: "True", comment: "社保险种类型", business_term: "社保险种类型";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "50", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "sbjfrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfrq", length: "50", nullable: "True", comment: "社保缴费日期", business_term: "社保缴费日期";

MERGE (n:Field {name: "sbjfqsrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfqsrq", length: "50", nullable: "True", comment: "社保缴费起始日期", business_term: "社保缴费起始日期";

MERGE (n:Field {name: "sbjfjzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjzrq", length: "50", nullable: "True", comment: "社保缴费截止日期", business_term: "社保缴费截止日期";

MERGE (n:Field {name: "sbjfgz"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfgz", length: "50", nullable: "True", comment: "社保缴费工资", business_term: "社保缴费工资";

MERGE (n:Field {name: "sbjfjs"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjs", length: "50", nullable: "True", comment: "社保缴费基数";

MERGE (n:Field {name: "sbjfyf"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfyf", length: "50", nullable: "True", comment: "社保缴费月份";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sbbm"})
  ON CREATE SET data_type: "CHAR", name: "sbbm", length: "144", nullable: "True", comment: "社保编码", business_term: "社保编码";

MERGE (n:Field {name: "sbxzlx"})
  ON CREATE SET data_type: "CHAR", name: "sbxzlx", length: "24", nullable: "True", comment: "社保险种类型", business_term: "社保险种类型";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "CHAR", name: "dwmc", length: "144", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "CHAR", name: "dwtyshxydm", length: "18", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "sbjfrq"})
  ON CREATE SET data_type: "DATE", name: "sbjfrq", nullable: "True", comment: "社保缴费日期", business_term: "社保缴费日期";

MERGE (n:Field {name: "sbjfqsrq"})
  ON CREATE SET data_type: "DATE", name: "sbjfqsrq", nullable: "True", comment: "社保缴费起始日期", business_term: "社保缴费起始日期";

MERGE (n:Field {name: "sbjfjzrq"})
  ON CREATE SET data_type: "DATE", name: "sbjfjzrq", nullable: "True", comment: "社保缴费截止日期", business_term: "社保缴费截止日期";

MERGE (n:Field {name: "sbjfgz"})
  ON CREATE SET data_type: "NUMERIC", name: "sbjfgz", nullable: "True", comment: "社保缴费工资", business_term: "社保缴费工资";

MERGE (n:Field {name: "sbjfjs"})
  ON CREATE SET data_type: "NUMERIC", name: "sbjfjs", nullable: "True", comment: "社保缴费基数", business_term: "社保缴费基数";

MERGE (n:Field {name: "sbjfyf"})
  ON CREATE SET data_type: "CHAR", name: "sbjfyf", length: "48", nullable: "True", comment: "社保缴费月份", business_term: "社保缴费月份";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xzqrlb"})
  ON CREATE SET data_type: "VARCHAR", name: "xzqrlb", length: "800", nullable: "True", comment: "行政确认类别", business_term: "行政确认类别";

MERGE (n:Field {name: "xzqrws"})
  ON CREATE SET data_type: "VARCHAR", name: "xzqrws", length: "800", nullable: "True", comment: "行政确认文书号", business_term: "行政确认文书号";

MERGE (n:Field {name: "xzqrrq"})
  ON CREATE SET data_type: "DATE", name: "xzqrrq", nullable: "True", comment: "行政确认日期", business_term: "行政确认日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "cfsj"})
  ON CREATE SET data_type: "DATE", name: "cfsj", nullable: "True", comment: "出发时间", business_term: "出发时间";

MERGE (n:Field {name: "ddsj"})
  ON CREATE SET data_type: "DATE", name: "ddsj", nullable: "True", comment: "到达时间", business_term: "到达时间";

MERGE (n:Field {name: "sfzmc"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzmc", length: "800", nullable: "True", comment: "始发站名称", business_term: "始发站名称";

MERGE (n:Field {name: "sfzdm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzdm", length: "800", nullable: "True", comment: "始发站代码", business_term: "始发站代码";

MERGE (n:Field {name: "ddzmc"})
  ON CREATE SET data_type: "VARCHAR", name: "ddzmc", length: "800", nullable: "True", comment: "到达站名称", business_term: "到达站名称";

MERGE (n:Field {name: "ddzdm"})
  ON CREATE SET data_type: "VARCHAR", name: "ddzdm", length: "800", nullable: "True", comment: "到达站代码", business_term: "到达站代码";

MERGE (n:Field {name: "xlmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xlmc", length: "800", nullable: "True", comment: "线路名称", business_term: "线路名称";

MERGE (n:Field {name: "gpsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "gpsj", nullable: "True", comment: "购票时间", business_term: "购票时间";

MERGE (n:Field {name: "gxsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "gxsj", nullable: "True", comment: "更新时间";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "cyzk"})
  ON CREATE SET data_type: "VARCHAR", name: "cyzk", length: "800", nullable: "True", comment: "从业状况", business_term: "从业状况";

MERGE (n:Field {name: "cjgzsj"})
  ON CREATE SET data_type: "DATE", name: "cjgzsj", nullable: "True", comment: "参加工作时间", business_term: "参加工作时间";

MERGE (n:Field {name: "csdqzyqsnf"})
  ON CREATE SET data_type: "CHAR", name: "csdqzyqsnf", length: "4", nullable: "True", comment: "从事当前专业起始年份", business_term: "从事当前专业起始年份";

MERGE (n:Field {name: "zylb"})
  ON CREATE SET data_type: "CHAR", name: "zylb", length: "255", nullable: "True", comment: "职业类别", business_term: "职业类别";

MERGE (n:Field {name: "zymc"})
  ON CREATE SET data_type: "CHAR", name: "zymc", length: "255", nullable: "True", comment: "职业名称", business_term: "职业名称";

MERGE (n:Field {name: "jrdpsj"})
  ON CREATE SET data_type: "VARCHAR", name: "jrdpsj", length: "50", nullable: "True", comment: "加入党派时间", business_term: "加入党派时间";

MERGE (n:Field {name: "gzdwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "gzdwmc", length: "800", nullable: "True", comment: "工作单位名称", business_term: "工作单位名称";

MERGE (n:Field {name: "gzdwztlx"})
  ON CREATE SET data_type: "VARCHAR", name: "gzdwztlx", length: "800", nullable: "True", comment: "工作单位主体类型", business_term: "工作单位主体类型";

MERGE (n:Field {name: "gzdwtyshxydm"})
  ON CREATE SET data_type: "CHAR", name: "gzdwtyshxydm", length: "18", nullable: "True", comment: "工作单位统一社会信用代码", business_term: "工作单位统一社会信用代码";

MERGE (n:Field {name: "szgzdwbmmc"})
  ON CREATE SET data_type: "VARCHAR", name: "szgzdwbmmc", length: "200", nullable: "True", comment: "工作单位部门名称";

MERGE (n:Field {name: "gzdwtxdz"})
  ON CREATE SET data_type: "VARCHAR", name: "gzdwtxdz", length: "800", nullable: "True", comment: "工作单位通信地址", business_term: "工作单位通信地址";

MERGE (n:Field {name: "gzdwcz"})
  ON CREATE SET data_type: "VARCHAR", name: "gzdwcz", length: "50", nullable: "True", comment: "工作单位传真", business_term: "工作单位传真";

MERGE (n:Field {name: "gzdwdhhm"})
  ON CREATE SET data_type: "VARCHAR", name: "gzdwdhhm", length: "50", nullable: "True", comment: "工作单位电话号码", business_term: "工作单位电话号码";

MERGE (n:Field {name: "ldhtqsrq"})
  ON CREATE SET data_type: "VARCHAR", name: "ldhtqsrq", length: "50", nullable: "True", comment: "劳动合同起始日期", business_term: "劳动合同起始日期";

MERGE (n:Field {name: "ldhtzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldhtzzrq", nullable: "True", comment: "劳动合同终止日期", business_term: "劳动合同终止日期";

MERGE (n:Field {name: "rzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "rzrq", length: "800", nullable: "True", comment: "入职日期", business_term: "入职日期";

MERGE (n:Field {name: "lzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "lzrq", length: "800", nullable: "True", comment: "离职日期", business_term: "离职日期";

MERGE (n:Field {name: "gwlb"})
  ON CREATE SET data_type: "VARCHAR", name: "gwlb", length: "32", nullable: "True", comment: "岗位类别", business_term: "岗位类别";

MERGE (n:Field {name: "xrgwsj"})
  ON CREATE SET data_type: "VARCHAR", name: "xrgwsj", length: "300", nullable: "True", comment: "现任岗位时间", business_term: "现任岗位时间";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1600", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "400", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1600", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "zjbh"})
  ON CREATE SET data_type: "VARCHAR", name: "zjbh", length: "2000", nullable: "True", comment: "证件编号", business_term: "证件编号";

MERGE (n:Field {name: "zjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zjmc", length: "800", nullable: "True", comment: "证件名称", business_term: "证件名称";

MERGE (n:Field {name: "zjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "zjlx", length: "3200", nullable: "True", comment: "证件类型", business_term: "证件类型";

MERGE (n:Field {name: "zjqfjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqfjgmc", length: "2000", nullable: "True", comment: "证件签发机关名称", business_term: "证件签发机关名称";

MERGE (n:Field {name: "zjqfjgdm"})
  ON CREATE SET data_type: "VARCHAR", name: "zjqfjgdm", length: "1280", nullable: "True", comment: "证件签发机关代码", business_term: "证件签发机关代码";

MERGE (n:Field {name: "zjzt"})
  ON CREATE SET data_type: "CHAR", name: "zjzt", length: "1600", nullable: "True", comment: "证件状态", business_term: "证件状态";

MERGE (n:Field {name: "zjyxqq"})
  ON CREATE SET data_type: "DATE", name: "zjyxqq", nullable: "True", comment: "证件有效期起", business_term: "证件有效期起";

MERGE (n:Field {name: "zjyxqz"})
  ON CREATE SET data_type: "DATE", name: "zjyxqz", nullable: "True", comment: "证件有效期止", business_term: "证件有效期止";

MERGE (n:Field {name: "zjqfrq"})
  ON CREATE SET data_type: "DATE", name: "zjqfrq", nullable: "True", comment: "证件签发日期", business_term: "证件签发日期";

MERGE (n:Field {name: "xzzfssdq"})
  ON CREATE SET data_type: "VARCHAR", name: "xzzfssdq", length: "2000", nullable: "True", comment: "行政执法所属地区", business_term: "行政执法所属地区";

MERGE (n:Field {name: "zjccqfrq"})
  ON CREATE SET data_type: "VARCHAR", name: "zjccqfrq", length: "1600", nullable: "True", comment: "证件初次签发日期", business_term: "证件初次签发日期";

MERGE (n:Field {name: "zjzxrq"})
  ON CREATE SET data_type: "DATE", name: "zjzxrq", nullable: "True", comment: "证件注销日期", business_term: "证件注销日期";

MERGE (n:Field {name: "zjzxyy"})
  ON CREATE SET data_type: "VARCHAR", name: "zjzxyy", length: "4000", nullable: "True", comment: "证件注销原因", business_term: "证件注销原因";

MERGE (n:Field {name: "xzqh"})
  ON CREATE SET data_type: "VARCHAR", name: "xzqh", length: "3200", nullable: "True", comment: "行政区划", business_term: "行政区划";

MERGE (n:Field {name: "jszc"})
  ON CREATE SET data_type: "VARCHAR", name: "jszc", length: "4000", nullable: "True", comment: "技术职称", business_term: "技术职称";

MERGE (n:Field {name: "xb"})
  ON CREATE SET data_type: "VARCHAR", name: "xb", length: "2000", nullable: "True", comment: "性别", business_term: "性别";

MERGE (n:Field {name: "xm"})
  ON CREATE SET data_type: "VARCHAR", name: "xm", length: "2000", nullable: "True", comment: "姓名", business_term: "姓名";

MERGE (n:Field {name: "mz"})
  ON CREATE SET data_type: "VARCHAR", name: "mz", length: "1500", nullable: "True", comment: "民族", business_term: "民族";

MERGE (n:Field {name: "gzks"})
  ON CREATE SET data_type: "VARCHAR", name: "gzks", length: "3200", nullable: "True", comment: "工作科室", business_term: "工作科室";

MERGE (n:Field {name: "gj"})
  ON CREATE SET data_type: "VARCHAR", name: "gj", length: "3200", nullable: "True", comment: "国籍", business_term: "国籍";

MERGE (n:Field {name: "zyzyjg"})
  ON CREATE SET data_type: "VARCHAR", name: "zyzyjg", length: "3200", nullable: "True", comment: "主要执业机构", business_term: "主要执业机构";

MERGE (n:Field {name: "zyfw"})
  ON CREATE SET data_type: "VARCHAR", name: "zyfw", length: "3200", nullable: "True", comment: "执业范围", business_term: "执业范围";

MERGE (n:Field {name: "zjszdq"})
  ON CREATE SET data_type: "VARCHAR", name: "zjszdq", length: "1600", nullable: "True", comment: "证件所在地区", business_term: "证件所在地区";

MERGE (n:Field {name: "zjyxq"})
  ON CREATE SET data_type: "DATE", name: "zjyxq", nullable: "True", comment: "证件有效期", business_term: "证件有效期";

MERGE (n:Field {name: "zyjb"})
  ON CREATE SET data_type: "VARCHAR", name: "zyjb", length: "400", nullable: "True", comment: "执业级别", business_term: "执业级别";

MERGE (n:Field {name: "rzzg"})
  ON CREATE SET data_type: "VARCHAR", name: "rzzg", length: "800", nullable: "True", comment: "任职资格", business_term: "任职资格";

MERGE (n:Field {name: "zzmm"})
  ON CREATE SET data_type: "VARCHAR", name: "zzmm", length: "3000", nullable: "True", comment: "政治面貌", business_term: "政治面貌";

MERGE (n:Field {name: "sjhm_encode"})
  ON CREATE SET data_type: "VARCHAR", name: "sjhm_encode", length: "2400", nullable: "True", comment: "手机号码", business_term: "手机号码";

MERGE (n:Field {name: "zydwlxdh_encode"})
  ON CREATE SET data_type: "VARCHAR", name: "zydwlxdh_encode", length: "3000", nullable: "True", comment: "执业单位联系电话", business_term: "执业单位联系电话";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "swrq"})
  ON CREATE SET data_type: "DATE", name: "swrq", nullable: "True", comment: "死亡日期", business_term: "死亡日期";

MERGE (n:Field {name: "swsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "swsj", nullable: "True", comment: "死亡时间", business_term: "死亡时间";

MERGE (n:Field {name: "swyy"})
  ON CREATE SET data_type: "CHAR", name: "swyy", length: "24", nullable: "True", comment: "死亡原因", business_term: "死亡原因";

MERGE (n:Field {name: "hhzjbh"})
  ON CREATE SET data_type: "VARCHAR", name: "hhzjbh", length: "512", nullable: "True", comment: "火化证件编号", business_term: "火化证件编号";

MERGE (n:Field {name: "hhrq"})
  ON CREATE SET data_type: "DATE", name: "hhrq", nullable: "True", comment: "火化日期", business_term: "火化日期";

MERGE (n:Field {name: "hhszbyg"})
  ON CREATE SET data_type: "VARCHAR", name: "hhszbyg", length: "800", nullable: "True", comment: "火化所在殡仪馆", business_term: "火化所在殡仪馆";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "swrq"})
  ON CREATE SET data_type: "DATE", name: "swrq", nullable: "True", comment: "死亡日期", business_term: "死亡日期";

MERGE (n:Field {name: "swsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "swsj", nullable: "True", comment: "死亡时间", business_term: "死亡时间";

MERGE (n:Field {name: "swyy"})
  ON CREATE SET data_type: "CHAR", name: "swyy", length: "24", nullable: "True", comment: "死亡原因", business_term: "死亡原因";

MERGE (n:Field {name: "swzxlx"})
  ON CREATE SET data_type: "CHAR", name: "swzxlx", length: "8", nullable: "True", comment: "死亡注销类型", business_term: "死亡注销类型";

MERGE (n:Field {name: "swzxsj"})
  ON CREATE SET data_type: "DATE", name: "swzxsj", nullable: "True", comment: "死亡注销时间", business_term: "死亡注销时间";

MERGE (n:Field {name: "swzxjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "swzxjgmc", length: "400", nullable: "True", comment: "死亡注销机构名称", business_term: "死亡注销机构名称";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "qzzxsqzxr"})
  ON CREATE SET data_type: "VARCHAR", name: "qzzxsqzxr", length: "400", nullable: "True", comment: "强制执行申请执行人", business_term: "强制执行申请执行人";

MERGE (n:Field {name: "qzzxfydm"})
  ON CREATE SET data_type: "VARCHAR", name: "qzzxfydm", length: "400", nullable: "True", comment: "强制执行法院代码", business_term: "强制执行法院代码";

MERGE (n:Field {name: "qzzxfymc"})
  ON CREATE SET data_type: "VARCHAR", name: "qzzxfymc", length: "800", nullable: "True", comment: "强制执行法院名称", business_term: "强制执行法院名称";

MERGE (n:Field {name: "qzzxyjwsh"})
  ON CREATE SET data_type: "VARCHAR", name: "qzzxyjwsh", length: "800", nullable: "True", comment: "强制执行依据文书号", business_term: "强制执行依据文书号";

MERGE (n:Field {name: "qzzxlasj"})
  ON CREATE SET data_type: "DATE", name: "qzzxlasj", nullable: "True", comment: "强制执行立案时间", business_term: "强制执行立案时间";

MERGE (n:Field {name: "zcqzzxyjdw"})
  ON CREATE SET data_type: "VARCHAR", name: "zcqzzxyjdw", length: "800", nullable: "True", comment: "做出强制执行依据单位", business_term: "做出强制执行依据单位";

MERGE (n:Field {name: "bqzzxrdlxqk"})
  ON CREATE SET data_type: "VARCHAR", name: "bqzzxrdlxqk", length: "800", nullable: "True", comment: "被强制执行人的履行情况", business_term: "被强制执行人的履行情况";

MERGE (n:Field {name: "qzzxfbsj"})
  ON CREATE SET data_type: "DATE", name: "qzzxfbsj", nullable: "True", comment: "强制执行发布时间", business_term: "强制执行发布时间";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "100", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xzgfsx"})
  ON CREATE SET data_type: "VARCHAR", name: "xzgfsx", length: "2000", nullable: "True", comment: "行政给付事项", business_term: "行政给付事项";

MERGE (n:Field {name: "xzgfshjg"})
  ON CREATE SET data_type: "VARCHAR", name: "xzgfshjg", length: "1000", nullable: "True", comment: "行政给付审核结果", business_term: "行政给付审核结果";

MERGE (n:Field {name: "xzgffy"})
  ON CREATE SET data_type: "VARCHAR", name: "xzgffy", length: "300", nullable: "True", comment: "行政给付费用", business_term: "行政给付费用";

MERGE (n:Field {name: "xzgfrq"})
  ON CREATE SET data_type: "VARCHAR", name: "xzgfrq", length: "30", nullable: "True", comment: "行政给付日期", business_term: "行政给付日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "255", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "255", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "255", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "xm"})
  ON CREATE SET data_type: "VARCHAR", name: "xm", length: "200", nullable: "True", comment: "姓名", business_term: "姓名";

MERGE (n:Field {name: "cym"})
  ON CREATE SET data_type: "VARCHAR", name: "cym", length: "200", nullable: "True", comment: "曾用名", business_term: "曾用名";

MERGE (n:Field {name: "xb"})
  ON CREATE SET data_type: "VARCHAR", name: "xb", length: "10", nullable: "True", comment: "性别", business_term: "性别";

MERGE (n:Field {name: "csrq"})
  ON CREATE SET data_type: "DATE", name: "csrq", nullable: "True", comment: "出生日期", business_term: "出生日期";

MERGE (n:Field {name: "mz"})
  ON CREATE SET data_type: "VARCHAR", name: "mz", length: "20", nullable: "True", comment: "民族", business_term: "民族";

MERGE (n:Field {name: "gj"})
  ON CREATE SET data_type: "VARCHAR", name: "gj", length: "300", nullable: "True", comment: "国籍", business_term: "国籍";

MERGE (n:Field {name: "zzmm"})
  ON CREATE SET data_type: "VARCHAR", name: "zzmm", length: "255", nullable: "True", comment: "政治面貌", business_term: "政治面貌";

MERGE (n:Field {name: "zjxy"})
  ON CREATE SET data_type: "VARCHAR", name: "zjxy", length: "20", nullable: "True", comment: "宗教信仰", business_term: "宗教信仰";

MERGE (n:Field {name: "byzk"})
  ON CREATE SET data_type: "VARCHAR", name: "byzk", length: "20", nullable: "True", comment: "兵役状况", business_term: "兵役状况";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "shbzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "shbzhm", length: "200", nullable: "True", comment: "社会保障号码", business_term: "社会保障号码";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "200", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "cbdxzqhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cbdxzqhdm", length: "100", nullable: "True", comment: "参保所属地", business_term: "参保所属地";

MERGE (n:Field {name: "cbksrq"})
  ON CREATE SET data_type: "VARCHAR", name: "cbksrq", length: "50", nullable: "True", comment: "参保开始日期", business_term: "参保开始日期";

MERGE (n:Field {name: "bcjfksny"})
  ON CREATE SET data_type: "VARCHAR", name: "bcjfksny", length: "50", nullable: "True", comment: "本次缴费开始年月", business_term: "本次缴费开始年月";

MERGE (n:Field {name: "sbcbzt"})
  ON CREATE SET data_type: "VARCHAR", name: "sbcbzt", length: "200", nullable: "True", comment: "社保参保状态", business_term: "社保参保状态";

MERGE (n:Field {name: "sbzzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbzzrq", length: "50", nullable: "True", comment: "社保终止日期", business_term: "社保终止日期";

MERGE (n:Field {name: "zhjlny"})
  ON CREATE SET data_type: "VARCHAR", name: "zhjlny", length: "100", nullable: "True", comment: "账户建立年月", business_term: "账户建立年月";

MERGE (n:Field {name: "zjfs"})
  ON CREATE SET data_type: "VARCHAR", name: "zjfs", length: "100", nullable: "True", comment: "征缴方式", business_term: "征缴方式";

MERGE (n:Field {name: "ygxs"})
  ON CREATE SET data_type: "VARCHAR", name: "ygxs", length: "100", nullable: "True", comment: "用工形式", business_term: "用工形式";

MERGE (n:Field {name: "grjfzt"})
  ON CREATE SET data_type: "VARCHAR", name: "grjfzt", length: "50", nullable: "True", comment: "个人缴费状态", business_term: "个人缴费状态";

MERGE (n:Field {name: "cbsf"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsf", length: "100", nullable: "True", comment: "参保身份", business_term: "参保身份";

MERGE (n:Field {name: "dfcbsfmz"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmz", length: "50", nullable: "True", comment: "地方参保身份码值", business_term: "地方参保身份码值";

MERGE (n:Field {name: "dfcbsfmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmc", length: "100", nullable: "True", comment: "地方参保身份名称", business_term: "地方参保身份名称";

MERGE (n:Field {name: "ldgxksrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxksrq", nullable: "True", comment: "劳动关系开始日期", business_term: "劳动关系开始日期";

MERGE (n:Field {name: "ldgxzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxzzrq", nullable: "True", comment: "劳动关系终止日期", business_term: "劳动关系终止日期";

MERGE (n:Field {name: "dqyxbz"})
  ON CREATE SET data_type: "VARCHAR", name: "dqyxbz", length: "50", nullable: "True", comment: "当前有效标志", business_term: "当前有效标志";

MERGE (n:Field {name: "rycbgxlx"})
  ON CREATE SET data_type: "VARCHAR", name: "rycbgxlx", length: "100", nullable: "True", comment: "人员参保关系类型", business_term: "人员参保关系类型";

MERGE (n:Field {name: "jfrylb"})
  ON CREATE SET data_type: "VARCHAR", name: "jfrylb", length: "50", nullable: "True", comment: "缴费人员类别", business_term: "缴费人员类别";

MERGE (n:Field {name: "grcbrq"})
  ON CREATE SET data_type: "VARCHAR", name: "grcbrq", length: "50", nullable: "True", comment: "个人参保日期", business_term: "个人参保日期";

MERGE (n:Field {name: "xzlx"})
  ON CREATE SET data_type: "VARCHAR", name: "xzlx", length: "200", nullable: "True", comment: "险种类型", business_term: "险种类型";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1600", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "128", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1600", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "hdmc"})
  ON CREATE SET data_type: "VARCHAR", name: "hdmc", length: "3000", nullable: "True", comment: "活动名称", business_term: "活动名称";

MERGE (n:Field {name: "zyzhdzsc"})
  ON CREATE SET data_type: "DOUBLE", name: "zyzhdzsc", nullable: "True", comment: "志愿者活动总时长", business_term: "志愿者活动总时长";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "nsrsbh"})
  ON CREATE SET data_type: "CHAR", name: "nsrsbh", length: "500", nullable: "True", comment: "纳税人识别号", business_term: "纳税人识别号";

MERGE (n:Field {name: "sz"})
  ON CREATE SET data_type: "VARCHAR", name: "sz", length: "400", nullable: "True", comment: "税种", business_term: "税种";

MERGE (n:Field {name: "zrrnsdxm"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrnsdxm", length: "2400", nullable: "True", comment: "自然人纳税所得项目", business_term: "自然人纳税所得项目";

MERGE (n:Field {name: "sre"})
  ON CREATE SET data_type: "NUMERIC", name: "sre", nullable: "True", comment: "收入额", business_term: "收入额";

MERGE (n:Field {name: "nssksssq"})
  ON CREATE SET data_type: "CHAR", name: "nssksssq", length: "200", nullable: "True", comment: "纳税税款所属时期", business_term: "纳税税款所属时期";

MERGE (n:Field {name: "skssq"})
  ON CREATE SET data_type: "INTEGER", name: "skssq", nullable: "True", comment: "税款所属期", business_term: "税款所属期";

MERGE (n:Field {name: "ynssde"})
  ON CREATE SET data_type: "NUMERIC", name: "ynssde", nullable: "True", comment: "应纳税所得额", business_term: "应纳税所得额";

MERGE (n:Field {name: "ynsl"})
  ON CREATE SET data_type: "NUMERIC", name: "ynsl", nullable: "True", comment: "应纳税率", business_term: "应纳税率";

MERGE (n:Field {name: "jsje"})
  ON CREATE SET data_type: "NUMERIC", name: "jsje", nullable: "True", comment: "缴税金额", business_term: "缴税金额";

MERGE (n:Field {name: "sjse"})
  ON CREATE SET data_type: "NUMERIC", name: "sjse", nullable: "True", comment: "实缴税额", business_term: "实缴税额";

MERGE (n:Field {name: "jnsj"})
  ON CREATE SET data_type: "DATE", name: "jnsj", nullable: "True", comment: "缴纳时间", business_term: "缴纳时间";

MERGE (n:Field {name: "zsjgmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zsjgmc", length: "500", nullable: "True", comment: "征税机构名称", business_term: "征税机构名称";

MERGE (n:Field {name: "grsdssdnf"})
  ON CREATE SET data_type: "CHAR", name: "grsdssdnf", length: "50", nullable: "True", comment: "个人所得税所得年份", business_term: "个人所得税所得年份";

MERGE (n:Field {name: "gszsjg"})
  ON CREATE SET data_type: "CHAR", name: "gszsjg", length: "200", nullable: "True", comment: "个税征收机关", business_term: "个税征收机关";

MERGE (n:Field {name: "gsjnpzhm"})
  ON CREATE SET data_type: "CHAR", name: "gsjnpzhm", length: "300", nullable: "True", comment: "个税缴纳凭证号码", business_term: "个税缴纳凭证号码";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sbbm"})
  ON CREATE SET data_type: "VARCHAR", name: "sbbm", length: "200", nullable: "True", comment: "社保编码", business_term: "社保编码";

MERGE (n:Field {name: "sbxzlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sbxzlx", length: "50", nullable: "True", comment: "社保险种类型", business_term: "社保险种类型";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "50", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "sbjfrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfrq", length: "50", nullable: "True", comment: "社保缴费日期", business_term: "社保缴费日期";

MERGE (n:Field {name: "sbjfqsrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfqsrq", length: "50", nullable: "True", comment: "社保缴费起始日期", business_term: "社保缴费起始日期";

MERGE (n:Field {name: "sbjfjzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjzrq", length: "50", nullable: "True", comment: "社保缴费截止日期", business_term: "社保缴费截止日期";

MERGE (n:Field {name: "sbjfgz"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfgz", length: "50", nullable: "True", comment: "社保缴费工资", business_term: "社保缴费工资";

MERGE (n:Field {name: "sbjfjs"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjs", length: "50", nullable: "True", comment: "社保缴费基数", business_term: "社保缴费基数";

MERGE (n:Field {name: "sbjfyf"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfyf", length: "50", nullable: "True", comment: "社保缴费月份", business_term: "社保缴费月份";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "200", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xxwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "xxwybs", length: "800", nullable: "True", comment: "学校唯一标识", business_term: "学校唯一标识";

MERGE (n:Field {name: "xh"})
  ON CREATE SET data_type: "VARCHAR", name: "xh", length: "800", nullable: "True", comment: "学号", business_term: "学号";

MERGE (n:Field {name: "njmc"})
  ON CREATE SET data_type: "VARCHAR", name: "njmc", length: "400", nullable: "True", comment: "年级名称", business_term: "年级名称";

MERGE (n:Field {name: "bjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "bjmc", length: "400", nullable: "True", comment: "班级名称", business_term: "班级名称";

MERGE (n:Field {name: "xxmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xxmc", length: "255", nullable: "True", comment: "学校名称", business_term: "学校名称";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "255", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "255", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "255", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "khyh"})
  ON CREATE SET data_type: "VARCHAR", name: "khyh", length: "255", nullable: "True", comment: "开户银行", business_term: "开户银行";

MERGE (n:Field {name: "ffje"})
  ON CREATE SET data_type: "NUMERIC", name: "ffje", nullable: "True", comment: "发放金额", business_term: "发放金额";

MERGE (n:Field {name: "dklx"})
  ON CREATE SET data_type: "VARCHAR", name: "dklx", length: "100", nullable: "True", comment: "贷款类型", business_term: "贷款类型";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "100", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "2000", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xxwys"})
  ON CREATE SET data_type: "VARCHAR", name: "xxwys", length: "3000", nullable: "True", comment: "学校唯一标识", business_term: "学校唯一标识";

MERGE (n:Field {name: "xh"})
  ON CREATE SET data_type: "VARCHAR", name: "xh", length: "1000", nullable: "True", comment: "学号", business_term: "学号";

MERGE (n:Field {name: "njmc"})
  ON CREATE SET data_type: "VARCHAR", name: "njmc", length: "1000", nullable: "True", comment: "年级名称", business_term: "年级名称";

MERGE (n:Field {name: "bjmc"})
  ON CREATE SET data_type: "VARCHAR", name: "bjmc", length: "1000", nullable: "True", comment: "班级名称", business_term: "班级名称";

MERGE (n:Field {name: "xxmc"})
  ON CREATE SET data_type: "VARCHAR", name: "xxmc", length: "800", nullable: "True", comment: "学校名称", business_term: "学校名称";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "sxpjrq"})
  ON CREATE SET data_type: "DATE", name: "sxpjrq", nullable: "True", comment: "死刑判决日期";

MERGE (n:Field {name: "jarg"})
  ON CREATE SET data_type: "DATE", name: "jarg", nullable: "True", comment: "结案日期";

MERGE (n:Field {name: "ah"})
  ON CREATE SET data_type: "VARCHAR", name: "ah", length: "64", nullable: "True", comment: "案号";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "10", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sjhm", length: "400", nullable: "True", comment: "手机号码", business_term: "手机号码";

MERGE (n:Field {name: "zjcx"})
  ON CREATE SET data_type: "VARCHAR", name: "zjcx", length: "400", nullable: "True", comment: "准驾车型", business_term: "准驾车型";

MERGE (n:Field {name: "bldz"})
  ON CREATE SET data_type: "VARCHAR", name: "bldz", length: "400", nullable: "True", comment: "办理地址", business_term: "办理地址";

MERGE (n:Field {name: "cclzrq"})
  ON CREATE SET data_type: "DATE", name: "cclzrq", nullable: "True", comment: "初次领证日期", business_term: "初次领证日期";

MERGE (n:Field {name: "yxqs"})
  ON CREATE SET data_type: "DATE", name: "yxqs", nullable: "True", comment: "有效期始", business_term: "有效期始";

MERGE (n:Field {name: "yxqz"})
  ON CREATE SET data_type: "DATE", name: "yxqz", nullable: "True", comment: "有效期止", business_term: "有效期止";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "shbzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "shbzhm", length: "200", nullable: "True", comment: "社会保障号码", business_term: "社会保障号码";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "200", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "cbdxzqhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cbdxzqhdm", length: "100", nullable: "True", comment: "参保所属地", business_term: "参保所属地";

MERGE (n:Field {name: "cbksrq"})
  ON CREATE SET data_type: "VARCHAR", name: "cbksrq", length: "50", nullable: "True", comment: "参保开始日期", business_term: "参保开始日期";

MERGE (n:Field {name: "bcjfksny"})
  ON CREATE SET data_type: "VARCHAR", name: "bcjfksny", length: "50", nullable: "True", comment: "本次缴费开始年月", business_term: "本次缴费开始年月";

MERGE (n:Field {name: "sbcbzt"})
  ON CREATE SET data_type: "VARCHAR", name: "sbcbzt", length: "200", nullable: "True", comment: "社保参保状态", business_term: "社保参保状态";

MERGE (n:Field {name: "sbzzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbzzrq", length: "50", nullable: "True", comment: "社保终止日期", business_term: "社保终止日期";

MERGE (n:Field {name: "zhjlny"})
  ON CREATE SET data_type: "VARCHAR", name: "zhjlny", length: "100", nullable: "True", comment: "账户建立年月", business_term: "账户建立年月";

MERGE (n:Field {name: "zjfs"})
  ON CREATE SET data_type: "VARCHAR", name: "zjfs", length: "100", nullable: "True", comment: "征缴方式", business_term: "征缴方式";

MERGE (n:Field {name: "ygxs"})
  ON CREATE SET data_type: "VARCHAR", name: "ygxs", length: "100", nullable: "True", comment: "用工形式", business_term: "用工形式";

MERGE (n:Field {name: "grjfzt"})
  ON CREATE SET data_type: "VARCHAR", name: "grjfzt", length: "50", nullable: "True", comment: "个人缴费状态", business_term: "个人缴费状态";

MERGE (n:Field {name: "cbsf"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsf", length: "100", nullable: "True", comment: "参保身份", business_term: "参保身份";

MERGE (n:Field {name: "dfcbsfmz"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmz", length: "50", nullable: "True", comment: "地方参保身份码值", business_term: "地方参保身份码值";

MERGE (n:Field {name: "dfcbsfmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmc", length: "100", nullable: "True", comment: "地方参保身份名称", business_term: "地方参保身份名称";

MERGE (n:Field {name: "ldgxksrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxksrq", nullable: "True", comment: "劳动关系开始日期", business_term: "劳动关系开始日期";

MERGE (n:Field {name: "ldgxzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxzzrq", nullable: "True", comment: "劳动关系终止日期", business_term: "劳动关系终止日期";

MERGE (n:Field {name: "dqyxbz"})
  ON CREATE SET data_type: "VARCHAR", name: "dqyxbz", length: "50", nullable: "True", comment: "当前有效标志", business_term: "当前有效标志";

MERGE (n:Field {name: "rycbgxlx"})
  ON CREATE SET data_type: "VARCHAR", name: "rycbgxlx", length: "100", nullable: "True", comment: "人员参保关系类型", business_term: "人员参保关系类型";

MERGE (n:Field {name: "jfrylb"})
  ON CREATE SET data_type: "VARCHAR", name: "jfrylb", length: "50", nullable: "True", comment: "缴费人员类别", business_term: "缴费人员类别";

MERGE (n:Field {name: "grcbrq"})
  ON CREATE SET data_type: "VARCHAR", name: "grcbrq", length: "50", nullable: "True", comment: "个人参保日期", business_term: "个人参保日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "tsr"})
  ON CREATE SET data_type: "VARCHAR", name: "tsr", length: "255", nullable: "True", comment: "投诉人", business_term: "投诉人";

MERGE (n:Field {name: "tsnr"})
  ON CREATE SET data_type: "VARCHAR", name: "tsnr", length: "16000", nullable: "True", comment: "投诉内容", business_term: "投诉内容";

MERGE (n:Field {name: "tsdh"})
  ON CREATE SET data_type: "VARCHAR", name: "tsdh", length: "800", nullable: "True", comment: "投诉电话", business_term: "投诉电话";

MERGE (n:Field {name: "slssjblx"})
  ON CREATE SET data_type: "CHAR", name: "slssjblx", length: "16", nullable: "True", comment: "受理申诉举报类型", business_term: "受理申诉举报类型";

MERGE (n:Field {name: "blbm"})
  ON CREATE SET data_type: "VARCHAR", name: "blbm", length: "800", nullable: "True", comment: "办理部门", business_term: "办理部门";

MERGE (n:Field {name: "xzdwlx"})
  ON CREATE SET data_type: "VARCHAR", name: "xzdwlx", length: "160", nullable: "True", comment: "协助单位类型", business_term: "协助单位类型";

MERGE (n:Field {name: "xfaqsjlx"})
  ON CREATE SET data_type: "TEXT", name: "xfaqsjlx", nullable: "True", comment: "消费安全事件类型", business_term: "消费安全事件类型";

MERGE (n:Field {name: "fkdjr"})
  ON CREATE SET data_type: "VARCHAR", name: "fkdjr", length: "240", nullable: "True", comment: "反馈登记人", business_term: "反馈登记人";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "swrq"})
  ON CREATE SET data_type: "DATE", name: "swrq", nullable: "True", comment: "死亡日期", business_term: "死亡日期";

MERGE (n:Field {name: "swsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "swsj", nullable: "True", comment: "死亡时间", business_term: "死亡时间";

MERGE (n:Field {name: "swyy"})
  ON CREATE SET data_type: "CHAR", name: "swyy", length: "24", nullable: "True", comment: "死亡原因", business_term: "死亡原因";

MERGE (n:Field {name: "swzmfzjg"})
  ON CREATE SET data_type: "VARCHAR", name: "swzmfzjg", length: "400", nullable: "True", comment: "死亡证明发证机关", business_term: "死亡证明发证机关";

MERGE (n:Field {name: "swzmqmz"})
  ON CREATE SET data_type: "VARCHAR", name: "swzmqmz", length: "4000", nullable: "True", comment: "死亡证明编号", business_term: "死亡证明编号";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "320", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "12", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "320", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xm"})
  ON CREATE SET data_type: "VARCHAR", name: "xm", length: "60", nullable: "True", comment: "姓名", business_term: "姓名";

MERGE (n:Field {name: "xb"})
  ON CREATE SET data_type: "VARCHAR", name: "xb", length: "6", nullable: "True", comment: "性别", business_term: "性别";

MERGE (n:Field {name: "sshbw"})
  ON CREATE SET data_type: "TEXT", name: "sshbw", nullable: "True", comment: "受伤害部位", business_term: "受伤害部位";

MERGE (n:Field {name: "yrdw"})
  ON CREATE SET data_type: "VARCHAR", name: "yrdw", length: "200", nullable: "True", comment: "用人单位", business_term: "用人单位";

MERGE (n:Field {name: "tyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "tyshxydm", length: "30", nullable: "True", comment: "统一社会信用代码", business_term: "统一社会信用代码";

MERGE (n:Field {name: "gsfssj"})
  ON CREATE SET data_type: "VARCHAR", name: "gsfssj", length: "20", nullable: "True", comment: "工伤发生时间", business_term: "工伤发生时间";

MERGE (n:Field {name: "gsrdsqrq"})
  ON CREATE SET data_type: "DATE", name: "gsrdsqrq", nullable: "True", comment: "工伤认定申请日期", business_term: "工伤认定申请日期";

MERGE (n:Field {name: "rdsqrygszggx"})
  ON CREATE SET data_type: "TEXT", name: "rdsqrygszggx", nullable: "True", comment: "认定申请人与工伤职工关系", business_term: "认定申请人与工伤职工关系";

MERGE (n:Field {name: "gsrdrq"})
  ON CREATE SET data_type: "VARCHAR", name: "gsrdrq", length: "20", nullable: "True", comment: "工伤认定日期", business_term: "工伤认定日期";

MERGE (n:Field {name: "gsrdjl"})
  ON CREATE SET data_type: "TEXT", name: "gsrdjl", nullable: "True", comment: "工伤认定结论", business_term: "工伤认定结论";

MERGE (n:Field {name: "rdyjlb"})
  ON CREATE SET data_type: "VARCHAR", name: "rdyjlb", length: "100", nullable: "True", comment: "认定依据类别", business_term: "认定依据类别";

MERGE (n:Field {name: "sssdzygz"})
  ON CREATE SET data_type: "VARCHAR", name: "sssdzygz", length: "500", nullable: "True", comment: "受伤时的职业工种", business_term: "受伤时的职业工种";

MERGE (n:Field {name: "sglb"})
  ON CREATE SET data_type: "VARCHAR", name: "sglb", length: "100", nullable: "True", comment: "事故类别", business_term: "事故类别";

MERGE (n:Field {name: "shcd"})
  ON CREATE SET data_type: "TEXT", name: "shcd", nullable: "True", comment: "伤害程度", business_term: "伤害程度";

MERGE (n:Field {name: "zybmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zybmc", length: "200", nullable: "True", comment: "职业病名称", business_term: "职业病名称";

MERGE (n:Field {name: "jczybwhys"})
  ON CREATE SET data_type: "NUMERIC", name: "jczybwhys", nullable: "True", comment: "接触职业病危害月数", business_term: "接触职业病危害月数";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sflrsxhmd"})
  ON CREATE SET data_type: "INTEGER", name: "sflrsxhmd", nullable: "True", comment: "是否列入失信黑名单", business_term: "是否列入失信黑名单";

MERGE (n:Field {name: "lrsxhmdrq"})
  ON CREATE SET data_type: "DATE", name: "lrsxhmdrq", nullable: "True", comment: "列入失信黑名单日期", business_term: "列入失信黑名单日期";

MERGE (n:Field {name: "lrsxhmdsy"})
  ON CREATE SET data_type: "VARCHAR", name: "lrsxhmdsy", length: "16000", nullable: "True", comment: "列入失信黑名单事由", business_term: "列入失信黑名单事由";

MERGE (n:Field {name: "tcsxhmdrq"})
  ON CREATE SET data_type: "DATE", name: "tcsxhmdrq", nullable: "True", comment: "退出失信黑名单日期", business_term: "退出失信黑名单日期";

MERGE (n:Field {name: "tcsxhmdyy"})
  ON CREATE SET data_type: "VARCHAR", name: "tcsxhmdyy", length: "16000", nullable: "True", comment: "退出失信黑名单原因", business_term: "退出失信黑名单原因";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "shjzlb"})
  ON CREATE SET data_type: "VARCHAR", name: "shjzlb", length: "80", nullable: "True", comment: "社会救助类别";

MERGE (n:Field {name: "jzzbh"})
  ON CREATE SET data_type: "VARCHAR", name: "jzzbh", length: "400", nullable: "True", comment: "救助证编号";

MERGE (n:Field {name: "jzksrq"})
  ON CREATE SET data_type: "DATE", name: "jzksrq", nullable: "True", comment: "救助开始日期";

MERGE (n:Field {name: "jzlb"})
  ON CREATE SET data_type: "VARCHAR", name: "jzlb", length: "1024", nullable: "True", comment: "救助类别";

MERGE (n:Field {name: "jzfs"})
  ON CREATE SET data_type: "VARCHAR", name: "jzfs", length: "256", nullable: "True", comment: "救助方式";

MERGE (n:Field {name: "jzyy"})
  ON CREATE SET data_type: "VARCHAR", name: "jzyy", length: "32000", nullable: "True", comment: "救助原因";

MERGE (n:Field {name: "sfbdhj"})
  ON CREATE SET data_type: "VARCHAR", name: "sfbdhj", length: "128", nullable: "True", comment: "是否本地户籍";

MERGE (n:Field {name: "cjlb"})
  ON CREATE SET data_type: "CHAR", name: "cjlb", length: "128", nullable: "True", comment: "残疾类别";

MERGE (n:Field {name: "cjdj"})
  ON CREATE SET data_type: "VARCHAR", name: "cjdj", length: "160", nullable: "True", comment: "残疾等级";

MERGE (n:Field {name: "jtbh"})
  ON CREATE SET data_type: "VARCHAR", name: "jtbh", length: "1600", nullable: "True", comment: "家庭编号";

MERGE (n:Field {name: "tdjzdxlbmc"})
  ON CREATE SET data_type: "VARCHAR", name: "tdjzdxlbmc", length: "800", nullable: "True", comment: "特定救助对象类别名称";

MERGE (n:Field {name: "dblx"})
  ON CREATE SET data_type: "VARCHAR", name: "dblx", length: "1024", nullable: "True", comment: "低保类型";

MERGE (n:Field {name: "dbjtlqje"})
  ON CREATE SET data_type: "NUMERIC", name: "dbjtlqje", nullable: "True", comment: "救助金额";

MERGE (n:Field {name: "dbjzyxzh"})
  ON CREATE SET data_type: "VARCHAR", name: "dbjzyxzh", length: "1600", nullable: "True", comment: "低保救助银行账号";

MERGE (n:Field {name: "dbjzyxmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dbjzyxmc", length: "400", nullable: "True", comment: "低保救助银行名称";

MERGE (n:Field {name: "jtzsr"})
  ON CREATE SET data_type: "NUMERIC", name: "jtzsr", nullable: "True", comment: "家庭总收入";

MERGE (n:Field {name: "zpyy"})
  ON CREATE SET data_type: "CHAR", name: "zpyy", length: "16", nullable: "True", comment: "致贫原因";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xxlb"})
  ON CREATE SET data_type: "CHAR", name: "xxlb", length: "8", nullable: "True", comment: "信息类别", business_term: "信息类别";

MERGE (n:Field {name: "gjzms"})
  ON CREATE SET data_type: "VARCHAR", name: "gjzms", length: "4000", nullable: "True", comment: "关键字描述", business_term: "关键字描述";

MERGE (n:Field {name: "wtlb"})
  ON CREATE SET data_type: "CHAR", name: "wtlb", length: "48", nullable: "True", comment: "问题类别", business_term: "问题类别";

MERGE (n:Field {name: "jtwt"})
  ON CREATE SET data_type: "VARCHAR", name: "jtwt", length: "16000", nullable: "True", comment: "具体问题", business_term: "具体问题";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1600", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "400", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1600", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sfzjyxq"})
  ON CREATE SET data_type: "DATE", name: "sfzjyxq", nullable: "True", comment: "身份证件有效期", business_term: "身份证件有效期";

MERGE (n:Field {name: "zjyxqqsrq"})
  ON CREATE SET data_type: "DATE", name: "zjyxqqsrq", nullable: "True", comment: "证件有效期起始日期", business_term: "证件有效期起始日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "jkzk"})
  ON CREATE SET data_type: "CHAR", name: "jkzk", length: "8", nullable: "True", comment: "健康状况", business_term: "健康状况";

MERGE (n:Field {name: "tz"})
  ON CREATE SET data_type: "NUMERIC", name: "tz", nullable: "True", comment: "体重", business_term: "体重";

MERGE (n:Field {name: "sg"})
  ON CREATE SET data_type: "NUMERIC", name: "sg", nullable: "True", comment: "身高", business_term: "身高";

MERGE (n:Field {name: "cjzh"})
  ON CREATE SET data_type: "VARCHAR", name: "cjzh", length: "500", nullable: "True", comment: "残疾证号", business_term: "残疾证号";

MERGE (n:Field {name: "cjlx"})
  ON CREATE SET data_type: "CHAR", name: "cjlx", length: "16", nullable: "True", comment: "残疾类型", business_term: "残疾类型";

MERGE (n:Field {name: "cjdj"})
  ON CREATE SET data_type: "VARCHAR", name: "cjdj", length: "80", nullable: "True", comment: "残疾等级", business_term: "残疾等级";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sbbm"})
  ON CREATE SET data_type: "VARCHAR", name: "sbbm", length: "200", nullable: "True", comment: "社保编码", business_term: "社保编码";

MERGE (n:Field {name: "sbxzlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sbxzlx", length: "50", nullable: "True", comment: "社保险种类型", business_term: "社保险种类型";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "50", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "sbjfrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfrq", length: "50", nullable: "True", comment: "社保缴费日期", business_term: "社保缴费日期";

MERGE (n:Field {name: "sbjfqsrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfqsrq", length: "50", nullable: "True", comment: "社保缴费起始日期", business_term: "社保缴费起始日期";

MERGE (n:Field {name: "sbjfjzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjzrq", length: "50", nullable: "True", comment: "社保缴费截止日期", business_term: "社保缴费截止日期";

MERGE (n:Field {name: "sbjfgz"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfgz", length: "50", nullable: "True", comment: "社保缴费工资", business_term: "社保缴费工资";

MERGE (n:Field {name: "sbjfjs"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfjs", length: "50", nullable: "True", comment: "社保缴费基数", business_term: "社保缴费基数";

MERGE (n:Field {name: "sbjfyf"})
  ON CREATE SET data_type: "VARCHAR", name: "sbjfyf", length: "50", nullable: "True", comment: "社保缴费月份", business_term: "社保缴费月份";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xzcfdxszzzjgtyshxydm"})
  ON CREATE SET data_type: "CHAR", name: "xzcfdxszzzjgtyshxydm", length: "144", nullable: "True", comment: "行政处罚对象所在组织机构统一社会信用代码", business_term: "行政处罚对象所在组织机构统一社会信用代码";

MERGE (n:Field {name: "xzcfdxszzzjgdm"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfdxszzzjgdm", length: "240", nullable: "True", comment: "行政处罚对象所在组织机构代码", business_term: "行政处罚对象所在组织机构代码";

MERGE (n:Field {name: "xzcfzl"})
  ON CREATE SET data_type: "CHAR", name: "xzcfzl", length: "40", nullable: "True", comment: "行政处罚种类", business_term: "行政处罚种类";

MERGE (n:Field {name: "xzwfxwlx"})
  ON CREATE SET data_type: "VARCHAR", name: "xzwfxwlx", length: "320", nullable: "True", comment: "行政违法行为类型", business_term: "行政违法行为类型";

MERGE (n:Field {name: "xzcfjdswh"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfjdswh", length: "800", nullable: "True", comment: "行政处罚决定书文号", business_term: "行政处罚决定书文号";

MERGE (n:Field {name: "xzcfnr"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfnr", length: "16000", nullable: "True", comment: "行政处罚内容", business_term: "行政处罚内容";

MERGE (n:Field {name: "xzcfjd"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfjd", length: "8000", nullable: "True", comment: "行政处罚决定", business_term: "行政处罚决定";

MERGE (n:Field {name: "xzcfyj"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfyj", length: "16000", nullable: "True", comment: "行政处罚依据", business_term: "行政处罚依据";

MERGE (n:Field {name: "xzcfrq"})
  ON CREATE SET data_type: "DATE", name: "xzcfrq", nullable: "True", comment: "行政处罚日期", business_term: "行政处罚日期";

MERGE (n:Field {name: "xzcfjkbj"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfjkbj", length: "800", nullable: "True", comment: "行政处罚交款标记", business_term: "行政处罚交款标记";

MERGE (n:Field {name: "xzcfnx"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfnx", length: "400", nullable: "True", comment: "行政处罚年限", business_term: "行政处罚年限";

MERGE (n:Field {name: "xzcfjg"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfjg", length: "800", nullable: "True", comment: "行政处罚机关", business_term: "行政处罚机关";

MERGE (n:Field {name: "xzcfjgbhxzcfjgbh"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfjgbhxzcfjgbh", length: "800", nullable: "True", comment: "行政处罚机构编号(行政处罚机关编号)", business_term: "行政处罚机构编号(行政处罚机关编号)";

MERGE (n:Field {name: "xzcfbmjb"})
  ON CREATE SET data_type: "VARCHAR", name: "xzcfbmjb", length: "160", nullable: "True", comment: "行政处罚部门级别", business_term: "行政处罚部门级别";

MERGE (n:Field {name: "blxwdjrq"})
  ON CREATE SET data_type: "DATE", name: "blxwdjrq", nullable: "True", comment: "不良行为登记日期", business_term: "不良行为登记日期";

MERGE (n:Field {name: "xzwfxwfsrq"})
  ON CREATE SET data_type: "DATE", name: "xzwfxwfsrq", nullable: "True", comment: "行政违法行为发生日期", business_term: "行政违法行为发生日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xm"})
  ON CREATE SET data_type: "VARCHAR", name: "xm", length: "400", nullable: "True", comment: "姓名", business_term: "姓名";

MERGE (n:Field {name: "zcmc"})
  ON CREATE SET data_type: "VARCHAR", name: "zcmc", length: "2000", nullable: "True", comment: "职称名称", business_term: "职称名称";

MERGE (n:Field {name: "xcszyjsgz"})
  ON CREATE SET data_type: "VARCHAR", name: "xcszyjsgz", length: "2000", nullable: "True", comment: "现从事专业技术工作", business_term: "现从事专业技术工作";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "2000", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "xxzzw"})
  ON CREATE SET data_type: "VARCHAR", name: "xxzzw", length: "2000", nullable: "True", comment: "现行政职务", business_term: "现行政职务";

MERGE (n:Field {name: "pdsj"})
  ON CREATE SET data_type: "DATE", name: "pdsj", nullable: "True", comment: "评定时间", business_term: "评定时间";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sfajah"})
  ON CREATE SET data_type: "VARCHAR", name: "sfajah", length: "800", nullable: "True", comment: "司法案件案号", business_term: "司法案件案号";

MERGE (n:Field {name: "sfajahdm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfajahdm", length: "800", nullable: "True", comment: "司法案件案号代码", business_term: "司法案件案号代码";

MERGE (n:Field {name: "sfajygr"})
  ON CREATE SET data_type: "VARCHAR", name: "sfajygr", length: "800", nullable: "True", comment: "司法案件原告人", business_term: "司法案件原告人";

MERGE (n:Field {name: "sfajay"})
  ON CREATE SET data_type: "VARCHAR", name: "sfajay", length: "2400", nullable: "True", comment: "司法案件案由", business_term: "司法案件案由";

MERGE (n:Field {name: "sfajlarq"})
  ON CREATE SET data_type: "DATE", name: "sfajlarq", nullable: "True", comment: "司法案件立案日期", business_term: "司法案件立案日期";

MERGE (n:Field {name: "sfajpjg"})
  ON CREATE SET data_type: "VARCHAR", name: "sfajpjg", length: "2560", nullable: "True", comment: "司法案件判决结果", business_term: "司法案件判决结果";

MERGE (n:Field {name: "zxajbjrq"})
  ON CREATE SET data_type: "DATE", name: "zxajbjrq", nullable: "True", comment: "执行案件报结日期", business_term: "执行案件报结日期";

MERGE (n:Field {name: "zxajjafs"})
  ON CREATE SET data_type: "VARCHAR", name: "zxajjafs", length: "2000", nullable: "True", comment: "执行案件结案方式", business_term: "执行案件结案方式";

MERGE (n:Field {name: "sfajbgr"})
  ON CREATE SET data_type: "VARCHAR", name: "sfajbgr", length: "800", nullable: "True", comment: "司法案件被告人", business_term: "司法案件被告人";

MERGE (n:Field {name: "bgsfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "bgsfzjhm", length: "800", nullable: "True", comment: "被告身份证件号码", business_term: "被告身份证件号码";

MERGE (n:Field {name: "fymc"})
  ON CREATE SET data_type: "VARCHAR", name: "fymc", length: "200", nullable: "True", comment: "法院名称", business_term: "法院名称";

MERGE (n:Field {name: "ajlx"})
  ON CREATE SET data_type: "VARCHAR", name: "ajlx", length: "200", nullable: "True", comment: "案件类型", business_term: "案件类型";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "njjjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "njjjhm", length: "2040", nullable: "True", comment: "农机机架号码", business_term: "农机机架号码";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "njjsscrs"})
  ON CREATE SET data_type: "INTEGER", name: "njjsscrs", nullable: "True", comment: "农机驾驶室乘人数", business_term: "农机驾驶室乘人数";

MERGE (n:Field {name: "njlx"})
  ON CREATE SET data_type: "VARCHAR", name: "njlx", length: "2040", nullable: "True", comment: "农机类型", business_term: "农机类型";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "ycbm"})
  ON CREATE SET data_type: "VARCHAR", name: "ycbm", length: "255", nullable: "True", comment: "渔船编码";

MERGE (n:Field {name: "cjg"})
  ON CREATE SET data_type: "VARCHAR", name: "cjg", length: "255", nullable: "True", comment: "船舶港";

MERGE (n:Field {name: "cm"})
  ON CREATE SET data_type: "VARCHAR", name: "cm", length: "255", nullable: "True", comment: "船名";

MERGE (n:Field {name: "ycdjzsbh"})
  ON CREATE SET data_type: "VARCHAR", name: "ycdjzsbh", length: "255", nullable: "True", comment: "渔船登记证书编号";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "800", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "byrq"})
  ON CREATE SET data_type: "DATE", name: "byrq", nullable: "True", comment: "毕业日期", business_term: "毕业日期";

MERGE (n:Field {name: "bylx"})
  ON CREATE SET data_type: "VARCHAR", name: "bylx", length: "2040", nullable: "True", comment: "毕业类型", business_term: "毕业类型";

MERGE (n:Field {name: "byzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "byzhm", length: "2040", nullable: "True", comment: "毕业证号码", business_term: "毕业证号码";

MERGE (n:Field {name: "dxbyscc"})
  ON CREATE SET data_type: "VARCHAR", name: "dxbyscc", length: "2040", nullable: "True", comment: "大学毕业生层次", business_term: "大学毕业生层次";

MERGE (n:Field {name: "ksh"})
  ON CREATE SET data_type: "VARCHAR", name: "ksh", length: "2040", nullable: "True", comment: "考生号", business_term: "考生号";

MERGE (n:Field {name: "kmdm"})
  ON CREATE SET data_type: "VARCHAR", name: "kmdm", length: "2040", nullable: "True", comment: "科目代码", business_term: "科目代码";

MERGE (n:Field {name: "kmmc"})
  ON CREATE SET data_type: "VARCHAR", name: "kmmc", length: "2040", nullable: "True", comment: "科目名称", business_term: "科目名称";

MERGE (n:Field {name: "ksrq"})
  ON CREATE SET data_type: "DATE", name: "ksrq", nullable: "True", comment: "考试日期", business_term: "考试日期";

MERGE (n:Field {name: "kscj"})
  ON CREATE SET data_type: "VARCHAR", name: "kscj", length: "2040", nullable: "True", comment: "考试成绩", business_term: "考试成绩";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjlx", length: "20", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "800", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "ltxzh"})
  ON CREATE SET data_type: "VARCHAR", name: "ltxzh", length: "60", nullable: "True", comment: "离退休证号", business_term: "离退休证号";

MERGE (n:Field {name: "sqtxyy"})
  ON CREATE SET data_type: "VARCHAR", name: "sqtxyy", length: "1600", nullable: "True", comment: "申请退休原因", business_term: "申请退休原因";

MERGE (n:Field {name: "txsszdwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "txsszdwmc", length: "800", nullable: "True", comment: "退休时所在单位名称", business_term: "退休时所在单位名称";

MERGE (n:Field {name: "ltxzw"})
  ON CREATE SET data_type: "VARCHAR", name: "ltxzw", length: "160", nullable: "True", comment: "离退休职务", business_term: "离退休职务";

MERGE (n:Field {name: "ltxrq"})
  ON CREATE SET data_type: "DATE", name: "ltxrq", nullable: "True", comment: "离退休日期", business_term: "离退休日期";

MERGE (n:Field {name: "ltxzje"})
  ON CREATE SET data_type: "NUMERIC", name: "ltxzje", nullable: "True", comment: "离退休金总额", business_term: "离退休金总额";

MERGE (n:Field {name: "ltxrylb"})
  ON CREATE SET data_type: "VARCHAR", name: "ltxrylb", length: "20", nullable: "True", comment: "离退休人员类别", business_term: "离退休人员类别";

MERGE (n:Field {name: "cjgmgzrq"})
  ON CREATE SET data_type: "VARCHAR", name: "cjgmgzrq", length: "20", nullable: "True", comment: "参加革命工作日期", business_term: "参加革命工作日期";

MERGE (n:Field {name: "fdltxrq"})
  ON CREATE SET data_type: "DATE", name: "fdltxrq", nullable: "True", comment: "法定离退休日期", business_term: "法定离退休日期";

MERGE (n:Field {name: "ltxlb"})
  ON CREATE SET data_type: "VARCHAR", name: "ltxlb", length: "60", nullable: "True", comment: "离退休类别", business_term: "离退休类别";

MERGE (n:Field {name: "dfltxlb"})
  ON CREATE SET data_type: "VARCHAR", name: "dfltxlb", length: "60", nullable: "True", comment: "地方离退休类别", business_term: "地方离退休类别";

MERGE (n:Field {name: "dfltxlbmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfltxlbmc", length: "100", nullable: "True", comment: "地方离退休类别名称", business_term: "地方离退休类别名称";

MERGE (n:Field {name: "dyxsksny"})
  ON CREATE SET data_type: "VARCHAR", name: "dyxsksny", length: "20", nullable: "True", comment: "待遇享受开始年月", business_term: "待遇享受开始年月";

MERGE (n:Field {name: "shhglxs"})
  ON CREATE SET data_type: "VARCHAR", name: "shhglxs", length: "100", nullable: "True", comment: "社会化管理形式", business_term: "社会化管理形式";

MERGE (n:Field {name: "yctxbs"})
  ON CREATE SET data_type: "VARCHAR", name: "yctxbs", length: "20", nullable: "True", comment: "延迟退休标识", business_term: "延迟退休标识";

MERGE (n:Field {name: "txtxbs"})
  ON CREATE SET data_type: "VARCHAR", name: "txtxbs", length: "20", nullable: "True", comment: "弹性退休标识", business_term: "弹性退休标识";

MERGE (n:Field {name: "bcjtbs"})
  ON CREATE SET data_type: "VARCHAR", name: "bcjtbs", length: "20", nullable: "True", comment: "病残津贴标识", business_term: "病残津贴标识";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "shbzhm"})
  ON CREATE SET data_type: "VARCHAR", name: "shbzhm", length: "200", nullable: "True", comment: "社会保障号码", business_term: "社会保障号码";

MERGE (n:Field {name: "dwmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc", length: "200", nullable: "True", comment: "单位名称", business_term: "单位名称";

MERGE (n:Field {name: "dwtyshxydm"})
  ON CREATE SET data_type: "VARCHAR", name: "dwtyshxydm", length: "200", nullable: "True", comment: "单位统一社会信用代码", business_term: "单位统一社会信用代码";

MERGE (n:Field {name: "cbdxzqhdm"})
  ON CREATE SET data_type: "VARCHAR", name: "cbdxzqhdm", length: "100", nullable: "True", comment: "参保所属地", business_term: "参保所属地";

MERGE (n:Field {name: "cbksrq"})
  ON CREATE SET data_type: "DATE", name: "cbksrq", nullable: "True", comment: "参保开始日期", business_term: "参保开始日期";

MERGE (n:Field {name: "sbcbzt"})
  ON CREATE SET data_type: "VARCHAR", name: "sbcbzt", length: "200", nullable: "True", comment: "社保参保状态", business_term: "社保参保状态";

MERGE (n:Field {name: "sbzzrq"})
  ON CREATE SET data_type: "DATE", name: "sbzzrq", nullable: "True", comment: "社保终止日期", business_term: "社保终止日期";

MERGE (n:Field {name: "zhjlny"})
  ON CREATE SET data_type: "VARCHAR", name: "zhjlny", length: "100", nullable: "True", comment: "账户建立年月", business_term: "账户建立年月";

MERGE (n:Field {name: "zjfs"})
  ON CREATE SET data_type: "VARCHAR", name: "zjfs", length: "100", nullable: "True", comment: "征缴方式", business_term: "征缴方式";

MERGE (n:Field {name: "ygxs"})
  ON CREATE SET data_type: "VARCHAR", name: "ygxs", length: "100", nullable: "True", comment: "用工形式", business_term: "用工形式";

MERGE (n:Field {name: "grjfzt"})
  ON CREATE SET data_type: "CHAR", name: "grjfzt", length: "50", nullable: "True", comment: "个人缴费状态", business_term: "个人缴费状态";

MERGE (n:Field {name: "cbsf"})
  ON CREATE SET data_type: "VARCHAR", name: "cbsf", length: "100", nullable: "True", comment: "参保身份", business_term: "参保身份";

MERGE (n:Field {name: "dfcbsfmz"})
  ON CREATE SET data_type: "CHAR", name: "dfcbsfmz", length: "50", nullable: "True", comment: "地方参保身份码值", business_term: "地方参保身份码值";

MERGE (n:Field {name: "dfcbsfmc"})
  ON CREATE SET data_type: "VARCHAR", name: "dfcbsfmc", length: "100", nullable: "True", comment: "地方参保身份名称", business_term: "地方参保身份名称";

MERGE (n:Field {name: "ldgxksrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxksrq", nullable: "True", comment: "劳动关系开始日期", business_term: "劳动关系开始日期";

MERGE (n:Field {name: "ldgxzzrq"})
  ON CREATE SET data_type: "DATE", name: "ldgxzzrq", nullable: "True", comment: "劳动关系终止日期", business_term: "劳动关系终止日期";

MERGE (n:Field {name: "dqyxbz"})
  ON CREATE SET data_type: "CHAR", name: "dqyxbz", length: "50", nullable: "True", comment: "当前有效标志", business_term: "当前有效标志";

MERGE (n:Field {name: "rycbgxlx"})
  ON CREATE SET data_type: "VARCHAR", name: "rycbgxlx", length: "100", nullable: "True", comment: "人员参保关系类型", business_term: "人员参保关系类型";

MERGE (n:Field {name: "jfrylb"})
  ON CREATE SET data_type: "CHAR", name: "jfrylb", length: "50", nullable: "True", comment: "缴费人员类别", business_term: "缴费人员类别";

MERGE (n:Field {name: "grcbrq"})
  ON CREATE SET data_type: "DATE", name: "grcbrq", nullable: "True", comment: "个人参保日期", business_term: "个人参保日期";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "1000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "16", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "1000", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "ah"})
  ON CREATE SET data_type: "VARCHAR", name: "ah", length: "1000", nullable: "True", comment: "案号", business_term: "案号";

MERGE (n:Field {name: "yzfs"})
  ON CREATE SET data_type: "VARCHAR", name: "yzfs", length: "1000", nullable: "True", comment: "援助方式", business_term: "援助方式";

MERGE (n:Field {name: "slsj"})
  ON CREATE SET data_type: "TIMESTAMP", name: "slsj", nullable: "True", comment: "受理时间", business_term: "受理时间";

MERGE (n:Field {name: "sjajmc"})
  ON CREATE SET data_type: "VARCHAR", name: "sjajmc", length: "1000", nullable: "True", comment: "涉及案件名称", business_term: "涉及案件名称";

MERGE (n:Field {name: "zdyy"})
  ON CREATE SET data_type: "VARCHAR", name: "zdyy", length: "1000", nullable: "True", comment: "指定原因", business_term: "指定原因";

MERGE (n:Field {name: "zdjg"})
  ON CREATE SET data_type: "VARCHAR", name: "zdjg", length: "1000", nullable: "True", comment: "指定机关", business_term: "指定机关";

MERGE (n:Field {name: "ajlb"})
  ON CREATE SET data_type: "VARCHAR", name: "ajlb", length: "1000", nullable: "True", comment: "案件类别", business_term: "案件类别";

MERGE (n:Field {name: "scrq"})
  ON CREATE SET data_type: "DATE", name: "scrq", nullable: "True", comment: "审查日期", business_term: "审查日期";

MERGE (n:Field {name: "ajcbr"})
  ON CREATE SET data_type: "VARCHAR", name: "ajcbr", length: "1000", nullable: "True", comment: "案件承办人", business_term: "案件承办人";

MERGE (n:Field {name: "ajcbdw"})
  ON CREATE SET data_type: "VARCHAR", name: "ajcbdw", length: "1000", nullable: "True", comment: "案件承办单位", business_term: "案件承办单位";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "200", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "200", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "xkwjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "xkwjlx", length: "100", nullable: "True", comment: "许可文件类型", business_term: "许可文件类型";

MERGE (n:Field {name: "xkbfjg"})
  ON CREATE SET data_type: "VARCHAR", name: "xkbfjg", length: "100", nullable: "True", comment: "许可颁发机关", business_term: "许可颁发机关";

MERGE (n:Field {name: "xkbfrq"})
  ON CREATE SET data_type: "DATE", name: "xkbfrq", nullable: "True", comment: "许可颁发日期", business_term: "许可颁发日期";

MERGE (n:Field {name: "xkzt"})
  ON CREATE SET data_type: "VARCHAR", name: "xkzt", length: "100", nullable: "True", comment: "许可状态", business_term: "许可状态";

MERGE (n:Field {name: "xkyxqz"})
  ON CREATE SET data_type: "DATE", name: "xkyxqz", nullable: "True", comment: "许可有效期自", business_term: "许可有效期自";

MERGE (n:Field {name: "xkyxqzh"})
  ON CREATE SET data_type: "DATE", name: "xkyxqzh", nullable: "True", comment: "许可有效期至", business_term: "许可有效期至";

MERGE (n:Field {name: "xknr"})
  ON CREATE SET data_type: "VARCHAR", name: "xknr", length: "4000", nullable: "True", comment: "许可内容", business_term: "许可内容";

MERGE (n:Field {name: "zrrwybs"})
  ON CREATE SET data_type: "VARCHAR", name: "zrrwybs", length: "3000", nullable: "True", comment: "自然人唯一标识", business_term: "自然人唯一标识";

MERGE (n:Field {name: "sfzjlx"})
  ON CREATE SET data_type: "CHAR", name: "sfzjlx", length: "50", nullable: "True", comment: "身份证件类型", business_term: "身份证件类型";

MERGE (n:Field {name: "sfzjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "sfzjhm", length: "3000", nullable: "True", comment: "身份证件号码", business_term: "身份证件号码";

MERGE (n:Field {name: "zfgjjzh"})
  ON CREATE SET data_type: "CHAR", name: "zfgjjzh", length: "50", nullable: "True", comment: "住房公积金账号", business_term: "住房公积金账号";

MERGE (n:Field {name: "zfgjjdwzh"})
  ON CREATE SET data_type: "CHAR", name: "zfgjjdwzh", length: "100", nullable: "True", comment: "住房公积金单位账号", business_term: "住房公积金单位账号";

MERGE (n:Field {name: "zfgjjjcjgh"})
  ON CREATE SET data_type: "CHAR", name: "zfgjjjcjgh", length: "500", nullable: "True", comment: "住房公积金缴存机构号", business_term: "住房公积金缴存机构号";

MERGE (n:Field {name: "zfgjjkhrq"})
  ON CREATE SET data_type: "DATE", name: "zfgjjkhrq", nullable: "True", comment: "住房公积金开户日期", business_term: "住房公积金开户日期";

MERGE (n:Field {name: "zfgjjzhzt"})
  ON CREATE SET data_type: "CHAR", name: "zfgjjzhzt", length: "50", nullable: "True", comment: "住房公积金账户状态", business_term: "住房公积金账户状态";

MERGE (n:Field {name: "zfgjjjcjs"})
  ON CREATE SET data_type: "NUMERIC", name: "zfgjjjcjs", nullable: "True", comment: "住房公积金缴存基数", business_term: "住房公积金缴存基数";

MERGE (n:Field {name: "id"})
  ON CREATE SET data_type: "BIGINT", name: "id", nullable: "True", comment: "自增主键";

MERGE (n:Field {name: "ryid"})
  ON CREATE SET data_type: "VARCHAR", name: "ryid", length: "64", nullable: "True", comment: "自然人口";

MERGE (n:Field {name: "swkbh"})
  ON CREATE SET data_type: "VARCHAR", name: "swkbh", length: "32", nullable: "True", comment: "死亡卡编号";

MERGE (n:Field {name: "hhzmbh"})
  ON CREATE SET data_type: "VARCHAR", name: "hhzmbh", length: "20", nullable: "True", comment: "火化证明编号";

MERGE (n:Field {name: "swyy_mz"})
  ON CREATE SET data_type: "VARCHAR", name: "swyy_mz", length: "8", nullable: "True", comment: "死亡原因(民政)";

MERGE (n:Field {name: "swrq_mz"})
  ON CREATE SET data_type: "VARCHAR", name: "swrq_mz", length: "8", nullable: "True", comment: "死亡日期(民政)";

MERGE (n:Field {name: "swrq_wj"})
  ON CREATE SET data_type: "VARCHAR", name: "swrq_wj", length: "8", nullable: "True", comment: "死亡日期(卫健)";

MERGE (n:Field {name: "swrq_yb"})
  ON CREATE SET data_type: "VARCHAR", name: "swrq_yb", length: "8", nullable: "True", comment: "死亡日期(医保)";

MERGE (n:Field {name: "ywrq_rs"})
  ON CREATE SET data_type: "VARCHAR", name: "ywrq_rs", length: "8", nullable: "True", comment: "业务日期（人社）";

MERGE (n:Field {name: "hhrq"})
  ON CREATE SET data_type: "VARCHAR", name: "hhrq", length: "8", nullable: "True", comment: "火化日期";

MERGE (n:Field {name: "jarg"})
  ON CREATE SET data_type: "VARCHAR", name: "jarg", length: "8", nullable: "True", comment: "结案日期";

MERGE (n:Field {name: "ah"})
  ON CREATE SET data_type: "VARCHAR", name: "ah", length: "50", nullable: "True", comment: "案号";

MERGE (n:Field {name: "dwmc_mz"})
  ON CREATE SET data_type: "VARCHAR", name: "dwmc_mz", length: "200", nullable: "True", comment: "单位名称(民政)";

MERGE (n:Field {name: "data_create_time"})
  ON CREATE SET data_type: "TIMESTAMP", name: "data_create_time", length: "14", nullable: "True", comment: "数据入库时间";

MERGE (n:Field {name: "data_update_time"})
  ON CREATE SET data_type: "TIMESTAMP", name: "data_update_time", length: "14", nullable: "True", comment: "数据变动时间";

MERGE (n:Field {name: "id"})
  ON CREATE SET data_type: "BIGINT", name: "id", nullable: "True", comment: "ID";

MERGE (n:Field {name: "ryid"})
  ON CREATE SET data_type: "VARCHAR", name: "ryid", length: "64", nullable: "True", comment: "自然人ID";

MERGE (n:Field {name: "zjhm"})
  ON CREATE SET data_type: "VARCHAR", name: "zjhm", length: "50", nullable: "True", comment: "身份证件号码";

MERGE (n:Field {name: "zjlx"})
  ON CREATE SET data_type: "VARCHAR", name: "zjlx", length: "12", nullable: "True", comment: "身份证件类型";

MERGE (n:Field {name: "xm_ga"})
  ON CREATE SET data_type: "VARCHAR", name: "xm_ga", length: "50", nullable: "True", comment: "姓名_公安";

MERGE (n:Field {name: "xm_mz"})
  ON CREATE SET data_type: "VARCHAR", name: "xm_mz", length: "50", nullable: "True", comment: "姓名_民政";

MERGE (n:Field {name: "xm_wj"})
  ON CREATE SET data_type: "VARCHAR", name: "xm_wj", length: "50", nullable: "True", comment: "姓名_卫健";

MERGE (n:Field {name: "xm_fy"})
  ON CREATE SET data_type: "VARCHAR", name: "xm_fy", length: "50", nullable: "True", comment: "姓名_法院";

MERGE (n:Field {name: "xm_rs"})
  ON CREATE SET data_type: "VARCHAR", name: "xm_rs", length: "50", nullable: "True", comment: "姓名_人社";

MERGE (n:Field {name: "xm_yb"})
  ON CREATE SET data_type: "VARCHAR", name: "xm_yb", length: "50", nullable: "True", comment: "姓名_医保";

MERGE (n:Field {name: "mz"})
  ON CREATE SET data_type: "VARCHAR", name: "mz", length: "2", nullable: "True", comment: "民族";

MERGE (n:Field {name: "xb"})
  ON CREATE SET data_type: "VARCHAR", name: "xb", length: "1", nullable: "True", comment: "性别";

MERGE (n:Field {name: "GJ"})
  ON CREATE SET data_type: "VARCHAR", name: "GJ", length: "3", nullable: "True", comment: "国籍";

MERGE (n:Field {name: "csrq"})
  ON CREATE SET data_type: "VARCHAR", name: "csrq", length: "8", nullable: "True", comment: "出生日期";

MERGE (n:Field {name: "fzcswbs"})
  ON CREATE SET data_type: "VARCHAR", name: "fzcswbs", length: "1", nullable: "True", comment: "非正常死亡标识";

MERGE (n:Field {name: "xgswbs"})
  ON CREATE SET data_type: "VARCHAR", name: "xgswbs", length: "1", nullable: "True", comment: "宣告死亡标识";

MERGE (n:Field {name: "sjly"})
  ON CREATE SET data_type: "VARCHAR", name: "sjly", length: "50", nullable: "True", comment: "数据来源";

MERGE (n:Field {name: "swcxbs"})
  ON CREATE SET data_type: "VARCHAR", name: "swcxbs", length: "1", nullable: "True", comment: "死亡撤销标识";

MERGE (n:Field {name: "cybs"})
  ON CREATE SET data_type: "VARCHAR", name: "cybs", length: "1", nullable: "True", comment: "存疑标识";

MERGE (n:Field {name: "data_create_time"})
  ON CREATE SET data_type: "TIMESTAMP", name: "data_create_time", length: "14", nullable: "True", comment: "数据入库时间";

:commit

:begin
// ===== RELATIONSHIPS =====
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "xfaqsjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "fkdjr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "swrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "swsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "swyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "swzmfzjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"}), (t:Field {name: "swzmqmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_gsrdxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "xm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "xb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "sshbw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "yrdw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "tyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "gsfssj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "gsrdsqrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "rdsqrygszggx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "gsrdrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "gsrdjl"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "rdyjlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "sssdzygz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "sglb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "shcd"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "zybmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsrdxx_new"}), (t:Field {name: "jczybwhys"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "sflrsxhmd"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "lrsxhmdrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "lrsxhmdsy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "tcsxhmdrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"}), (t:Field {name: "tcsxhmdyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jzxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "shjzlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "jzzbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "jzksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "jzlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "jzfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "jzyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "sfbdhj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "cjlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "cjdj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "jtbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "tdjzdxlbmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "dblx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "dbjtlqje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "dbjzyxzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "dbjzyxmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "jtzsr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jzxx_new"}), (t:Field {name: "zpyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jbxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbxx_new"}), (t:Field {name: "xxlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbxx_new"}), (t:Field {name: "gjzms"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbxx_new"}), (t:Field {name: "wtlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbxx_new"}), (t:Field {name: "jtwt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_sfzjxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfzjxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfzjxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfzjxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfzjxx_new"}), (t:Field {name: "sfzjyxq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfzjxx_new"}), (t:Field {name: "zjyxqqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_sltz_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "jkzk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "tz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "sg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "cjzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "cjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sltz_new"}), (t:Field {name: "cjdj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbxzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbjfqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbjfjzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbjfgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbjfjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"}), (t:Field {name: "sbjfyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xzcf_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfdxszzzjgtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfdxszzzjgdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfzl"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzwfxwlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfjdswh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfnr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfjd"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfyj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfjkbj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfnx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfjgbhxzcfjgbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzcfbmjb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "blxwdjrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcf_new"}), (t:Field {name: "xzwfxwfsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zcxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "xm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "zcmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "xcszyjsgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "xxzzw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zcxx_new"}), (t:Field {name: "pdsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_sfajxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfajah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfajahdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfajygr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfajay"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfajlarq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfajpjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "zxajbjrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "zxajjafs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "sfajbgr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "bgsfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "fymc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sfajxx_new"}), (t:Field {name: "ajlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_njxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_njxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_njxx_new"}), (t:Field {name: "njjjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_njxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_njxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_njxx_new"}), (t:Field {name: "njjsscrs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_njxx_new"}), (t:Field {name: "njlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_ycxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ycxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ycxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ycxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ycxx_new"}), (t:Field {name: "ycbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ycxx_new"}), (t:Field {name: "cjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ycxx_new"}), (t:Field {name: "cm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ycxx_new"}), (t:Field {name: "ycdjzsbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_ksxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "byrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "bylx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "byzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "dxbyscc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "ksh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "kmdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "kmmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "ksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ksxx_new"}), (t:Field {name: "kscj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_txxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "ltxzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "sqtxyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "txsszdwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "ltxzw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "ltxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "ltxzje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "ltxrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "cjgmgzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "fdltxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "ltxlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "dfltxlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "dfltxlbmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "dyxsksny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "shhglxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "yctxbs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "txtxbs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_txxx_new"}), (t:Field {name: "bcjtbs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_yilbxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "shbzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "cbdxzqhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "cbksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "sbcbzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "sbzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "zhjlny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "zjfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "ygxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "grjfzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "cbsf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "dfcbsfmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "dfcbsfmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "ldgxksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "ldgxzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "dqyxbz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "rycbgxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "jfrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxxx_new"}), (t:Field {name: "grcbrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_flyz_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "ah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "yzfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "slsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "sjajmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "zdyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "zdjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "ajlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "scrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "ajcbr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_flyz_new"}), (t:Field {name: "ajcbdw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xzxk_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "xkwjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "xkbfjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "xkbfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "xkzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "xkyxqz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "xkyxqzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzxk_new"}), (t:Field {name: "xknr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zfgjj_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "zfgjjzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "zfgjjdwzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "zfgjjjcjgh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "zfgjjkhrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "zfgjjzhzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjj_new"}), (t:Field {name: "zfgjjjcjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "swk"}), (t:PhysicalTable {name: "dwd_swk_swrykzxxb_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "id"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "ryid"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "swkbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "hhzmbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "swyy_mz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "swrq_mz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "swrq_wj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "swrq_yb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "ywrq_rs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "hhrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "jarg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "ah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "dwmc_mz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "data_create_time"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swrykzxxb_new"}), (t:Field {name: "data_update_time"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "swk"}), (t:PhysicalTable {name: "dwd_swk_swryjbxxb_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "id"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "ryid"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "zjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "zjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xm_ga"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xm_mz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xm_wj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xm_fy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xm_rs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xm_yb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "mz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "GJ"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "csrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "fzcswbs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "xgswbs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "sjly"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "swcxbs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "cybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_swk_swryjbxxb_new"}), (t:Field {name: "data_create_time"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:PhysicalTable {name: "dwd_zrr_xzcj_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:PhysicalTable {name: "dwd_zrr_xlzhxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:PhysicalTable {name: "dwd_zrr_hjxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "联系电话"}), (t:PhysicalTable {name: "dwd_zrr_lxdh_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:PhysicalTable {name: "dwd_zrr_fcxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:PhysicalTable {name: "dwd_zrr_sybxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "电子邮箱"}), (t:PhysicalTable {name: "dwd_zrr_dzyx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:PhysicalTable {name: "dwd_zrr_syxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:PhysicalTable {name: "dwd_zrr_zyjyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:PhysicalTable {name: "dwd_zrr_csxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:PhysicalTable {name: "dwd_zrr_jsxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "高等教育信息"}), (t:PhysicalTable {name: "dwd_zrr_gdjyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:PhysicalTable {name: "dwd_zrr_xifxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:PhysicalTable {name: "dwd_zrr_xzjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:PhysicalTable {name: "dwd_zrr_zynjxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:PhysicalTable {name: "dwd_zrr_ryxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:PhysicalTable {name: "dwd_zrr_cyzgxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "未履行生效裁判信息"}), (t:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "婚姻信息"}), (t:PhysicalTable {name: "dwd_zrr_hyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:PhysicalTable {name: "dwd_zrr_ymjzxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:PhysicalTable {name: "dwd_zrr_xzqz_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "丧葬补助金信息"}), (t:PhysicalTable {name: "dwd_zrr_szbzjxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "不动产权利信息表"}), (t:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "船舶信息表"}), (t:PhysicalTable {name: "dwd_zrr_cbxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:PhysicalTable {name: "dwd_zrr_qygxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:PhysicalTable {name: "dwd_zrr_shiybxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:PhysicalTable {name: "dwd_zrr_zccz_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:PhysicalTable {name: "dwd_zrr_xqjyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:PhysicalTable {name: "dwd_zrr_wjxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "邮政物流新"}), (t:PhysicalTable {name: "dwd_zrr_yzwl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:PhysicalTable {name: "dwd_zrr_lxdz_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:PhysicalTable {name: "dwd_zrr_nlzzxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "行政确认"}), (t:PhysicalTable {name: "dwd_zrr_xzqr_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:PhysicalTable {name: "dwd_zrr_jtcx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:PhysicalTable {name: "dwd_zrr_jyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:PhysicalTable {name: "dwd_zrr_zyzgxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:PhysicalTable {name: "dwd_zrr_hhxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:PhysicalTable {name: "dwd_zrr_swzxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:PhysicalTable {name: "dwd_zrr_qzzxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:PhysicalTable {name: "dwd_zrr_xzjf_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:PhysicalTable {name: "dwd_zrr_jbdjxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:PhysicalTable {name: "dwd_zrr_ylbxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "文体活动"}), (t:PhysicalTable {name: "dwd_zrr_wthd_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:PhysicalTable {name: "dwd_zrr_nsxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:PhysicalTable {name: "dwd_zrr_ywjyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "贷款信息"}), (t:PhysicalTable {name: "dwd_zrr_dkxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:PhysicalTable {name: "dwd_zrr_gzjyxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "宣告死亡信息"}), (t:PhysicalTable {name: "dwd_zrr_xgswxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:PhysicalTable {name: "dwd_zrr_gsbxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:PhysicalTable {name: "dwd_zrr_tsxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:PhysicalTable {name: "dwd_zrr_swyxzmxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:PhysicalTable {name: "dwd_zrr_gsrdxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:PhysicalTable {name: "dwd_zrr_sxhmdxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "救助信息"}), (t:PhysicalTable {name: "dwd_zrr_jzxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:PhysicalTable {name: "dwd_zrr_jbxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "身份证件信息"}), (t:PhysicalTable {name: "dwd_zrr_sfzjxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:PhysicalTable {name: "dwd_zrr_sltz_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:PhysicalTable {name: "dwd_zrr_ylbxjnjl_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:PhysicalTable {name: "dwd_zrr_xzcf_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:PhysicalTable {name: "dwd_zrr_zcxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:PhysicalTable {name: "dwd_zrr_sfajxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "农机信息"}), (t:PhysicalTable {name: "dwd_zrr_njxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "渔船信息"}), (t:PhysicalTable {name: "dwd_zrr_ycxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:PhysicalTable {name: "dwd_zrr_ksxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:PhysicalTable {name: "dwd_zrr_txxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:PhysicalTable {name: "dwd_zrr_yilbxxx_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:PhysicalTable {name: "dwd_zrr_flyz_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:PhysicalTable {name: "dwd_zrr_xzxk_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:PhysicalTable {name: "dwd_zrr_zfgjj_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "死亡人员扩展信息表"}), (t:PhysicalTable {name: "dwd_swk_swrykzxxb_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "死亡人员基本信息表"}), (t:PhysicalTable {name: "dwd_swk_swryjbxxb_new"})
CREATE (s)-[r:MAPS_TO]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "身份件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "身份件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "曾用名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "性别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "出生日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "民族"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "国籍"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "政治面貌"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "宗教信仰"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "基本登记信息"}), (t:DataElement {name: "兵役状况"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "身份证件信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "身份证件信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "身份证件信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "身份证件信息"}), (t:DataElement {name: "身份证件有效期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "身份证件信息"}), (t:DataElement {name: "证件有效期起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生医学证明编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "证照状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生医学证明父亲身份证号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生医学证明母亲身份证号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生医学证明签发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生医学证明签发机构"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生地行政区划详址"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "母亲姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "父亲姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生孕周"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生体重"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生身长"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "出生地行政区划代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "儿童个人标识号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "标识号类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "接生人员"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "医疗机构名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "新生儿姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "出生信息"}), (t:DataElement {name: "新生儿性别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "健康状况"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "体重"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "身高"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "残疾证号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "残疾类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生理体征"}), (t:DataElement {name: "残疾等级"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "死亡日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "死亡时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "死亡原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "死亡注销类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "死亡注销时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡注销信息"}), (t:DataElement {name: "死亡注销机构名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "死亡日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "死亡时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "死亡原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "死亡证明发证机关"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "死亡医学证明信息"}), (t:DataElement {name: "死亡证明编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死亡日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死亡时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死亡原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "火化证件编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "火化日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "火化所在殡仪馆"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死刑判决日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "结案日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "案号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死亡标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死亡注销类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死亡注销"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "火化信息"}), (t:DataElement {name: "死亡注销成时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "丧葬补助金信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "丧葬补助金信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "丧葬补助金信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "丧葬补助金信息"}), (t:DataElement {name: "丧葬补助金额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "丧葬补助金信息"}), (t:DataElement {name: "丧葬补助类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "籍贯"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户口类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍所在地"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍地省市县代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍地详址"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍地街路巷代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户主姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户主身份号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍签发单位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍签发时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍注销标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "户籍注销日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "男方自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "女方自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "结离婚证字号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "婚姻状况(男)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "婚姻状况(女)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "登记日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "男方姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "男方身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "男方身份身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "女方姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "女方身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "女方身份身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "出生日期(男)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "出生日期(女)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "身份类别(男)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "身份类别(女)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "国籍(男)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "国籍(女)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "民族(男)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "民族(女)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "印制号（男）"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "印制号（女）"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "离婚判决案号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "结案日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "户籍信息"}), (t:DataElement {name: "婚姻登记类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "被监护人身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "被监护人姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "监护人身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "监护人身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "监护人姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "监护关系"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "父亲身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "父亲身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "父亲姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "母亲身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "母亲身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "亲缘关系信息"}), (t:DataElement {name: "母亲姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "电子邮箱"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "电子邮箱"}), (t:DataElement {name: "邮箱账号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "电子邮箱"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "电子邮箱"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "地址编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "地址名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "省市区县"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "乡镇或街道名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系地址"}), (t:DataElement {name: "行政村或社区"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系电话"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系电话"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系电话"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "联系电话"}), (t:DataElement {name: "电话号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "农机信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "农机信息"}), (t:DataElement {name: "农机机架号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "农机信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "农机信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "农机信息"}), (t:DataElement {name: "农机驾驶室乘人数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "农机信息"}), (t:DataElement {name: "农机类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "车辆识别代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "车辆国产或进口"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "车辆中文品牌"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "车辆型号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "车辆类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车信息"}), (t:DataElement {name: "行驶证有效期至"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "抵押物"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "抵押状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "抵押期限起"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "抵押期限止"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "资产处置"}), (t:DataElement {name: "抵押权注销登记时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "房屋地址"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "房屋性质"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "房屋建筑面积"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "房屋使用面积"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "房屋名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "房屋房号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "房产信息"}), (t:DataElement {name: "购房合同签订日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "贷款信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "贷款信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "贷款信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "贷款信息"}), (t:DataElement {name: "开户银行"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "贷款信息"}), (t:DataElement {name: "发放金额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "贷款信息"}), (t:DataElement {name: "贷款类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "出发时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "到达时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "始发站名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "始发站代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "到达站名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "到达站代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "线路名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "交通出行"}), (t:DataElement {name: "购票时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "邮政物流新"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "邮政物流新"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "邮政物流新"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "邮政物流新"}), (t:DataElement {name: "寄件人姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "医疗机构名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "孕产妇健康档案编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "产妇住院病案号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "建档时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "本次是否属于高危妊娠"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "妊娠合并症/并发症史"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "妊娠风险评估分级代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "孕次（次）"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "产次（次）"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "胎数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "计生信息"}), (t:DataElement {name: "胎次"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "疫苗编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "接种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "疫苗序号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "生产企业"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "接种日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "接种部位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "接种医生"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "接种机构编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "疫苗接种信息"}), (t:DataElement {name: "费用标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "医疗机构代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "是否复诊"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "患者姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "患者属性"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "是否急诊"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "就诊性质"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "就诊科室代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "就诊科室名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "门诊就诊日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "接诊时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "完成就诊时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "主诊医生编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "主诊医生姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "门诊诊断代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "门诊诊断名称（主要诊断）"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "门诊诊断说明"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "主诉"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "门诊症状-名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "门诊症状-诊断代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "留观观察"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "症状描述"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "发病日期时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "收缩压(mmhg)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "舒张压(mmhg)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "体温(℃)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "症状持续时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "门（急）诊号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "门诊与住院信息"}), (t:DataElement {name: "就诊流水号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "入学日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "毕业日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学前教育信息"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "学号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "年级名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "义务教育信息"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "学号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "年级名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "高中教育信息"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "学号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "入学日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "毕业日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "所学专业"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "学制"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "年级名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业教育信息"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "毕业日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "毕业类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "毕业证号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "大学毕业生层次"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "考生号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "科目代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "科目名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "考试日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "考试信息"}), (t:DataElement {name: "考试成绩"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学历名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学历专业"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学历授予单位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学历授予日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学位类别码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学位授予单位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "学历综合信息"}), (t:DataElement {name: "学位授予日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "从业状况"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "参加工作时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "从事当前专业起始年份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "职业类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "职业名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "加入党派时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "工作单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "工作单位主体类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "工作单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "所在工作单位部门名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "工作单位通信地址"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "工作单位传真"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "工作单位电话号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "劳动合同起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "劳动合同终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "入职日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "离职日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "岗位类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "就业信息"}), (t:DataElement {name: "现任岗位时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "登记失业日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "失业原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "就业困难类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "就业创业证编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业信息"}), (t:DataElement {name: "就业创业证发证机构"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "性别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "受伤害部位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "用人单位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "工伤发生时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "工伤认定申请日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "认定申请人与工伤职工关系"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "工伤认定日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "工伤认定结论"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "认定依据类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "受伤时的职业工种"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "事故类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "伤害程度"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "职业病名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤认定信息表"}), (t:DataElement {name: "接触职业病危害月数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "纳税人识别号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "税种"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "自然人纳税所得项目"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "收入额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "纳税税款所属时期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "税款所属期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "应纳税所得额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "应纳税率"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "缴税金额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "实缴税额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "缴纳时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "征税机构名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "个人所得税所得年份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "个税征收机关"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "纳税信息"}), (t:DataElement {name: "个税缴纳凭证号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "住房公积金账号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "住房公积金单位账号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "住房公积金缴存机构号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "住房公积金开户日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "住房公积金账户状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金"}), (t:DataElement {name: "住房公积金缴存基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "个人账号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "单位账号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "缴存机构号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "缴存基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "个人缴存金额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "单位缴存金额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "缴存比例"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "个人账户余额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "个人账户状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "汇缴月份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "住房公积金缴纳记录"}), (t:DataElement {name: "缴存时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "离退休证号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "申请退休原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "退休时所在单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "离退休职务"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "离退休日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "离退休金总额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "离退休人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "参加革命工作日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "法定离退休日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "离退休类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "地方离退休类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "地方离退休类别名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "待遇享受开始年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "社会化管理形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "延迟退休标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "弹性退休标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "退休信息"}), (t:DataElement {name: "病残津贴标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老保险信息"}), (t:DataElement {name: "险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "养老社保缴纳记录"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险信息"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "医疗保险缴纳记录"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险信息"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "工伤保险缴纳记录"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金信息"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业年金缴纳记录"}), (t:DataElement {name: "社保缴费月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险信息"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失业保险缴纳记录"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "参保地行政区划代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险信息"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "生育保险缴纳记录"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障信息"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职业伤害保障缴纳记录"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "文体活动"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "文体活动"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "文体活动"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "文体活动"}), (t:DataElement {name: "活动名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "文体活动"}), (t:DataElement {name: "志愿者活动总时长"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证书编号-弃用"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "资质等级"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件有效期起"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件有效期止"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件签发机关名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "发证机关-弃用"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件签发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "备案机构代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "备案机构名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "是否生成新的证书号-0.是1.否"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "批次号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "从业范围"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "区划代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件签名值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件条码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件签名公钥值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件签名hash值"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件签发机关代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件初次签发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件注销日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件注销原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "能力资质信息"}), (t:DataElement {name: "证件时间戳"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "手机号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "准驾车型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "办理地址"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "初次领证日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "有效期始"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "机动车驾驶证基本信息"}), (t:DataElement {name: "有效期止"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "职称名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "现从事专业技术工作"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "现行政职务"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "职称信息"}), (t:DataElement {name: "评定时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "许可文件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "许可颁发机关"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "许可颁发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "许可状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "许可有效期自"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "许可有效期至"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政许可"}), (t:DataElement {name: "许可内容"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件签发机关名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "从业资格证件签发机关代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件有效期起"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件有效期止"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件签发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "从业资格证件初次签发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "从业资格信息"}), (t:DataElement {name: "证件注销原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件签发机关名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件签发机关代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件有效期起"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件有效期止"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件签发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "行政执法所属地区"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件初次签发日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件注销日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件注销原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "行政区划"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "技术职称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "性别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "民族"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "工作科室"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "国籍"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "主要执业机构"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "执业范围"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件所在地区"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "证件有效期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "执业级别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "任职资格"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "政治面貌"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "手机号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "执业资格信息"}), (t:DataElement {name: "执业单位联系电话"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "认证与荣誉名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "有效期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "荣誉名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "审核状态"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "荣誉级别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "级别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "证书类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "荣誉认定日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "荣誉奖励对象"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "证书编号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "荣誉证书有效期自"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "荣誉证书有效期至"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "荣誉信息"}), (t:DataElement {name: "荣誉颁发机构名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "行政奖励决定文号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "行政奖励名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "行政奖励决定内容"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "行政奖励日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "行政奖励部门"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "授奖等级"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "项目名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "年度"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "开始时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "结束时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政奖励"}), (t:DataElement {name: "奖励类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚对象所在组织机构统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚对象所在组织机构代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚种类"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政违法行为类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚决定书文号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚内容"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚决定"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚依据"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚交款标记"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚年限"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚机关"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚机构编号(行政处罚机关编号)"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚部门级别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "不良行为登记日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政违法行为发生日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚金额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚是否信息公开"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚公开时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政处罚"}), (t:DataElement {name: "行政处罚公开结束时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "行政强制申请日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "行政强制对象所在组织机构统一社会信用代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "行政强制执行文号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "行政强制分类"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "临时查封时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "查封信息行政区编码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "行政强制执行时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "行政强制相对人分类"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "解除临时查封时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政强制"}), (t:DataElement {name: "行政强制解封日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政确认"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政确认"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政确认"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政确认"}), (t:DataElement {name: "行政确认类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政确认"}), (t:DataElement {name: "行政确认文书号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政确认"}), (t:DataElement {name: "行政确认日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:DataElement {name: "行政给付事项"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:DataElement {name: "行政给付审核结果"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:DataElement {name: "行政给付费用"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政给付"}), (t:DataElement {name: "行政给付日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:DataElement {name: "行政裁决被申请人"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:DataElement {name: "行政裁决申请事项"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:DataElement {name: "行政裁决实施机关"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "行政裁决"}), (t:DataElement {name: "行政裁决日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "是否列入失信黑名单"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "列入失信黑名单日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "列入失信黑名单事由"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "退出失信黑名单日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信黑名单信息"}), (t:DataElement {name: "退出失信黑名单原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "司法案件案号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "司法案件案号代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "司法案件原告人"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "司法案件案由"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "司法案件立案日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "司法案件判决结果"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "执行案件报结日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "执行案件结案方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "司法案件被告人"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "被告身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "法院名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "司法案件信息"}), (t:DataElement {name: "案件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "失信行为"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "失信被执行依据文号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "失信被执行认定日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "失信被执行立案日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "失信被执行履行情况"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "列入事由/情形（中文名称）"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "处罚执行金额/处罚金额"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "失信被执行信息"}), (t:DataElement {name: "执行依据"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "强制执行申请执行人"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "强制执行法院代码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "强制执行法院名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "强制执行依据文书号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "强制执行立案时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "做出强制执行依据单位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "被强制执行人的履行情况"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "强制执行信息"}), (t:DataElement {name: "强制执行发布时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "案号"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "援助方式"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "受理时间"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "涉及案件名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "指定原因"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "指定机关"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "案件类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "审查日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "案件承办人"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "法律援助"}), (t:DataElement {name: "案件承办单位"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:DataElement {name: "违纪类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:DataElement {name: "违纪内容"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:DataElement {name: "违纪人所在机构名称"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "违纪信息"}), (t:DataElement {name: "违纪处理意见"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:DataElement {name: "信息类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:DataElement {name: "关键字描述"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:DataElement {name: "问题类别"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "举报信息"}), (t:DataElement {name: "具体问题"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "上访人身份证明"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "信访日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "信访事件"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "信访事由"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "信访部门"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "维权内容"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "信访信息"}), (t:DataElement {name: "维权日期"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "自然人唯一标"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "投诉人"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "投诉内容"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "投诉电话"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "受理申诉举报类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "办理部门"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "协助单位类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "消费安全事件类型"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:LogicalEntity {name: "投诉信息"}), (t:DataElement {name: "反馈登记人"})
CREATE (s)-[r:HAS_DATA_ELEMENT]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xm"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cym"}), (t:DataElement {name: "曾用名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xb"}), (t:DataElement {name: "性别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csrq"}), (t:DataElement {name: "出生日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mz"}), (t:DataElement {name: "民族"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gj"}), (t:DataElement {name: "国籍"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzmm"}), (t:DataElement {name: "政治面貌"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjxy"}), (t:DataElement {name: "宗教信仰"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "byzk"}), (t:DataElement {name: "兵役状况"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjyxq"}), (t:DataElement {name: "身份证件有效期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjyxqqsrq"}), (t:DataElement {name: "证件有效期起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csyxzmbh"}), (t:DataElement {name: "出生医学证明编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "p_flag"}), (t:DataElement {name: "证照状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csyxzmfqsfzh"}), (t:DataElement {name: "出生医学证明父亲身份证号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csyxzmmqsfzh"}), (t:DataElement {name: "出生医学证明母亲身份证号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csyxzmqfrq"}), (t:DataElement {name: "出生医学证明签发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csyxzmqfjg"}), (t:DataElement {name: "出生医学证明签发机构"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mq_xm"}), (t:DataElement {name: "母亲姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fq_xm"}), (t:DataElement {name: "父亲姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cssj"}), (t:DataElement {name: "出生时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csyz"}), (t:DataElement {name: "出生孕周"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cstz"}), (t:DataElement {name: "出生体重"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cssz"}), (t:DataElement {name: "出生身长"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csd_qhdm"}), (t:DataElement {name: "出生地行政区划代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "etgrbsh"}), (t:DataElement {name: "儿童个人标识号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bshlb"}), (t:DataElement {name: "标识号类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jsry"}), (t:DataElement {name: "接生人员"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zcjgmc"}), (t:DataElement {name: "医疗机构名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xsexm"}), (t:DataElement {name: "新生儿姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xsexb"}), (t:DataElement {name: "新生儿性别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jkzk"}), (t:DataElement {name: "健康状况"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tz"}), (t:DataElement {name: "体重"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sg"}), (t:DataElement {name: "身高"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cjzh"}), (t:DataElement {name: "残疾证号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cjlx"}), (t:DataElement {name: "残疾类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cjdj"}), (t:DataElement {name: "残疾等级"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swrq"}), (t:DataElement {name: "死亡日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swsj"}), (t:DataElement {name: "死亡时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swyy"}), (t:DataElement {name: "死亡原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swzxlx"}), (t:DataElement {name: "死亡注销类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swzxsj"}), (t:DataElement {name: "死亡注销时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swzxjgmc"}), (t:DataElement {name: "死亡注销机构名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swrq"}), (t:DataElement {name: "死亡日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swsj"}), (t:DataElement {name: "死亡时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swyy"}), (t:DataElement {name: "死亡原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swzmfzjg"}), (t:DataElement {name: "死亡证明发证机关"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swzmqmz"}), (t:DataElement {name: "死亡证明编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swrq"}), (t:DataElement {name: "死亡日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swsj"}), (t:DataElement {name: "死亡时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "swyy"}), (t:DataElement {name: "死亡原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hhzjbh"}), (t:DataElement {name: "火化证件编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hhrq"}), (t:DataElement {name: "火化日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hhszbyg"}), (t:DataElement {name: "火化所在殡仪馆"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "szbzje"}), (t:DataElement {name: "丧葬补助金额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "szbzlx"}), (t:DataElement {name: "丧葬补助类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jg"}), (t:DataElement {name: "籍贯"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hklb"}), (t:DataElement {name: "户口类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjszd"}), (t:DataElement {name: "户籍所在地"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjdssxdm"}), (t:DataElement {name: "户籍地省市县代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjdxz"}), (t:DataElement {name: "户籍地详址"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjdjlxdm"}), (t:DataElement {name: "户籍地街路巷代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hzxm"}), (t:DataElement {name: "户主姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hzsfhm"}), (t:DataElement {name: "户主身份号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjqfdw"}), (t:DataElement {name: "户籍签发单位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjqfsj"}), (t:DataElement {name: "户籍签发时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjzxbs"}), (t:DataElement {name: "户籍注销标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjzxrq"}), (t:DataElement {name: "户籍注销日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "被监护人身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bjhrxm"}), (t:DataElement {name: "被监护人姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jhrsfzjlx"}), (t:DataElement {name: "监护人身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jhrsfzjhm"}), (t:DataElement {name: "监护人身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jhrxm"}), (t:DataElement {name: "监护人姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jhgx"}), (t:DataElement {name: "监护关系"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fqsfzjlx"}), (t:DataElement {name: "父亲身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fqsfzjhm"}), (t:DataElement {name: "父亲身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fqxm"}), (t:DataElement {name: "父亲姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mqsfzjlx"}), (t:DataElement {name: "母亲身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mqsfzjhm"}), (t:DataElement {name: "母亲身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mqxm"}), (t:DataElement {name: "母亲姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yxzh"}), (t:DataElement {name: "邮箱账号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dzbm"}), (t:DataElement {name: "地址编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dzmc"}), (t:DataElement {name: "地址名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ssqx"}), (t:DataElement {name: "省市区县"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzhjdmc"}), (t:DataElement {name: "乡镇或街道名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzchsq"}), (t:DataElement {name: "行政村或社区"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dhhm"}), (t:DataElement {name: "电话号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "njjjhm"}), (t:DataElement {name: "农机机架号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "njjsscrs"}), (t:DataElement {name: "农机驾驶室乘人数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "njlx"}), (t:DataElement {name: "农机类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dyw"}), (t:DataElement {name: "抵押物"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dyzt"}), (t:DataElement {name: "抵押状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dyqxq"}), (t:DataElement {name: "抵押期限起"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dyqxz"}), (t:DataElement {name: "抵押期限止"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dyqzxdjsj"}), (t:DataElement {name: "抵押权注销登记时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fwdz"}), (t:DataElement {name: "房屋地址"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fwxz"}), (t:DataElement {name: "房屋性质"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fwjzmj"}), (t:DataElement {name: "房屋建筑面积"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fwsymj"}), (t:DataElement {name: "房屋使用面积"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fwmc"}), (t:DataElement {name: "房屋名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fwfh"}), (t:DataElement {name: "房屋房号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gfhtqdrq"}), (t:DataElement {name: "购房合同签订日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "khyh"}), (t:DataElement {name: "开户银行"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ffje"}), (t:DataElement {name: "发放金额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dklx"}), (t:DataElement {name: "贷款类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cfsj"}), (t:DataElement {name: "出发时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ddsj"}), (t:DataElement {name: "到达时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzmc"}), (t:DataElement {name: "始发站名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzdm"}), (t:DataElement {name: "始发站代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ddzmc"}), (t:DataElement {name: "到达站名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ddzdm"}), (t:DataElement {name: "到达站代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xlmc"}), (t:DataElement {name: "线路名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gpsj"}), (t:DataElement {name: "购票时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jjrxm"}), (t:DataElement {name: "寄件人姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yljgmc"}), (t:DataElement {name: "医疗机构名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cfjkdah"}), (t:DataElement {name: "孕产妇健康档案编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cfzybah"}), (t:DataElement {name: "产妇住院病案号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jdsj"}), (t:DataElement {name: "建档时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gwrs"}), (t:DataElement {name: "本次是否属于高危妊娠"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rsbfz"}), (t:DataElement {name: "妊娠合并症/并发症史"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rsfxdm"}), (t:DataElement {name: "妊娠风险评估分级代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cfyc"}), (t:DataElement {name: "孕次（次）"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cfcc"}), (t:DataElement {name: "产次（次）"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cfts"}), (t:DataElement {name: "胎数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cftc"}), (t:DataElement {name: "胎次"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ymbm"}), (t:DataElement {name: "疫苗编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzlx"}), (t:DataElement {name: "接种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ymxh"}), (t:DataElement {name: "疫苗序号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "scqy"}), (t:DataElement {name: "生产企业"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzrq"}), (t:DataElement {name: "接种日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzbw"}), (t:DataElement {name: "接种部位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzys"}), (t:DataElement {name: "接种医生"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzjgbm"}), (t:DataElement {name: "接种机构编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fybz"}), (t:DataElement {name: "费用标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yljgdm"}), (t:DataElement {name: "医疗机构代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sffz"}), (t:DataElement {name: "是否复诊"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hzxm"}), (t:DataElement {name: "患者姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hzsx"}), (t:DataElement {name: "患者属性"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfjz"}), (t:DataElement {name: "是否急诊"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzxz"}), (t:DataElement {name: "就诊性质"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzksbm"}), (t:DataElement {name: "就诊科室代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzksmc"}), (t:DataElement {name: "就诊科室名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzksrq"}), (t:DataElement {name: "门诊就诊日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzsj"}), (t:DataElement {name: "接诊时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wcjzsj"}), (t:DataElement {name: "完成就诊时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzysbh"}), (t:DataElement {name: "主诊医生编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzysxm"}), (t:DataElement {name: "主诊医生姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mzzddm"}), (t:DataElement {name: "门诊诊断代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mzzdmc"}), (t:DataElement {name: "门诊诊断名称（主要诊断）"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzzdsm"}), (t:DataElement {name: "门诊诊断说明"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zs"}), (t:DataElement {name: "主诉"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mzzzmc"}), (t:DataElement {name: "门诊症状-名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mzzzzddm"}), (t:DataElement {name: "门诊症状-诊断代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "lggc"}), (t:DataElement {name: "留观观察"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzms"}), (t:DataElement {name: "症状描述"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fbrqsj"}), (t:DataElement {name: "发病日期时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tw"}), (t:DataElement {name: "体温(℃)"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzcxsj"}), (t:DataElement {name: "症状持续时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mjzh"}), (t:DataElement {name: "门（急）诊号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jzlsh"}), (t:DataElement {name: "就诊流水号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxwybs"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxmc"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rxrq"}), (t:DataElement {name: "入学日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "byrq"}), (t:DataElement {name: "毕业日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bjmc"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxwybs"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xh"}), (t:DataElement {name: "学号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "njmc"}), (t:DataElement {name: "年级名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bjmc"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxmc"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxwys"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xh"}), (t:DataElement {name: "学号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "njmc"}), (t:DataElement {name: "年级名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bjmc"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxmc"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxwys"}), (t:DataElement {name: "学校唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xh"}), (t:DataElement {name: "学号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rxrq"}), (t:DataElement {name: "入学日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "byrq"}), (t:DataElement {name: "毕业日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sxzy"}), (t:DataElement {name: "所学专业"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xz"}), (t:DataElement {name: "学制"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "njmc"}), (t:DataElement {name: "年级名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bjmc"}), (t:DataElement {name: "班级名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxmc"}), (t:DataElement {name: "学校名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "byrq"}), (t:DataElement {name: "毕业日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bylx"}), (t:DataElement {name: "毕业类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "byzhm"}), (t:DataElement {name: "毕业证号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dxbyscc"}), (t:DataElement {name: "大学毕业生层次"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ksh"}), (t:DataElement {name: "考生号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "kmdm"}), (t:DataElement {name: "科目代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "kmmc"}), (t:DataElement {name: "科目名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ksrq"}), (t:DataElement {name: "考试日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "kscj"}), (t:DataElement {name: "考试成绩"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xlmc"}), (t:DataElement {name: "学历名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xlzy"}), (t:DataElement {name: "学历专业"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xlsydw"}), (t:DataElement {name: "学历授予单位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xlsyrq"}), (t:DataElement {name: "学历授予日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xwlbm"}), (t:DataElement {name: "学位类别码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xwmc"}), (t:DataElement {name: "学位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xwsydw"}), (t:DataElement {name: "学位授予单位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xwsyrq"}), (t:DataElement {name: "学位授予日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cyzk"}), (t:DataElement {name: "从业状况"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cjgzsj"}), (t:DataElement {name: "参加工作时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "csdqzyqsnf"}), (t:DataElement {name: "从事当前专业起始年份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zylb"}), (t:DataElement {name: "职业类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zymc"}), (t:DataElement {name: "职业名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jrdpsj"}), (t:DataElement {name: "加入党派时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gzdwmc"}), (t:DataElement {name: "工作单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gzdwztlx"}), (t:DataElement {name: "工作单位主体类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gzdwtyshxydm"}), (t:DataElement {name: "工作单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gzdwtxdz"}), (t:DataElement {name: "工作单位通信地址"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gzdwcz"}), (t:DataElement {name: "工作单位传真"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gzdwdhhm"}), (t:DataElement {name: "工作单位电话号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldhtqsrq"}), (t:DataElement {name: "劳动合同起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldhtzzrq"}), (t:DataElement {name: "劳动合同终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rzrq"}), (t:DataElement {name: "入职日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "lzrq"}), (t:DataElement {name: "离职日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gwlb"}), (t:DataElement {name: "岗位类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xrgwsj"}), (t:DataElement {name: "现任岗位时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "djsyrq"}), (t:DataElement {name: "登记失业日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "syyy"}), (t:DataElement {name: "失业原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jyknlb"}), (t:DataElement {name: "就业困难类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jycyzbh"}), (t:DataElement {name: "就业创业证编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jycyzfzjg"}), (t:DataElement {name: "就业创业证发证机构"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xm"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xb"}), (t:DataElement {name: "性别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sshbw"}), (t:DataElement {name: "受伤害部位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yrdw"}), (t:DataElement {name: "用人单位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tyshxydm"}), (t:DataElement {name: "统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gsfssj"}), (t:DataElement {name: "工伤发生时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gsrdsqrq"}), (t:DataElement {name: "工伤认定申请日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rdsqrygszggx"}), (t:DataElement {name: "认定申请人与工伤职工关系"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gsrdrq"}), (t:DataElement {name: "工伤认定日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gsrdjl"}), (t:DataElement {name: "工伤认定结论"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rdyjlb"}), (t:DataElement {name: "认定依据类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sssdzygz"}), (t:DataElement {name: "受伤时的职业工种"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sglb"}), (t:DataElement {name: "事故类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shcd"}), (t:DataElement {name: "伤害程度"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zybmc"}), (t:DataElement {name: "职业病名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jczybwhys"}), (t:DataElement {name: "接触职业病危害月数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "nsrsbh"}), (t:DataElement {name: "纳税人识别号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sz"}), (t:DataElement {name: "税种"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrnsdxm"}), (t:DataElement {name: "自然人纳税所得项目"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sre"}), (t:DataElement {name: "收入额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "nssksssq"}), (t:DataElement {name: "纳税税款所属时期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "skssq"}), (t:DataElement {name: "税款所属期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ynssde"}), (t:DataElement {name: "应纳税所得额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ynsl"}), (t:DataElement {name: "应纳税率"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jsje"}), (t:DataElement {name: "缴税金额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sjse"}), (t:DataElement {name: "实缴税额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jnsj"}), (t:DataElement {name: "缴纳时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zsjgmc"}), (t:DataElement {name: "征税机构名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grsdssdnf"}), (t:DataElement {name: "个人所得税所得年份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gszsjg"}), (t:DataElement {name: "个税征收机关"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gsjnpzhm"}), (t:DataElement {name: "个税缴纳凭证号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zfgjjzh"}), (t:DataElement {name: "住房公积金账号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zfgjjdwzh"}), (t:DataElement {name: "住房公积金单位账号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zfgjjjcjgh"}), (t:DataElement {name: "住房公积金缴存机构号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zfgjjkhrq"}), (t:DataElement {name: "住房公积金开户日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zfgjjzhzt"}), (t:DataElement {name: "住房公积金账户状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zfgjjjcjs"}), (t:DataElement {name: "住房公积金缴存基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grzh"}), (t:DataElement {name: "个人账号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwzh"}), (t:DataElement {name: "单位账号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jcjgh"}), (t:DataElement {name: "缴存机构号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jcjs"}), (t:DataElement {name: "缴存基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjcje"}), (t:DataElement {name: "个人缴存金额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwjcje"}), (t:DataElement {name: "单位缴存金额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jcbl"}), (t:DataElement {name: "缴存比例"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grzhye"}), (t:DataElement {name: "个人账户余额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grzhzt"}), (t:DataElement {name: "个人账户状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hjyf"}), (t:DataElement {name: "汇缴月份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jcsj"}), (t:DataElement {name: "缴存时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ltxzh"}), (t:DataElement {name: "离退休证号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sqtxyy"}), (t:DataElement {name: "申请退休原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "txsszdwmc"}), (t:DataElement {name: "退休时所在单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ltxzw"}), (t:DataElement {name: "离退休职务"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ltxrq"}), (t:DataElement {name: "离退休日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ltxzje"}), (t:DataElement {name: "离退休金总额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ltxrylb"}), (t:DataElement {name: "离退休人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cjgmgzrq"}), (t:DataElement {name: "参加革命工作日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fdltxrq"}), (t:DataElement {name: "法定离退休日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ltxlb"}), (t:DataElement {name: "离退休类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfltxlb"}), (t:DataElement {name: "地方离退休类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfltxlbmc"}), (t:DataElement {name: "地方离退休类别名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dyxsksny"}), (t:DataElement {name: "待遇享受开始年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shhglxs"}), (t:DataElement {name: "社会化管理形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yctxbs"}), (t:DataElement {name: "延迟退休标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "txtxbs"}), (t:DataElement {name: "弹性退休标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bcjtbs"}), (t:DataElement {name: "病残津贴标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shbzhm"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbdxzqhdm"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbksrq"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bcjfksny"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbcbzt"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbzzrq"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zhjlny"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjfs"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ygxs"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjfzt"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbsf"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmz"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmc"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxksrq"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxzzrq"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dqyxbz"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rycbgxlx"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jfrylb"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grcbrq"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzlx"}), (t:DataElement {name: "险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbbm"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbxzlx"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfrq"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfqsrq"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjzrq"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfgz"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjs"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfyf"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shbzhm"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbdxzqhdm"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbksrq"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbcbzt"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbzzrq"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zhjlny"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjfs"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ygxs"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjfzt"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbsf"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmz"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmc"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxksrq"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxzzrq"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dqyxbz"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rycbgxlx"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jfrylb"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grcbrq"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbbm"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbxzlx"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfrq"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfgz"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjs"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfyf"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shbzhm"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbdxzqhdm"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbksrq"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bcjfksny"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbcbzt"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbzzrq"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zhjlny"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjfs"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ygxs"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjfzt"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbsf"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmz"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmc"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxksrq"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxzzrq"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dqyxbz"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rycbgxlx"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jfrylb"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grcbrq"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbbm"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbxzlx"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfrq"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfqsrq"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjzrq"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfgz"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjs"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfyf"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shbzhm"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbdxzqhdm"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbksrq"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bcjfksny"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbcbzt"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbzzrq"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zhjlny"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjfs"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ygxs"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjfzt"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbsf"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmz"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmc"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxksrq"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxzzrq"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dqyxbz"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rycbgxlx"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jfrylb"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grcbrq"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbbm"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbxzlx"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfrq"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfqsrq"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjzrq"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfgz"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjs"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shbzhm"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbdxzqhdm"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbksrq"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bcjfksny"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbcbzt"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbzzrq"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zhjlny"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjfs"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ygxs"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjfzt"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbsf"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmz"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmc"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxksrq"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxzzrq"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dqyxbz"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rycbgxlx"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jfrylb"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grcbrq"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbbm"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbxzlx"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfrq"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfqsrq"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjzrq"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfgz"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjs"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfyf"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shbzhm"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbdxzqhdm"}), (t:DataElement {name: "参保地行政区划代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbksrq"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbcbzt"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbzzrq"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zhjlny"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjfs"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ygxs"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjfzt"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbsf"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmz"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmc"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxksrq"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxzzrq"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dqyxbz"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rycbgxlx"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jfrylb"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grcbrq"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbbm"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbxzlx"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfrq"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfqsrq"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjzrq"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfgz"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjs"}), (t:DataElement {name: "社保缴费基数"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfyf"}), (t:DataElement {name: "社保缴费月份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shbzhm"}), (t:DataElement {name: "社会保障号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbdxzqhdm"}), (t:DataElement {name: "参保所属地"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbksrq"}), (t:DataElement {name: "参保开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bcjfksny"}), (t:DataElement {name: "本次缴费开始年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbcbzt"}), (t:DataElement {name: "社保参保状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbzzrq"}), (t:DataElement {name: "社保终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zhjlny"}), (t:DataElement {name: "账户建立年月"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjfs"}), (t:DataElement {name: "征缴方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ygxs"}), (t:DataElement {name: "用工形式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grjfzt"}), (t:DataElement {name: "个人缴费状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cbsf"}), (t:DataElement {name: "参保身份"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmz"}), (t:DataElement {name: "地方参保身份码值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dfcbsfmc"}), (t:DataElement {name: "地方参保身份名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxksrq"}), (t:DataElement {name: "劳动关系开始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ldgxzzrq"}), (t:DataElement {name: "劳动关系终止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dqyxbz"}), (t:DataElement {name: "当前有效标志"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rycbgxlx"}), (t:DataElement {name: "人员参保关系类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jfrylb"}), (t:DataElement {name: "缴费人员类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "grcbrq"}), (t:DataElement {name: "个人参保日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbbm"}), (t:DataElement {name: "社保编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbxzlx"}), (t:DataElement {name: "社保险种类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwtyshxydm"}), (t:DataElement {name: "单位统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfrq"}), (t:DataElement {name: "社保缴费日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfqsrq"}), (t:DataElement {name: "社保缴费起始日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfjzrq"}), (t:DataElement {name: "社保缴费截止日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbjfgz"}), (t:DataElement {name: "社保缴费工资"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "hdmc"}), (t:DataElement {name: "活动名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzhdzsc"}), (t:DataElement {name: "志愿者活动总时长"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zsbh"}), (t:DataElement {name: "证书编号-弃用"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzdj"}), (t:DataElement {name: "资质等级"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjyxqq"}), (t:DataElement {name: "证件有效期起"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjyxqz"}), (t:DataElement {name: "证件有效期止"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqfjgmc"}), (t:DataElement {name: "证件签发机关名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fzjg"}), (t:DataElement {name: "发证机关-弃用"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqfrq"}), (t:DataElement {name: "证件签发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjbh"}), (t:DataElement {name: "证件编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bajgdm"}), (t:DataElement {name: "备案机构代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bajgmc"}), (t:DataElement {name: "备案机构名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zt"}), (t:DataElement {name: "状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cd_batch"}), (t:DataElement {name: "批次号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cyfw"}), (t:DataElement {name: "从业范围"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjmc"}), (t:DataElement {name: "证件名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "qhdm"}), (t:DataElement {name: "区划代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqmz"}), (t:DataElement {name: "证件签名值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzjtm"}), (t:DataElement {name: "证件条码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqmgyz"}), (t:DataElement {name: "证件签名公钥值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqmhashz"}), (t:DataElement {name: "证件签名hash值"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqfjgdm"}), (t:DataElement {name: "证件签发机关代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjccqfrq"}), (t:DataElement {name: "证件初次签发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjzxrq"}), (t:DataElement {name: "证件注销日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjzxyy"}), (t:DataElement {name: "证件注销原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjlx"}), (t:DataElement {name: "证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjsjc"}), (t:DataElement {name: "证件时间戳"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sjhm"}), (t:DataElement {name: "手机号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjcx"}), (t:DataElement {name: "准驾车型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bldz"}), (t:DataElement {name: "办理地址"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cclzrq"}), (t:DataElement {name: "初次领证日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yxqs"}), (t:DataElement {name: "有效期始"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yxqz"}), (t:DataElement {name: "有效期止"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xm"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zcmc"}), (t:DataElement {name: "职称名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xcszyjsgz"}), (t:DataElement {name: "现从事专业技术工作"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "dwmc"}), (t:DataElement {name: "单位名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxzzw"}), (t:DataElement {name: "现行政职务"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "pdsj"}), (t:DataElement {name: "评定时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xkwjlx"}), (t:DataElement {name: "许可文件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xkbfjg"}), (t:DataElement {name: "许可颁发机关"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xkbfrq"}), (t:DataElement {name: "许可颁发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xkzt"}), (t:DataElement {name: "许可状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xkyxqz"}), (t:DataElement {name: "许可有效期自"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xkyxqzh"}), (t:DataElement {name: "许可有效期至"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xknr"}), (t:DataElement {name: "许可内容"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjbh"}), (t:DataElement {name: "证件编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjmc"}), (t:DataElement {name: "证件名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjlx"}), (t:DataElement {name: "证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjqfjgmc"}), (t:DataElement {name: "证件签发机关名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjqfjgdm"}), (t:DataElement {name: "从业资格证件签发机关代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjzt"}), (t:DataElement {name: "证件状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjyxqq"}), (t:DataElement {name: "证件有效期起"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjyxqz"}), (t:DataElement {name: "证件有效期止"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjqfrq"}), (t:DataElement {name: "证件签发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjccqfrq"}), (t:DataElement {name: "从业资格证件初次签发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzgzjzxyy"}), (t:DataElement {name: "证件注销原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjbh"}), (t:DataElement {name: "证件编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjmc"}), (t:DataElement {name: "证件名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjlx"}), (t:DataElement {name: "证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqfjgmc"}), (t:DataElement {name: "证件签发机关名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqfjgdm"}), (t:DataElement {name: "证件签发机关代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjzt"}), (t:DataElement {name: "证件状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjyxqq"}), (t:DataElement {name: "证件有效期起"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjyxqz"}), (t:DataElement {name: "证件有效期止"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjqfrq"}), (t:DataElement {name: "证件签发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzzfssdq"}), (t:DataElement {name: "行政执法所属地区"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjccqfrq"}), (t:DataElement {name: "证件初次签发日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjzxrq"}), (t:DataElement {name: "证件注销日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjzxyy"}), (t:DataElement {name: "证件注销原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqh"}), (t:DataElement {name: "行政区划"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jszc"}), (t:DataElement {name: "技术职称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xb"}), (t:DataElement {name: "性别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xm"}), (t:DataElement {name: "姓名"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "mz"}), (t:DataElement {name: "民族"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gzks"}), (t:DataElement {name: "工作科室"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gj"}), (t:DataElement {name: "国籍"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyzyjg"}), (t:DataElement {name: "主要执业机构"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyfw"}), (t:DataElement {name: "执业范围"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjszdq"}), (t:DataElement {name: "证件所在地区"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zjyxq"}), (t:DataElement {name: "证件有效期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zyjb"}), (t:DataElement {name: "执业级别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rzzg"}), (t:DataElement {name: "任职资格"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zzmm"}), (t:DataElement {name: "政治面貌"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sjhm_encode"}), (t:DataElement {name: "手机号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zydwlxdh_encode"}), (t:DataElement {name: "执业单位联系电话"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rzyrymc"}), (t:DataElement {name: "认证与荣誉名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yxq"}), (t:DataElement {name: "有效期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rymc"}), (t:DataElement {name: "荣誉名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "shzt"}), (t:DataElement {name: "审核状态"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ryjb"}), (t:DataElement {name: "荣誉级别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jb"}), (t:DataElement {name: "级别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zslx"}), (t:DataElement {name: "证书类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ryrdrq"}), (t:DataElement {name: "荣誉认定日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ryjldx"}), (t:DataElement {name: "荣誉奖励对象"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zsbh"}), (t:DataElement {name: "证书编号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ryzsyxqz"}), (t:DataElement {name: "荣誉证书有效期自"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ryzsyxqzh"}), (t:DataElement {name: "荣誉证书有效期至"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "rybfjgmc"}), (t:DataElement {name: "荣誉颁发机构名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzjljdwh"}), (t:DataElement {name: "行政奖励决定文号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzjlmc"}), (t:DataElement {name: "行政奖励名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzjljdnr"}), (t:DataElement {name: "行政奖励决定内容"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzjlrq"}), (t:DataElement {name: "行政奖励日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzjlbm"}), (t:DataElement {name: "行政奖励部门"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sjdj"}), (t:DataElement {name: "授奖等级"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xmmc"}), (t:DataElement {name: "项目名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sbnd"}), (t:DataElement {name: "年度"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "kssj"}), (t:DataElement {name: "开始时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jssj"}), (t:DataElement {name: "结束时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jllx"}), (t:DataElement {name: "奖励类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfdxszzzjgtyshxydm"}), (t:DataElement {name: "行政处罚对象所在组织机构统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfdxszzzjgdm"}), (t:DataElement {name: "行政处罚对象所在组织机构代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfzl"}), (t:DataElement {name: "行政处罚种类"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzwfxwlx"}), (t:DataElement {name: "行政违法行为类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfjdswh"}), (t:DataElement {name: "行政处罚决定书文号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfnr"}), (t:DataElement {name: "行政处罚内容"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfjd"}), (t:DataElement {name: "行政处罚决定"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfyj"}), (t:DataElement {name: "行政处罚依据"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfrq"}), (t:DataElement {name: "行政处罚日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfjkbj"}), (t:DataElement {name: "行政处罚交款标记"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfnx"}), (t:DataElement {name: "行政处罚年限"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfjg"}), (t:DataElement {name: "行政处罚机关"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfjgbhxzcfjgbh"}), (t:DataElement {name: "行政处罚机构编号(行政处罚机关编号)"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcfbmjb"}), (t:DataElement {name: "行政处罚部门级别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "blxwdjrq"}), (t:DataElement {name: "不良行为登记日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzwfxwfsrq"}), (t:DataElement {name: "行政违法行为发生日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqzsqrq"}), (t:DataElement {name: "行政强制申请日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqzdxszzzjgtyshxydm"}), (t:DataElement {name: "行政强制对象所在组织机构统一社会信用代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqzzxwh"}), (t:DataElement {name: "行政强制执行文号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqzfl"}), (t:DataElement {name: "行政强制分类"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "lscfsj"}), (t:DataElement {name: "临时查封时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "cfxxxzqbm"}), (t:DataElement {name: "查封信息行政区编码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqzzxsj"}), (t:DataElement {name: "行政强制执行时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqzxdrfl"}), (t:DataElement {name: "行政强制相对人分类"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jclscfsj"}), (t:DataElement {name: "解除临时查封时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqzjfrq"}), (t:DataElement {name: "行政强制解封日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqrlb"}), (t:DataElement {name: "行政确认类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqrws"}), (t:DataElement {name: "行政确认文书号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzqrrq"}), (t:DataElement {name: "行政确认日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzgfsx"}), (t:DataElement {name: "行政给付事项"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzgfshjg"}), (t:DataElement {name: "行政给付审核结果"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzgffy"}), (t:DataElement {name: "行政给付费用"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzgfrq"}), (t:DataElement {name: "行政给付日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcjbsqr"}), (t:DataElement {name: "行政裁决被申请人"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcjsqsx"}), (t:DataElement {name: "行政裁决申请事项"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcjssjg"}), (t:DataElement {name: "行政裁决实施机关"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzcjrq"}), (t:DataElement {name: "行政裁决日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sflrsxhmd"}), (t:DataElement {name: "是否列入失信黑名单"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "lrsxhmdrq"}), (t:DataElement {name: "列入失信黑名单日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "lrsxhmdsy"}), (t:DataElement {name: "列入失信黑名单事由"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tcsxhmdrq"}), (t:DataElement {name: "退出失信黑名单日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tcsxhmdyy"}), (t:DataElement {name: "退出失信黑名单原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfajah"}), (t:DataElement {name: "司法案件案号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfajahdm"}), (t:DataElement {name: "司法案件案号代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfajygr"}), (t:DataElement {name: "司法案件原告人"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfajay"}), (t:DataElement {name: "司法案件案由"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfajlarq"}), (t:DataElement {name: "司法案件立案日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfajpjg"}), (t:DataElement {name: "司法案件判决结果"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zxajbjrq"}), (t:DataElement {name: "执行案件报结日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zxajjafs"}), (t:DataElement {name: "执行案件结案方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfajbgr"}), (t:DataElement {name: "司法案件被告人"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bgsfzjhm"}), (t:DataElement {name: "被告身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fymc"}), (t:DataElement {name: "法院名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ajlx"}), (t:DataElement {name: "案件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sxxw"}), (t:DataElement {name: "失信行为"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sxbzxyjwh"}), (t:DataElement {name: "失信被执行依据文号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sxbzxrdrq"}), (t:DataElement {name: "失信被执行认定日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sxbzxlarq"}), (t:DataElement {name: "失信被执行立案日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sxbzxlxqk"}), (t:DataElement {name: "失信被执行履行情况"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "serillrea_cn"}), (t:DataElement {name: "列入事由/情形（中文名称）"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "punishexecuteamount"}), (t:DataElement {name: "处罚执行金额/处罚金额"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zxyj"}), (t:DataElement {name: "执行依据"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "qzzxsqzxr"}), (t:DataElement {name: "强制执行申请执行人"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "qzzxfydm"}), (t:DataElement {name: "强制执行法院代码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "qzzxfymc"}), (t:DataElement {name: "强制执行法院名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "qzzxyjwsh"}), (t:DataElement {name: "强制执行依据文书号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "qzzxlasj"}), (t:DataElement {name: "强制执行立案时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zcqzzxyjdw"}), (t:DataElement {name: "做出强制执行依据单位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "bqzzxrdlxqk"}), (t:DataElement {name: "被强制执行人的履行情况"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "qzzxfbsj"}), (t:DataElement {name: "强制执行发布时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ah"}), (t:DataElement {name: "案号"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "yzfs"}), (t:DataElement {name: "援助方式"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "slsj"}), (t:DataElement {name: "受理时间"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sjajmc"}), (t:DataElement {name: "涉及案件名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zdyy"}), (t:DataElement {name: "指定原因"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zdjg"}), (t:DataElement {name: "指定机关"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ajlb"}), (t:DataElement {name: "案件类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "scrq"}), (t:DataElement {name: "审查日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ajcbr"}), (t:DataElement {name: "案件承办人"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "ajcbdw"}), (t:DataElement {name: "案件承办单位"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wjlx"}), (t:DataElement {name: "违纪类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wjnr"}), (t:DataElement {name: "违纪内容"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wjrszjgmc"}), (t:DataElement {name: "违纪人所在机构名称"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wjclyj"}), (t:DataElement {name: "违纪处理意见"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xxlb"}), (t:DataElement {name: "信息类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "gjzms"}), (t:DataElement {name: "关键字描述"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wtlb"}), (t:DataElement {name: "问题类别"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "jtwt"}), (t:DataElement {name: "具体问题"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "zrrwybs"}), (t:DataElement {name: "自然人唯一标识"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfrsfzm"}), (t:DataElement {name: "上访人身份证明"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xfrq"}), (t:DataElement {name: "信访日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xfsj"}), (t:DataElement {name: "信访事件"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xfsy"}), (t:DataElement {name: "信访事由"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xfbm"}), (t:DataElement {name: "信访部门"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wqnr"}), (t:DataElement {name: "维权内容"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "wqrq"}), (t:DataElement {name: "维权日期"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjlx"}), (t:DataElement {name: "身份证件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "sfzjhm"}), (t:DataElement {name: "身份证件号码"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tsr"}), (t:DataElement {name: "投诉人"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tsnr"}), (t:DataElement {name: "投诉内容"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "tsdh"}), (t:DataElement {name: "投诉电话"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "slssjblx"}), (t:DataElement {name: "受理申诉举报类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "blbm"}), (t:DataElement {name: "办理部门"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "xzdwlx"}), (t:DataElement {name: "协助单位类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Database {name: "zrr"}), (t:SubjectDomain {name: "自然人"})
CREATE (s)-[r:IMPLEMENTS]->(t);
MATCH (s:SubjectDomain {name: "自然人"}), (t:BusinessDomain {name: "社会活动"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "社会活动"}), (t:BusinessSubject {name: "就业社保"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "职业伤害保障信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:SubjectDomain {name: "自然人"}), (t:BusinessDomain {name: "涉事涉法"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "涉事涉法"}), (t:BusinessSubject {name: "行政监管"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "行政监管"}), (t:LogicalEntity {name: "行政裁决"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "社会活动"}), (t:BusinessSubject {name: "教育"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "教育"}), (t:LogicalEntity {name: "学历综合信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:SubjectDomain {name: "自然人"}), (t:BusinessDomain {name: "基本信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "基本信息"}), (t:BusinessSubject {name: "家庭信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "家庭信息"}), (t:LogicalEntity {name: "户籍信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "基本信息"}), (t:BusinessSubject {name: "联系信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "联系信息"}), (t:LogicalEntity {name: "联系电话"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:SubjectDomain {name: "自然人"}), (t:BusinessDomain {name: "资产信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "资产信息"}), (t:BusinessSubject {name: "实物资产信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "实物资产信息"}), (t:LogicalEntity {name: "房产信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "生育保险信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "联系信息"}), (t:LogicalEntity {name: "电子邮箱"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "失业信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "教育"}), (t:LogicalEntity {name: "职业教育信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "基本信息"}), (t:BusinessSubject {name: "生理体征信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "生理体征信息"}), (t:LogicalEntity {name: "出生信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "社会活动"}), (t:BusinessSubject {name: "医疗卫生"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "医疗卫生"}), (t:LogicalEntity {name: "计生信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "教育"}), (t:LogicalEntity {name: "高等教育信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "住房公积金缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "涉事涉法"}), (t:BusinessSubject {name: "信访、举报和投诉"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "信访、举报和投诉"}), (t:LogicalEntity {name: "信访信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:SubjectDomain {name: "自然人"}), (t:BusinessDomain {name: "资质荣誉"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "资质荣誉"}), (t:BusinessSubject {name: "荣誉表彰"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "荣誉表彰"}), (t:LogicalEntity {name: "行政奖励"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "职业年金信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "荣誉表彰"}), (t:LogicalEntity {name: "荣誉信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "资质荣誉"}), (t:BusinessSubject {name: "职业资格"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "职业资格"}), (t:LogicalEntity {name: "从业资格信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "涉事涉法"}), (t:BusinessSubject {name: "司法信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "司法信息"}), (t:LogicalEntity {name: "未履行生效裁判信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "家庭信息"}), (t:LogicalEntity {name: "婚姻信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "医疗卫生"}), (t:LogicalEntity {name: "疫苗接种信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "行政监管"}), (t:LogicalEntity {name: "行政强制"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "生理体征信息"}), (t:LogicalEntity {name: "丧葬补助金信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "实物资产信息"}), (t:LogicalEntity {name: "不动产权利信息表"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "实物资产信息"}), (t:LogicalEntity {name: "船舶信息表"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "家庭信息"}), (t:LogicalEntity {name: "亲缘关系信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "实物资产信息"}), (t:LogicalEntity {name: "机动车信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "失业保险信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "实物资产信息"}), (t:LogicalEntity {name: "资产处置"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "医疗卫生"}), (t:LogicalEntity {name: "门诊与住院信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "教育"}), (t:LogicalEntity {name: "学前教育信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "司法信息"}), (t:LogicalEntity {name: "失信被执行信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "职业年金缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "医疗保险缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "涉事涉法"}), (t:BusinessSubject {name: "违纪、违规和违约"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "违纪、违规和违约"}), (t:LogicalEntity {name: "违纪信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "社会活动"}), (t:BusinessSubject {name: "基本生活"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "基本生活"}), (t:LogicalEntity {name: "邮政物流新"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "联系信息"}), (t:LogicalEntity {name: "联系地址"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "资质荣誉"}), (t:BusinessSubject {name: "能力资质"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "能力资质"}), (t:LogicalEntity {name: "能力资质信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "工伤保险缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "职业伤害保障缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "生育保险缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "行政监管"}), (t:LogicalEntity {name: "行政确认"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "基本生活"}), (t:LogicalEntity {name: "交通出行"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "就业信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "职业资格"}), (t:LogicalEntity {name: "执业资格信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "生理体征信息"}), (t:LogicalEntity {name: "火化信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "生理体征信息"}), (t:LogicalEntity {name: "死亡注销信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "司法信息"}), (t:LogicalEntity {name: "强制执行信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "行政监管"}), (t:LogicalEntity {name: "行政给付"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "基本信息"}), (t:BusinessSubject {name: "登记信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "登记信息"}), (t:LogicalEntity {name: "基本登记信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "养老保险信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "社会活动"}), (t:BusinessSubject {name: "文化体育"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "文化体育"}), (t:LogicalEntity {name: "文体活动"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "纳税信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "失业保险缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "教育"}), (t:LogicalEntity {name: "义务教育信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "资产信息"}), (t:BusinessSubject {name: "债务信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "债务信息"}), (t:LogicalEntity {name: "贷款信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "教育"}), (t:LogicalEntity {name: "高中教育信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "生理体征信息"}), (t:LogicalEntity {name: "宣告死亡信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "能力资质"}), (t:LogicalEntity {name: "机动车驾驶证基本信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "工伤保险信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "信访、举报和投诉"}), (t:LogicalEntity {name: "投诉信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "生理体征信息"}), (t:LogicalEntity {name: "死亡医学证明信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "工伤认定信息表"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "行政监管"}), (t:LogicalEntity {name: "失信黑名单信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "救助信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "信访、举报和投诉"}), (t:LogicalEntity {name: "举报信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "登记信息"}), (t:LogicalEntity {name: "身份证件信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "生理体征信息"}), (t:LogicalEntity {name: "生理体征"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "养老社保缴纳记录"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "行政监管"}), (t:LogicalEntity {name: "行政处罚"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "能力资质"}), (t:LogicalEntity {name: "职称信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "司法信息"}), (t:LogicalEntity {name: "司法案件信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "实物资产信息"}), (t:LogicalEntity {name: "农机信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "实物资产信息"}), (t:LogicalEntity {name: "渔船信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "教育"}), (t:LogicalEntity {name: "考试信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "退休信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "医疗保险信息"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "司法信息"}), (t:LogicalEntity {name: "法律援助"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "能力资质"}), (t:LogicalEntity {name: "行政许可"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "就业社保"}), (t:LogicalEntity {name: "住房公积金"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:Database {name: "swk"}), (t:SubjectDomain {name: "死亡库"})
CREATE (s)-[r:IMPLEMENTS]->(t);
MATCH (s:SubjectDomain {name: "死亡库"}), (t:BusinessDomain {name: "死亡库"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessDomain {name: "死亡库"}), (t:BusinessSubject {name: "权威库"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "权威库"}), (t:LogicalEntity {name: "死亡人员扩展信息表"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:BusinessSubject {name: "权威库"}), (t:LogicalEntity {name: "死亡人员基本信息表"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "shbzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "cbdxzqhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "cbksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "bcjfksny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "sbcbzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "sbzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "zhjlny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "zjfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "ygxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "grjfzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "cbsf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "dfcbsfmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "dfcbsfmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "ldgxksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "ldgxzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "dqyxbz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "rycbgxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "jfrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzxx_new"}), (t:Field {name: "grcbrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xzcj_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcfje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcfsfxxgk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcfgksj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcfgkjssj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcjbsqr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcjsqsx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcjssjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzcj_new"}), (t:Field {name: "xzcjrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xlzhxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xlmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xlzy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xlsydw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xlsyrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xwlbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xwsydw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xlzhxx_new"}), (t:Field {name: "xwsyrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_hjxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "jg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hklb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjszd"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjdssxdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjdxz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjdjlxdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hzxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hzsfhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjqfdw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjqfsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjzxbs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hjxx_new"}), (t:Field {name: "hjzxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_lxdh_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdh_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdh_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdh_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdh_new"}), (t:Field {name: "dhhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_fcxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "fwdz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "fwxz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "fwjzmj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "fwsymj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "fwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "fwfh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_fcxx_new"}), (t:Field {name: "gfhtqdrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_sybxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "shbzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "cbdxzqhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "cbksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "sbcbzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "sbzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "zhjlny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "zjfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "ygxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "grjfzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "cbsf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "dfcbsfmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "dfcbsfmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "ldgxksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "ldgxzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "dqyxbz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "rycbgxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "jfrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxxx_new"}), (t:Field {name: "grcbrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_dzyx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dzyx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dzyx_new"}), (t:Field {name: "yxzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dzyx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dzyx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_syxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "djsyrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "syyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "jyknlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "jycyzbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_syxx_new"}), (t:Field {name: "jycyzfzjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zyjyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "xxwys"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "xh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "rxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "byrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "sxzy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "xz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "njmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "bjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyjyxx_new"}), (t:Field {name: "xxmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_csxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csyxzmbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "p_flag"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csyxzmfqsfzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csyxzmmqsfzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csyxzmqfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csyxzmqfjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csdxzqhxz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "mq_xm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "fq_xm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "cssj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csyz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "cstz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "cssz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "csd_qhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "etgrbsh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "bshlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "jsry"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "zcjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "xsexm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_csxx_new"}), (t:Field {name: "xsexb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jsxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "yljgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "cfjkdah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "cfzybah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "jdsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "gwrs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "rsbfz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "rsfxdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "cfyc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "cfcc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "cfts"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jsxx_new"}), (t:Field {name: "cftc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_gdjyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "xxwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "xxmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "xh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "rxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "byrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "sxzy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "xz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "yxmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "njmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "bjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gdjyxx_new"}), (t:Field {name: "sfkns"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "grzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "dwzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "jcjgh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "jcjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "grjcje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "dwjcje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "jcbl"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "grzhye"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "grzhzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "hjyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zfgjjjnjl_new"}), (t:Field {name: "jcsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xifxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "sfrsfzm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "xfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "xfsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "xfsy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "xfbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "wqnr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xifxx_new"}), (t:Field {name: "wqrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xzjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "xzjljdwh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "xzjlmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "xzjljdnr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "xzjlrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "xzjlbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "sjdj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "xmmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "sbnd"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "kssj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "jssj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjl_new"}), (t:Field {name: "jllx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zynjxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "shbzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "cbdxzqhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "cbksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "bcjfksny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "sbcbzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "sbzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "zhjlny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "zjfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "ygxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "grjfzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "cbsf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "dfcbsfmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "dfcbsfmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "ldgxksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "ldgxzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "dqyxbz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "rycbgxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "jfrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjxx_new"}), (t:Field {name: "grcbrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_ryxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "rzyrymc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "yxq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "rymc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "shzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "ryjb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "jb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "zslx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "ryrdrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "ryjldx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "zsbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "ryzsyxqz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "ryzsyxqzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ryxx_new"}), (t:Field {name: "rybfjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_cyzgxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjqfjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjqfjgdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjyxqq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjyxqz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjqfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjccqfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cyzgxx_new"}), (t:Field {name: "zyzgzjzxyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "ah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "zczxyjdw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "sxbzxrxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "lasj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "flsxwsqddyw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "fbsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "bzxrdlxqk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "sxbzxrjtqx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wlxsxcpqk_new"}), (t:Field {name: "wlxbf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_hyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nfzrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nvfzrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "jlhzzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nfhyzk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nvfhyzk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "djrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nfxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nfsfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nfsfsfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nvfxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nvfsfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nvfsfsfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "birth_man"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "birth_woman"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "id_type_man"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "id_type_woman"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nation_man"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "nation_woman"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "folk_man"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "folk_woman"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "print_num_man"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "print_num_woman"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "lhpjah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "jarq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hyxx_new"}), (t:Field {name: "hydjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_ymjzxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "ymbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "jzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "ymxh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "scqy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "jzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "jzbw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "jzys"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "jzjgbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ymjzxx_new"}), (t:Field {name: "fybz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xzqz_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "xzqzsqrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "xzqzdxszzzjgtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "xzqzzxwh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "xzqzfl"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "lscfsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "cfxxxzqbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "xzqzzxsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "xzqzxdrfl"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "jclscfsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqz_new"}), (t:Field {name: "xzqzjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_szbzjxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_szbzjxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_szbzjxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_szbzjxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_szbzjxx_new"}), (t:Field {name: "szbzje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_szbzjxx_new"}), (t:Field {name: "szbzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "cqzbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "bdcqdjsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "bdcdyh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "bdcdjjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "bdcqgyfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "bdcgyqk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "bdcqlxz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "bdcqllx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "fwyt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "scjzmj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "qszt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_bdcqzxx_new"}), (t:Field {name: "fwzl"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_cbxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cmzw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cmyw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "ch"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cjgzw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cjgyw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "czdw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cbsyqzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cbzsh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cmdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_cbxx_new"}), (t:Field {name: "cz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_qygxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "bjhrxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "jhrsfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "jhrsfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "jhrxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "jhgx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "fqsfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "fqsfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "fqxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "mqsfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "mqsfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qygxxx_new"}), (t:Field {name: "mqxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jdcxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "clsbdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "clgchjk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "clzwpp"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "clxh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "cllx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcxx_new"}), (t:Field {name: "xszyxqz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_shiybxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "shbzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "cbdxzqhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "cbksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "bcjfksny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "sbcbzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "sbzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "zhjlny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "zjfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "ygxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "grjfzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "cbsf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "dfcbsfmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "dfcbsfmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "ldgxksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "ldgxzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "dqyxbz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "rycbgxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "jfrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxxx_new"}), (t:Field {name: "grcbrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zccz_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "dyw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "dyzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "dyqxq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "dyqxz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zccz_new"}), (t:Field {name: "dyqzxdjsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "yljgdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "sffz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "hzxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "hzsx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "sfjz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzxz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzksbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzksmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "wcjzsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "zzysbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "zzysxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "mzzddm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "mzzdmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzzdsm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "zs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "mzzzmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "mzzzzddm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "lggc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "zzms"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "fbrqsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "ssy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "szy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "tw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "zzcxsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "mjzh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzlsh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_mzyzyxx_new"}), (t:Field {name: "jzksrq_new"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xqjyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "xxwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "xxmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "rxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "byrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xqjyxx_new"}), (t:Field {name: "bjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "sxxw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "sxbzxyjwh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "sxbzxrdrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "sxbzxlarq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "sxbzxlxqk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "serillrea_cn"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "punishexecuteamount"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sxbzxxx_new"}), (t:Field {name: "zxyj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbxzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbjfqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbjfjzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbjfgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbjfjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zynjjnjl_new"}), (t:Field {name: "sbjfyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbxzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbjfqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbjfjzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbjfgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbjfjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yilbxjnjl_new"}), (t:Field {name: "sbjfyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_wjxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wjxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wjxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wjxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wjxx_new"}), (t:Field {name: "wjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wjxx_new"}), (t:Field {name: "wjnr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wjxx_new"}), (t:Field {name: "wjrszjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wjxx_new"}), (t:Field {name: "wjclyj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_yzwl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yzwl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yzwl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yzwl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_yzwl_new"}), (t:Field {name: "jjrxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_lxdz_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "dzbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "dzmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "ssqx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "xzhjdmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_lxdz_new"}), (t:Field {name: "xzchsq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_nlzzxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zsbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zzdj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjyxqq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjyxqz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjqfjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "fzjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjqfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "bajgdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "bajgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "sfscxdzsh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "cd_batch"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "cyfw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "qhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjqmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zzjtm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjqmgyz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjqmhashz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjqfjgdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjccqfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjzxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjzxyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nlzzxx_new"}), (t:Field {name: "zjsjc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbxzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbjfqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbjfjzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbjfgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbjfjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxjnjl_new"}), (t:Field {name: "sbjfyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbxzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbjfqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbjfjzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbjfgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbjfjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyshbzjnjl_new"}), (t:Field {name: "sbjfyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbxzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbjfqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbjfjzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbjfgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbjfjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_sybxjnjl_new"}), (t:Field {name: "sbjfyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xzqr_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqr_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqr_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqr_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqr_new"}), (t:Field {name: "xzqrlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqr_new"}), (t:Field {name: "xzqrws"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzqr_new"}), (t:Field {name: "xzqrrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jtcx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "cfsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "ddsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "sfzmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "sfzdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "ddzmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "ddzdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "xlmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "gpsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jtcx_new"}), (t:Field {name: "gxsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "cyzk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "cjgzsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "csdqzyqsnf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "zylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "zymc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "jrdpsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "gzdwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "gzdwztlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "gzdwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "szgzdwbmmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "gzdwtxdz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "gzdwcz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "gzdwdhhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "ldhtqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "ldhtzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "rzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "lzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "gwlb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jyxx_new"}), (t:Field {name: "xrgwsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_zyzgxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjqfjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjqfjgdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjyxqq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjyxqz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjqfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "xzzfssdq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjccqfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjzxrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjzxyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "xzqh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "jszc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "xb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "xm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "mz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "gzks"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "gj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zyzyjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zyfw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjszdq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zjyxq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zyjb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "rzzg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zzmm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "sjhm_encode"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_zyzgxx_new"}), (t:Field {name: "zydwlxdh_encode"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_hhxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "swrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "swsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "swyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "hhzjbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "hhrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_hhxx_new"}), (t:Field {name: "hhszbyg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_swzxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "swrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "swsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "swyy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "swzxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "swzxsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_swzxxx_new"}), (t:Field {name: "swzxjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_qzzxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "qzzxsqzxr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "qzzxfydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "qzzxfymc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "qzzxyjwsh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "qzzxlasj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "zcqzzxyjdw"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "bqzzxrdlxqk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_qzzxxx_new"}), (t:Field {name: "qzzxfbsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xzjf_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjf_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjf_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjf_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjf_new"}), (t:Field {name: "xzgfsx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjf_new"}), (t:Field {name: "xzgfshjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjf_new"}), (t:Field {name: "xzgffy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xzjf_new"}), (t:Field {name: "xzgfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jbdjxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "xm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "cym"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "xb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "csrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "mz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "gj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "zzmm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "zjxy"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jbdjxx_new"}), (t:Field {name: "byzk"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_ylbxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "shbzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "cbdxzqhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "cbksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "bcjfksny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "sbcbzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "sbzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "zhjlny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "zjfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "ygxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "grjfzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "cbsf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "dfcbsfmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "dfcbsfmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "ldgxksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "ldgxzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "dqyxbz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "rycbgxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "jfrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "grcbrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ylbxxx_new"}), (t:Field {name: "xzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_wthd_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wthd_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wthd_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wthd_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wthd_new"}), (t:Field {name: "hdmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_wthd_new"}), (t:Field {name: "zyzhdzsc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_nsxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "nsrsbh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "sz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "zrrnsdxm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "sre"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "nssksssq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "skssq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "ynssde"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "ynsl"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "jsje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "sjse"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "jnsj"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "zsjgmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "grsdssdnf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "gszsjg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_nsxx_new"}), (t:Field {name: "gsjnpzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbxzlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbjfrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbjfqsrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbjfjzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbjfgz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbjfjs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_shiybxjnjl_new"}), (t:Field {name: "sbjfyf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_ywjyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "xxwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "xh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "njmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "bjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_ywjyxx_new"}), (t:Field {name: "xxmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_dkxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dkxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dkxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dkxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dkxx_new"}), (t:Field {name: "khyh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dkxx_new"}), (t:Field {name: "ffje"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_dkxx_new"}), (t:Field {name: "dklx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_gzjyxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "xxwys"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "xh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "njmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "bjmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gzjyxx_new"}), (t:Field {name: "xxmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_xgswxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xgswxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xgswxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xgswxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xgswxx_new"}), (t:Field {name: "sxpjrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xgswxx_new"}), (t:Field {name: "jarg"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_xgswxx_new"}), (t:Field {name: "ah"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "sjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "zjcx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "bldz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "cclzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "yxqs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_jdcjszjbxx_new"}), (t:Field {name: "yxqz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_gsbxxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "shbzhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "dwmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "dwtyshxydm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "cbdxzqhdm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "cbksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "bcjfksny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "sbcbzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "sbzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "zhjlny"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "zjfs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "ygxs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "grjfzt"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "cbsf"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "dfcbsfmz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "dfcbsfmc"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "ldgxksrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "ldgxzzrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "dqyxbz"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "rycbgxlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "jfrylb"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_gsbxxx_new"}), (t:Field {name: "grcbrq"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Database {name: "zrr"}), (t:PhysicalTable {name: "dwd_zrr_tsxx_new"})
CREATE (s)-[r:CONTAINS]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "zrrwybs"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "sfzjlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "sfzjhm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "tsr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "tsnr"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "tsdh"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "slssjblx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "blbm"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:PhysicalTable {name: "dwd_zrr_tsxx_new"}), (t:Field {name: "xzdwlx"})
CREATE (s)-[r:HAS_FIELD]->(t);
MATCH (s:Field {name: "xfaqsjlx"}), (t:DataElement {name: "消费安全事件类型"})
CREATE (s)-[r:REPRESENTS]->(t);
MATCH (s:Field {name: "fkdjr"}), (t:DataElement {name: "反馈登记人"})
CREATE (s)-[r:REPRESENTS]->(t);
:commit
