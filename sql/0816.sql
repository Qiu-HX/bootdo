-- ----------------------------
-- Table bpmn_vacation 请假表单
-- ----------------------------
DROP TABLE IF EXISTS `bpmn_vacation`;
CREATE TABLE `bpmn_vacation` (
  `form_id` BIGINT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `process_instanceId` VARCHAR(64) COMMENT '流程实例ID',
  `user_id` BIGINT(20) COMMENT '用户ID',
  `days` tinyint(3) COMMENT '请假天数',
  `begin_date` DATETIME COMMENT '开始日期',
  `end_date` DATETIME COMMENT '结束日期',
  `vacation_type` tinyint(3) COMMENT '请假类型 0带薪年假 1病假 2事假',
  `reason` VARCHAR(500) COMMENT '请假事由',
  `process_status` tinyint(3) COMMENT '流程状态 0申请 1审批中 2已完成',
  `create_time` DATETIME COMMENT '创建时间',
  `update_time` DATETIME COMMENT '更新时间'
);