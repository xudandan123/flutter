import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:device_info/device_info.dart';
// import '../armory/logger.dart';
// import '../controllers/ability.dart';

// _sort(List list) {
//   list.sort((a, b) {
//     final int aID = a['id'];
//     final int bID = b['id'];
//     return (aID > bID) ? 1 : ((aID < bID) ? -1 : 0);
//   });
// }

class Constants {
  static const String EOL = '\n';

  static const Color COLOR_1FB3C4 = Color(0xFF1FB3C4);
  static const Color COLOR_1FB3C4_026 = Color(0x261FB3C4);
  static const Color COLOR_FFA900 = Color(0xFFFFA900);
  static const Color COLOR_F2F2F2 = Color(0xFFF2F2F2);
  static const Color COLOR_EFF0F0 = Color(0xFFEFF0F0);
  static const Color COLOR_DDDDDD = Color(0xFFDDDDDD);
  static const Color COLOR_CCCCCC = Color(0xFFCCCCCC);
  static const Color COLOR_999999 = Color(0xFF999999);
  static const Color COLOR_666666 = Color(0xFF666666);
  static const Color COLOR_333333 = Color(0xFF333333);
  static const Color COLOR_e5e5e5 = Color(0xFFE5E5E5);
  static const Color COLOR_808080 = Color(0xFF808080);
  static const Color COLOR_505050 = Color(0xFF505050);
  static const Color COLOR_000000_005 = Color.fromRGBO(0, 0, 0, 0.05);

  static const int STATUS_OK = 0;
  static const int ERR_PARAMETER = 100001; // 参数错误
  static const int ERR_MOBILE_INVALID = 100002; // 手机号格式错误
  static const int ERR_EMAIL_INVALID = 100003; // 邮箱格式错误

  // 权限相关
  static const int ERR_UN_AUTHORIZED = 200001; // 认证失败
  static const int ERR_PERMISSION_DENIED = 200002; // 无权限
  static const int ERR_TOKEN_EXPIRED = 200003; // 认证失败,token过期

  // 	账号相关
  static const int ERR_ACCOUNT_DISABLED = 300001; // 账号已被冻结
  static const int ERR_ACCOUNT_NOT_SAVE = 300002; // 未完善资料
  static const int ERR_ACCOUNT_NOT_EXIST = 300003; // 账号未注册
  static const int ERR_ACCOUNT_EXIST = 300004; // 账号已注册
  static const int ERR_MOBILE_REGISTERED = 300005; // 手机号已注册
  static const int ERR_PASSWORD_INVALID = 300006; // 密码必须包含数字和字母，5-16位
  static const int ERR_PASSWORD_EMPTY = 300007; // 密码必填
  static const int ERR_PASSWORD = 300008; // 用户名或密码错误
  static const int ERR_QR_CODE_NOTSCAN = 300009; // 还未扫描登录二维码
  static const int ERR_RECRUITER_REGISTERED = 300010; // 您已注册，请勿重复提交

  // 企业相关
  static const int ERR_COMPANY_NOT_EXIST = 400001; // 企业不存在
  static const int ERR_COMPANY_REGISTERED = 400002; // 企业已注册
  static const int ERR_COMPANY_STATUS_CLOSED = 400003; // 企业状态不正常

  // 验证码相关
  static const int ERR_CAPTCHA_INVALID = 500001; // 验证码错误
  static const int ERR_CAPTCHA_EXPIRED = 500002; // 验证码过期
  static const int ERR_CAPTCHA_TOO_OFTEN = 500003; // 发送验证码过于频繁
  static const int ERR_CAPTCHA_SEND_FAILED = 500004; // 验证码发送失败

  // 职级
  static const int JOB_RANK_1 = 1; // 员工级/助理级
  static const int JOB_RANK_2 = 2; // 主管级/初级
  static const int JOB_RANK_3 = 3; // 经理级/中级
  static const int JOB_RANK_4 = 4; // 总监级/中高级
  static const int JOB_RANK_5 = 5; // 高管级/高级
  static const int JOB_RANK_6 = 6; // 总经理级/专家级
  static const List JOB_RANK_LIST = [
    {'id': 1, 'title': '员工级/助理级'},
    {'id': 2, 'title': '主管级/初级'},
    {'id': 3, 'title': '经理级/中级'},
    {'id': 4, 'title': '总监级/中高级'},
    {'id': 5, 'title': '高管级/高级'},
    {'id': 6, 'title': '总经理级/专家级'},
  ];

  // 学历
  static List educationBackgroundList = [];

  // 行业背景
  static List industryBackgroundList = [];

  // 职业背景
  static List jobBackgroundList = [];

  // 工作经验
  static List workExperienceList = [];

  // 管理经验
  static List managerExperienceList = [];

  // 系统错误
  static const int ERR_SYSTEM = 600001; // 系统错误

  static const int USER_ROLE_UNKNOWN = 0;
  static const int USER_ROLE_AGENT = 1;
  static const int USER_ROLE_TALENT = 2;
  static const int USER_ROLE_RECRUITER = 3;

  static const int SMS_TYPE_REGISTER = 1;
  static const int SMS_TYPE_LOGIN = 2;
  static const int SMS_TYPE_UPDATE_PASSWORD = 3;
  static const int SMS_TYPE_UPDATE_MOBILE = 4;
  static const int SMS_TYPE_RESET_PASSWORD = 5;

  static List<Map<String, dynamic>> districts;

  // static Future<Response> _loadDistrictList() {
  //   return Controller.get('/statics/city.json');
  // }

  // static Future<Response> _loadCommon() {
  //   return Controller.get('/common/global');
  // }

  static Map<String, dynamic> deviceInfo = {};

  static List userTab = [
    {"text": "身份注册", "height": 32.0, "right": 10.0, "left": 0.0},
    {"text": "个人中心", "height": 32.0, "right": 0.0, "left": 10.0}
  ];
  static List hasOr = [
    {"text": "有", "height": 32.0, "right": 0.0, "left": 0.0},
    {"text": "没有", "height": 32.0, "right": 0.0, "left": 0.0}
  ];
  static List companyOr = [
    {"text": "有定向单位", "height": 32.0, "right": 0.0, "left": 0.0},
    {"text": "没有", "height": 32.0, "right": 0.0, "left": 0.0}
  ];
  static List agentUserList = [
    {"step": 1, "text": "1. K-服务标签  - 6"},
    {"step": 7, "text": "2. M-照片视频 - 1"},
    {"step": 8, "text": "3. N-学历标签 - 2"},
    {"step": 10, "text": "4. O-职业标签 - 3"},
    {"step": 13, "text": "5. P-身份标签  - 4"}
  ];
  static List talentUserList = [
    {"step": 1, "text": "1. A-求职标签 - 9"},
    {"step": 10, "text": "2. E-照片视频 - 1"},
    {"step": 11, "text": "3. F-学历标签 - 2"},
    {"step": 13, "text": "4. G-职业标签 - 7"},
    {"step": 20, "text": "5. H-身份标签 - 8"}
  ];
  static List education = [
    {"id": 1, "text": "博士"},
    {"id": 2, "text": "硕士"},
    {"id": 3, "text": "本科"},
    {"id": 4, "text": "专科"},
  ];
  static List foreignLanguage = [
    {"id": 1, "text": "英语"},
    {"id": 2, "text": "日语"},
    {"id": 3, "text": "法语"},
    {"id": 4, "text": "德语"},
    {"id": 5, "text": "意大利语"},
    {"id": 6, "text": "西班牙语"},
    {"id": 7, "text": "俄语"},
  ];

 static List listIntentionTitle = [
  {
    "text": '意向类别'
  },
  {
    "text": '岗位和职级',
  },
  {
    "text": '期望薪资',
  },
  {
    "text": '城市',
  },
  {
    "text": '行业',
  },
  {
    "text": '状态',
  },
  {
    "text": '到岗时间',
  },
  {
    "text": '家庭地址'
  }
];

 static List educationList = [
  {
    "text": '学历背景',
    "type": "circle",
    "data": ['双学位硕士', '211院校', '海外留学']
  },
  {
    "text": '毕业院校',
    "type": 'list',
    "data": ['华中科技大学', '计算机科学与管理专业', '2012年12月毕业']
  }
];

 static List occupation = [
  {
    "text": '经验',
    "data": ['工作10年（管理5年）']
  },
  {
    "text": '最近工作单位',
  },
  {
    "text": '行业经历',
  },
  {
    "text": '任职岗位经历',
  },
  {
    "text": '名企经历',
  },
  {
    "text": '离职原因',
  },
];
 static List identity = [
  {
    "text": '特殊工作经验'
  },
  {
    "text": '竟业保密',
  },
  {
    "text": '性格倾向',
  },
  {
    "text": '人才类型',
  },
  {
    "text": '接受',
  },
  {
    "text": '不接受',
  },
  {
    "text": '外语水平',
  },
  {
    "text": '特别标签'
  }
];
static Map agentAddInputTitle = {
  2: '请输入单位名称   最多添加3个',
  11: '请输入岗位名称 ',
  12: '请输入知名企业品牌名',
  16: '请输入标签名，'
};

static Map talentAddInputTitle = {
  2: '请输入单位名称   最多添加3个',
  17: '请输入岗位名称 ',
  18: '请输入知名企业品牌名',
  28: '请输入标签名'
};
  // static init() async {
  //   final _di = DeviceInfoPlugin();
  //   if (Platform.isAndroid) {
  //     final di = await _di.androidInfo;
  //     deviceInfo['platform'] = 'android';
  //     deviceInfo['model'] = di.model;
  //   } else if (Platform.isIOS) {
  //     final di = await _di.iosInfo;
  //     deviceInfo['platform'] = 'ios';
  //     deviceInfo['model'] = di.model;
  //   }

  //   final resDistrictList = await _loadDistrictList();
  //   if (resDistrictList.data != null) {
  //     final _districts = resDistrictList.data.data;
  //     districts = List<Map<String, dynamic>>();
  //     for (var item in _districts) {
  //       districts.add(item);
  //     }
  //   }

  //   final resCommon = await _loadCommon();
  //   try {
  //     (resCommon.data.data['Degree'] as Map)
  //         .forEach((k, v) => v['id'] > 0 ? educationBackgroundList.add({'id': v['id'], 'title': v['name']}) : null);
  //     _sort(educationBackgroundList);
  //     (resCommon.data.data['Industry'] as Map)
  //         .forEach((k, v) => v['id'] > 0 ? industryBackgroundList.add({'id': v['id'], 'title': v['name']}) : null);
  //     _sort(industryBackgroundList);
  //     (resCommon.data.data['JobBackGround'] as Map)
  //         .forEach((k, v) => v['id'] > 0 ? jobBackgroundList.add({'id': v['id'], 'title': v['name']}) : null);
  //     _sort(jobBackgroundList);
  //     (resCommon.data.data['WorkExperience'] as Map)
  //         .forEach((k, v) => v['id'] > 0 ? workExperienceList.add({'id': v['id'], 'title': v['name']}) : null);
  //     _sort(workExperienceList);
  //     (resCommon.data.data['ManagerExperience'] as Map)
  //         .forEach((k, v) => v['id'] > 0 ? managerExperienceList.add({'id': v['id'], 'title': v['name']}) : null);
  //     _sort(managerExperienceList);
  //   } catch (e) {
  //     logger.e(e);
  //   }
  // }
}
