Map serviceTag = {
  'Step1': {
    "type": 1, // 按钮的排列类型 1为竖排1列，2为竖排2列
    "steptitle": "服务标签 1/6", // 当前步骤title
    "titles": '您提供的服务有哪些 ？ 多选', // 选择提示
    "hasOr": false, // 有还是没有
    "hasInput": false, // 有无输入框
    "key": "step1_1", // 存数据的key
    "list": [ // 数据列表
      {"id": 1, "text": "撰写推荐报告"},
      {"id": 2, "text": "简历修改"},
      {"id": 3, "text": "择业辅导"},
      {"id": 4, "text": "综合面试辅导"},
      {"id": 5, "text": "专业面试辅导"},
      {"id": 6, "text": "笔试辅导"}
    ],
    "page": ''
  },
  'Step2': {
    "type": 1,
    "steptitle": "服务标签 2/6",
    "titles": '您有定向推荐服务吗 ？',
    "hasOr": true,
    "hasInput": true,
    "key": "step2_1",
    "list": [
      {"id": 1, "text": "世界500强名企"},
      {"id": 2, "text": "中国100强名企"},
      {"id": 3, "text": "行业前20强名企"},
      {"id": 4, "text": "行业前10强名企"},
      // {"id": 5, "text": "以上都不是"}
    ],
    "page": ''
  },
  'Step3': {
    "type": 2,
    "steptitle": "服务标签 3/6",
    "titles": '您专注服务哪些城市 ？ 多选2项',
    "hasOr": false,
    "hasInput": false,
    "key": "step3_1",
    "list": [
      {"id": 1, "text": "上海"},
      {"id": 2, "text": "北京"},
      {"id": 3, "text": "天津"},
      {"id": 4, "text": "重庆"},
      {"id": 5, "text": "深圳"},
      {"id": 6, "text": "广州"},
      {"id": 7, "text": "杭州"},
      {"id": 8, "text": "西安"},
      {"id": 9, "text": "苏州"},
      {"id": 10, "text": "南京"},
      {"id": 11, "text": "成都"},
      {"id": 12, "text": "昆明"},
    ],
    "page": ''
  },
  'Step4': {
    "type": 1,
    "steptitle": "服务标签 4/6",
    "titles": '您专注服务哪些行业 ？ 最多选2项',
    "hasOr": false,
    "hasInput": false,
    "key": "step4_1",
    "list": [
      {"id": 1, "text": "互联网IT信息"},
      {"id": 2, "text": "金融投资证券"},
      {"id": 3, "text": "房地产建筑"},
      {"id": 4, "text": "商业服务消费"},
      {"id": 5, "text": "新闻传播与媒体"},
      {"id": 6, "text": "汽车制造"},
      {"id": 7, "text": "医药与化工"},
      {"id": 8, "text": "教育科研与院所"},
    ],
    "page": ''
  },
  'Step5': {
    "type": 1,
    "steptitle": "服务标签 5/6",
    "titles": '您专注哪类岗位 ？ 多选3项',
    "hasOr": false,
    "hasInput": false,
    "key": "step5_1",
    "list": [
      {"id": 1, "text": "专业技术类"},
      {"id": 2, "text": "工程施工类"},
      {"id": 3, "text": "高级管理类（高管）"},
      {"id": 4, "text": "商业商务服务类"},
      {"id": 5, "text": "后勤营业辅助类"},
      {"id": 6, "text": "人力行政法务类"},
      {"id": 7, "text": "市场营销策划类"},
      {"id": 8, "text": "财务金融类"},
      {"id": 9, "text": "蓝领技术类"},
    ],
    "page": ''
  },
  'Step6': {
    "type": 2,
    "steptitle": "服务标签 6/6",
    "titles": '您专注服务哪些职级 ？ 多选3项',
    "hasOr": false,
    "hasInput": false,
    "key": "step6_1",
    "list": [
      {"id": 1, "text": "不限"},
      {"id": -99, "text": ""},
      {"id": 2, "text": "员工级"},
      {"id": 3, "text": "技术初级"},
      {"id": 4, "text": "主管级"},
      {"id": 5, "text": "技术类中级"},
      {"id": 6, "text": "经理级"},
      {"id": 7, "text": "技术类中高级"},
      {"id": 8, "text": "总监级"},
      {"id": 9, "text": "技术类高级"},
      {"id": 10, "text": "高级管理级"},
      {"id": 11, "text": "技术类专家级"},
    ],
    "page": ''
  },
  'Step7': {
    "type": 2,
    "steptitle": "照片视频 1/1",
    "titles": '上传个人照片或视频吧',
    "hasOr": false,
    "hasInput": false,
    "key": "step7_1",
    "list": [],
    "page": 'Images'
  },
  'Step8': {
    "type": 3,
    "steptitle": "学历标签 1/2",
    "titles": '您的学历背景是 ？',
    "hasOr": false,
    "hasInput": false,
    "key": "step8_1",
    "list": [
      {"id": 1, "text": "海外名校留学"},
      {"id": 2, "text": "海外留学"},
      {"id": 3, "text": "双一流"},
      {"id": 4, "text": "985"},
      {"id": 5, "text": "211"},
      {"id": 6, "text": "普通大学"},
      {"id": 7, "text": "高职院校"},
    ],
    "page": ''
  },
  'Step9': {
    "type": 1,
    "steptitle": "学历标签 2/2",
    "titles": '您毕业于哪所院校 ？（最高学历）',
    "hasOr": false,
    "hasInput": false,
    "key": "step9_1",
    "list": [],
    "page": 'Forms'
  },
};
