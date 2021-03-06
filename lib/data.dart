Map agentLoginData = {
  'Step1': {
    "type": 1, // 按钮的排列类型 1为竖排1列，2为竖排2列
    "steptitle": "服务标签 1/6", // 当前步骤title
    "titles": '您提供的服务有哪些 ？ 多选', // 选择提示
    "key": "step1_1", // 存数据的key
    "list": [
      // 数据列表
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
    "key": "step7_1",
    "list": [],
    "page": 'Images'
  },
  'Step8': {
    "type": 3,
    "steptitle": "学历标签 1/2",
    "titles": '您的学历背景是 ？',
    "key": "step8_1",
    "list": [
      {"id": 1, "text": "海外名校留学"},
      {"id": 2, "text": "海外留学"},
      {"id": 3, "text": "双一流"},
      {"id": 4, "text": "985院校"},
      {"id": 5, "text": "211院校"},
      {"id": 6, "text": "普通大学"},
      {"id": 7, "text": "高职院校"},
    ],
    "page": ''
  },
  'Step9': {
    "type": 1,
    "steptitle": "学历标签 2/2",
    "titles": '您毕业于哪所院校 ？（最高学历）',
    "key": "step9_1",
    "list": [],
    "page": 'Forms'
  },
  'Step10': {
    "type": 2,
    "steptitle": "职业标签 1/3",
    "titles": '您现在工作单位是 ？',
    "key": "step10_1",
    "list": [
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
    "page": 'Forms2'
  },
  'Step11': {
    "type": 2,
    "steptitle": "职业标签 2/3",
    "titles": '您从事过哪些岗位 ？多填项',
    "hasInput": true,
    "inputTab": false,
    "key": "step11_1",
    "list": [],
    "page": ''
  },
  'Step12': {
    "type": 2,
    "steptitle": "职业标签 3/3",
    "titles": '您在哪些知名企业工作过 ？多填项',
    "hasInput": true,
    "key": "step12_1",
    "list": [],
    "page": ''
  },
  'Step13': {
    "type": 2,
    "steptitle": "身份标签 1/4",
    "titles": '您从事猎头职业有几年 ？',
    "key": "step13_1",
    "single": true,
    "list": [
      {"id": 1, "text": "1年"},
      {"id": 2, "text": "2年"},
      {"id": 3, "text": "3年"},
      {"id": 4, "text": "4年"},
      {"id": 5, "text": "5年"},
      {"id": 6, "text": "6年"},
      {"id": 7, "text": "7年"},
      {"id": 8, "text": "8年"},
      {"id": 9, "text": "9年"},
      {"id": 10, "text": "10年"},
      {"id": 11, "text": "10年以上"},
      {"id": 12, "text": "无猎头经验"},
    ],
    "page": ''
  },
  'Step14': {
    "type": 2,
    "steptitle": "身份标签 2/4",
    "titles": '您从事招聘相关的职业有几年 ？ ',
    "key": "step14_1",
    "single": true,
    "list": [
      {"id": 1, "text": "1年"},
      {"id": 2, "text": "2年"},
      {"id": 3, "text": "3年"},
      {"id": 4, "text": "4年"},
      {"id": 5, "text": "5年"},
      {"id": 6, "text": "6年"},
      {"id": 7, "text": "7年"},
      {"id": 8, "text": "8年"},
      {"id": 9, "text": "9年"},
      {"id": 10, "text": "10年"},
      {"id": 11, "text": "10年以上"},
      {"id": 12, "text": "无经验"},
    ],
    "page": ''
  },
  'Step15': {
    "type": 1,
    "steptitle": "身份标签 3/4",
    "titles": '您掌握的外语水平是 ？',
    "key": "step15_1",
    "list": [
      {"id": 1, "text": "口语一般"},
      {"id": 2, "text": "口语熟练"},
      {"id": 3, "text": "口语精通"},
      {"id": 4, "text": "笔译一般"},
      {"id": 5, "text": "笔译熟练"},
      {"id": 6, "text": "笔译精通"},
    ],
    "page": ''
  },
  'Step16': {
    "type": 1,
    "steptitle": "身份标签 4/4",
    "titles": '您可以添加更多优势标签。 多填项',
    "hasInput": true,
    "key": "step16_1",
    "list": [],
    "page": ''
  },
};

Map talentLoginData = {
  'Step1': {
    "type": 1, // 按钮的排列类型 1为竖排1列，2为竖排2列
    "steptitle": "求职标签 1/9", // 当前步骤title
    "titles": '您求职意向是？', // 选择提示
    "key": "step1_1", // 存数据的key
    "single": true,
    "list": [
      // 数据列表
      {"id": 1, "text": "名企工作机会"},
      {"id": 2, "text": "工作机会"},
      {"id": 3, "text": "名企实习机会"},
      {"id": 4, "text": "实习机会"},
      {"id": 5, "text": "管培生"},
      {"id": 6, "text": "定制定向"}
    ],
    "page": ''
  },
  'Step2': {
    "type": 1,
    "steptitle": "求职标签 2/9",
    "titles": '您求职的岗位是 ？',
    "hasInput": true,
    "inputTab": false,
    "key": "step2_1",
    "list": [],
    "page": ''
  },
  'Step3': {
    "type": 2,
    "steptitle": "求职标签 3/9",
    "titles": '您求职的岗位职级是 ？',
    "key": "step3_1",
    "single": true,
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
  'Step4': {
    "type": 1,
    "steptitle": "求职标签 4/9",
    "titles": '您要求的薪资标准是？税钱、月薪、元',
    "key": "step4_1",
    "single": true,
    "list": [
      {"id": 1, "text": "0 - 3000"},
      {"id": 2, "text": "3001 - 5000"},
      {"id": 3, "text": "5001 - 10000"},
      {"id": 4, "text": "10001 - 20000"},
      {"id": 5, "text": "20001 - 30000"},
      {"id": 6, "text": "30001 - 50000"},
      {"id": 7, "text": "50000+"},
    ],
    "page": ''
  },
  'Step5': {
    "type": 2,
    "steptitle": "求职标签 5/9",
    "titles": '您希望去哪个城市工作？',
    "key": "step5_1",
    "single": true,
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
  'Step6': {
    "type": 1,
    "steptitle": "求职标签 6/9",
    "titles": '您求职的行业是 ？ 最多选2个',
    "key": "step6_1",
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
  'Step7': {
    "type": 1,
    "steptitle": "求职标签 7/9",
    "titles": '您现在的身份状态是 ？',
    "key": "step7_1",
    "single": true,
    "list": [
      {"id": 1, "text": "应届毕业生"},
      {"id": 2, "text": "在岗，寻找新的机会"},
      {"id": 3, "text": "已离职，待岗"},
    ],
    "page": ''
  },
  'Step8': {
    "type": 1,
    "steptitle": "求职标签 8/9",
    "titles": '您最快到岗时间是 ？',
    "key": "step8_1",
    "single": true,
    "list": [
      {"id": 1, "text": "随时到岗"},
      {"id": 2, "text": "录用之日起一周到岗"},
      {"id": 3, "text": "录用之日起两周到岗"},
      {"id": 4, "text": "录用之日起一个月到岗"},
    ],
    "page": ''
  },
  'Step9': {
    "type": 1,
    "steptitle": "求职标签 9/9",
    "titles": '您的家庭状况是 ？',
    "key": "step9_1",
    "single": true,
    "list": [
      {"id": 1, "text": "单身"},
      {"id": 2, "text": "单身有恋人"},
      {"id": 3, "text": "准备结婚"},
      {"id": 4, "text": "已婚无孩"},
      {"id": 5, "text": "已婚有小孩"},
      {"id": 6, "text": "离婚"},
      {"id": 7, "text": "离异有小孩"},
      {"id": 8, "text": "离异无孩"},
    ],
    "page": ''
  },
  'Step10': {
    "type": 2,
    "steptitle": "照片视频 1/1",
    "titles": '您要上传照片或个人视频吗 ？',
    "key": "step10_1",
    "list": [],
    "page": 'Images'
  },
  'Step11': {
    "type": 3,
    "steptitle": "学历标签 1/2",
    "titles": '您的学历背景是 ？',
    "key": "step11_1",
    "list": [
      {"id": 1, "text": "海外QS100强"},
      {"id": 2, "text": "海外普校"},
      {"id": 3, "text": "双一流"},
      {"id": 4, "text": "985院校"},
      {"id": 5, "text": "211院校"},
      {"id": 6, "text": "普通大学"},
      {"id": 7, "text": "高职院校"},
    ],
    "page": ''
  },
  'Step12': {
    "type": 2,
    "steptitle": "学历标签 2/2",
    "titles": '您毕业于哪所院校 ？（最高学历）',
    "key": "step12_1",
    "list": [],
    "page": 'Forms'
  },
  'Step13': {
    "type": 2,
    "steptitle": "职业标签 1/7",
    "titles": '您的工作经验有几年？ ？',
    "key": "step13_1",
    "single": true,
    "list": [
      {"id": 1, "text": "1年"},
      {"id": 2, "text": "2年"},
      {"id": 3, "text": "3年"},
      {"id": 4, "text": "4年"},
      {"id": 5, "text": "5年"},
      {"id": 6, "text": "6年"},
      {"id": 7, "text": "7年"},
      {"id": 8, "text": "8年"},
      {"id": 9, "text": "9年"},
      {"id": 10, "text": "10年"},
      {"id": 11, "text": "10-15年"},
      {"id": 12, "text": "15年以上"},
    ],
    "page": ''
  },
  'Step14': {
    "type": 2,
    "steptitle": "职业标签 2/7",
    "titles": '您是否有带领团队的管理经验？',
    "hasOr": true,
    "key": "step14_1",
    "single": true,
    "list": [
      {"id": 1, "text": "1年"},
      {"id": 2, "text": "2年"},
      {"id": 3, "text": "3年"},
      {"id": 4, "text": "4年"},
      {"id": 5, "text": "5年"},
      {"id": 6, "text": "6年"},
      {"id": 7, "text": "7年"},
      {"id": 8, "text": "8年"},
      {"id": 9, "text": "9年"},
      {"id": 10, "text": "10年"},
      {"id": 11, "text": "10年以上"},
    ],
    "page": ''
  },
  'Step15': {
    "type": 2,
    "steptitle": "职业标签 3/7",
    "titles": '您最近的工作单位是 ？',
    "key": "step15_1",
    "list": [
      {"id": 1, "text": "员工级"},
      {"id": 2, "text": "技术初级"},
      {"id": 3, "text": "主管级"},
      {"id": 4, "text": "技术类中级"},
      {"id": 5, "text": "经理级"},
      {"id": 6, "text": "技术类中高级"},
      {"id": 7, "text": "总监级"},
      {"id": 8, "text": "技术类高级"},
      {"id": 9, "text": "高级管理级"},
      {"id": 10, "text": "技术类专家级"},
    ],
    "page": 'Forms2'
  },
  'Step16': {
    "type": 1,
    "steptitle": "职业标签 4/7",
    "titles": '您在哪些行业工作过 ？ 多选',
    "key": "step16_1",
    "list": [
      {"id": 1, "text": "互联网IT信息"},
      {"id": 2, "text": "金融投资证券"},
      {"id": 3, "text": "房地产建筑"},
      {"id": 4, "text": "商业服务消费"},
      {"id": 5, "text": "新闻传播与媒体"},
      {"id": 6, "text": "汽车制造"},
      {"id": 7, "text": "医药与化工"},
      {"id": 8, "text": "教育科研与院所"},
      {"id": 9, "text": "政府公共行政事业"},
      {"id": 10, "text": "社会团体NGO组织"},
    ],
    "page": ''
  },
  'Step17': {
    "type": 1,
    "steptitle": "职业标签 5/7",
    "titles": '您从事过的哪些岗位 ？多填项',
    "hasInput": true,
    "inputTab": false,
    "key": "step17_1",
    "list": [],
    "page": ''
  },
  'Step18': {
    "type": 1,
    "steptitle": "职业标签 6/7",
    "titles": '您有知名企业工作的经历吗 ？多填项',
    "hasInput": true,
    "key": "step18_1",
    "list": [],
    "page": ''
  },
  'Step19': {
    "type": 1,
    "steptitle": "职业标签 7/7",
    "titles": '您离职的原因是什么 ？ ',
    "key": "step19_1",
    "single": true,
    "list": [
      {"id": 1, "text": "劳动合同期满"},
      {"id": 2, "text": "单位裁员"},
      {"id": 3, "text": "内部机构或项目解散"},
      {"id": 4, "text": "单位解散"},
      {"id": 5, "text": "单位异地搬迁"},
      {"id": 6, "text": "不接受外派派驻"},
      {"id": 7, "text": "主动辞职"},
    ],
    "page": ''
  },
  'Step20': {
    "type": 1,
    "steptitle": "身份标签 1/9",
    "titles": '您有特殊经验背景吗 ？ ',
    "key": "step20_1",
    "single": true,
    "list": [
      {"id": 1, "text": "无"},
      {"id": 2, "text": "有创业经验"},
      {"id": 3, "text": "有对外股权投资经验"},
      {"id": 4, "text": "有大型项目、活动经验"},
      {"id": 5, "text": "有政府工作经验"},
      {"id": 6, "text": "有海外工作经验"},
    ],
    "page": ''
  },
  'Step21': {
    "type": 1,
    "steptitle": "身份标签 2/9",
    "titles": '您有存在特别约定的情形吗 ？',
    "key": "step21_1",
    "single": true,
    "list": [
      {"id": 1, "text": "无"},
      {"id": 2, "text": "有禁业、涉密保密约定"},
    ],
    "page": ''
  },
  'Step22': {
    "type": 1,
    "steptitle": "身份标签 3/9",
    "titles": '您的性格偏向是 ？',
    "key": "step22_1",
    "single": true,
    "list": [
      {"id": 1, "text": "更偏外向"},
      {"id": 2, "text": "外向"},
      {"id": 3, "text": "中性"},
      {"id": 4, "text": "内向"},
      {"id": 5, "text": "更偏内向"},
    ],
    "page": ''
  },
  'Step23': {
    "type": 2,
    "steptitle": "身份标签 4/9",
    "titles": '您认为自己更倾向哪种类型 ？ 多选',
    "key": "step23_1",
    "list": [
      {"id": 1, "text": "指挥领导型"},
      {"id": 2, "text": "专业技术型"},
      {"id": 3, "text": "专业和管理复合型"},
      {"id": 4, "text": "社交业务型"},
      {"id": 5, "text": "客户资源型"},
      {"id": 6, "text": "政府资源型"},
      {"id": 7, "text": "社会资源型"},
      {"id": 8, "text": "学霸型"},
      {"id": 9, "text": "强执行型"},
      {"id": 10, "text": "独立开拓型"},
      {"id": 11, "text": "创新创造型"},
      {"id": 12, "text": "钻研型"},
    ],
    "page": ''
  },
  'Step24': {
    "type": 1,
    "steptitle": "身份标签 5/9",
    "titles": '您接受的工作状态是 ？ 多选',
    "key": "step24_1",
    "list": [
      {"id": 1, "text": "996工作制"},
      {"id": 2, "text": "高强度工作"},
      {"id": 3, "text": "无薪加班"},
      {"id": 4, "text": "经常出差"},
      {"id": 5, "text": "短期外派"},
      {"id": 6, "text": "长期外派"},
    ],
    "page": ''
  },
  'Step25': {
    "type": 2,
    "steptitle": "身份标签 6/9",
    "titles": '您不接受的是 ？ 多选',
    "key": "step25_1",
    "list": [
      {"id": 1, "text": "996工作制"},
      {"id": 2, "text": "高强度工作"},
      {"id": 3, "text": "无薪加班"},
      {"id": 4, "text": "经常出差"},
      {"id": 5, "text": "短期外派"},
      {"id": 6, "text": "长期外派"},
      {"id": 7, "text": "创业公司"},
    ],
    "page": ''
  },
  'Step26': {
    "type": 1,
    "steptitle": "身份标签 7/9",
    "titles": '您掌握的外语水平是 ？',
    "key": "step26_1",
    "list": [
      {"id": 1, "text": "口语一般"},
      {"id": 2, "text": "口语熟练"},
      {"id": 3, "text": "口语精通"},
      {"id": 4, "text": "笔译一般"},
      {"id": 5, "text": "笔译熟练"},
      {"id": 6, "text": "笔译精通"},
    ],
    "page": ''
  },
  'Step27': {
    "type": 2,
    "steptitle": "身份标签 8/9",
    "titles": '您有其它特别的身份标签吗 ？',
    "key": "step27_1",
    "list": [
      {"id": 1, "text": "没有"},
      {"id": 2, "text": "博士后"},
      {"id": 3, "text": "双硕士"},
      {"id": 4, "text": "高级职称"},
      {"id": 5, "text": "中级职称"},
      {"id": 6, "text": "有发明专利"},
      {"id": 7, "text": "有学术著作"},
      {"id": 8, "text": "有科研课题成果"},
      {"id": 9, "text": " 有国家级奖项"},
      {"id": 10, "text": "有省部级奖项"},
      {"id": 11, "text": "有音乐特长"},
      {"id": 12, "text": "有艺术设计特长"},
      {"id": 13, "text": "有体育特长"},
    ],
    "page": ''
  },
  'Step28': {
    "type": 1,
    "steptitle": "身份标签 9/9",
    "titles": '您可以添加更多特别标签。 多填项',
    "hasInput": true,
    "key": "step28_1",
    "list": [],
    "page": ''
  },
};
