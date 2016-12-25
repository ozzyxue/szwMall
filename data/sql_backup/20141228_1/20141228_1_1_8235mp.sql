-- TOTAL : 1
-- ECMall 2.0 SQL Dump Program
-- Microsoft-IIS/7.5
-- 
-- DATE : 2014-12-28 09:52:53
-- MYSQL SERVER VERSION : 5.1.65-community
-- PHP VERSION : 5.2.17
-- ECMall VERSION : 2.3.0
-- Vol : 1
DROP TABLE IF EXISTS ecm_acategory;
CREATE TABLE ecm_acategory (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  cate_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (cate_id)
) TYPE=MyISAM;
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('1','商城帮助','0','0','help');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('2','商城公告','0','0','notice');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('3','内置文章','0','0','system');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('4','帮助中心','1','1',null);
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('5','支付帮助','1','2',null);
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('6','消费保障','1','3',null);
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('7','服务条款','1','4',null);
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('8','特色服务','1','5',null);
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('9','商家服务','1','6',null);
DROP TABLE IF EXISTS ecm_address;
CREATE TABLE ecm_address (
  addr_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  consignee varchar(60) NOT NULL DEFAULT '',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(255) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  zipcode varchar(20) DEFAULT NULL,
  phone_tel varchar(60) DEFAULT NULL,
  phone_mob varchar(60) DEFAULT NULL,
  PRIMARY KEY (addr_id),
  KEY user_id (user_id)
) TYPE=MyISAM;
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('1','3','超级买家','1','中国','请如实填写收货人详细地址','','','8888888');
DROP TABLE IF EXISTS ecm_article;
CREATE TABLE ecm_article (
  article_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  title varchar(100) NOT NULL DEFAULT '',
  cate_id int(10) NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  link varchar(255) DEFAULT NULL,
  content text,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  add_time int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (article_id),
  KEY `code` (`code`),
  KEY cate_id (cate_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('1','eula','用户服务协议','3','0','','<p>特别提醒用户认真阅读本《用户服务协议》(下称《协议》) 中各条款。除非您接受本《协议》条款，否则您无权使用本网站提供的相关服务。您的使用行为将视为对本《协议》的接受，并同意接受本《协议》各项条款的约束。 <br /> <br /> <strong>一、定义</strong><br /></p>\r\n<ol>\r\n<li>\"用户\"指符合本协议所规定的条件，同意遵守本网站各种规则、条款（包括但不限于本协议），并使用本网站的个人或机构。</li>\r\n<li>\"卖家\"是指在本网站上出售物品的用户。\"买家\"是指在本网站购买物品的用户。</li>\r\n<li>\"成交\"指买家根据卖家所刊登的交易要求，在特定时间内提出最优的交易条件，因而取得依其提出的条件购买该交易物品的权利。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>二、用户资格</strong><br /> <br /> 只有符合下列条件之一的人员或实体才能申请成为本网站用户，可以使用本网站的服务。</p>\r\n<ol>\r\n<li>年满十八岁，并具有民事权利能力和民事行为能力的自然人；</li>\r\n<li>未满十八岁，但监护人（包括但不仅限于父母）予以书面同意的自然人；</li>\r\n<li>根据中国法律或设立地法律、法规和/或规章成立并合法存在的公司、企事业单位、社团组织和其他组织。</li>\r\n</ol>\r\n<p><br /> 无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不当注册为本网站用户或超过其民事权利或行为能力范围从事交易的，其与本网站之间的协议自始无效，本网站一经发现，有权立即注销该用户，并追究其使用本网站\"服务\"的一切法律责任。<br /> <br /> <strong>三.用户的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>用户有权根据本协议的规定及本网站发布的相关规则，利用本网站网上交易平台登录物品、发布交易信息、查询物品信息、购买物品、与其他用户订立物品买卖合同、在本网站社区发帖、参加本网站的有关活动及有权享受本网站提供的其他的有关资讯及信息服务。</li>\r\n<li>用户有权根据需要更改密码和交易密码。用户应对以该用户名进行的所有活动和事件负全部责任。</li>\r\n<li>用户有义务确保向本网站提供的任何资料、注册信息真实准确，包括但不限于真实姓名、身份证号、联系电话、地址、邮政编码等。保证本网站及其他用户可以通过上述联系方式与自己进行联系。同时，用户也有义务在相关资料实际变更时及时更新有关注册资料。</li>\r\n<li>用户不得以任何形式擅自转让或授权他人使用自己在本网站的用户帐号。</li>\r\n<li>用户有义务确保在本网站网上交易平台上登录物品、发布的交易信息真实、准确，无误导性。</li>\r\n<li>用户不得在本网站网上交易平台买卖国家禁止销售的或限制销售的物品、不得买卖侵犯他人知识产权或其他合法权益的物品，也不得买卖违背社会公共利益或公共道德的物品。</li>\r\n<li>用户不得在本网站发布各类违法或违规信息。包括但不限于物品信息、交易信息、社区帖子、物品留言，店铺留言，评价内容等。</li>\r\n<li>用户在本网站交易中应当遵守诚实信用原则，不得以干预或操纵物品价格等不正当竞争方式扰乱网上交易秩序，不得从事与网上交易无关的不当行为，不得在交易平台上发布任何违法信息。</li>\r\n<li>用户不应采取不正当手段（包括但不限于虚假交易、互换好评等方式）提高自身或他人信用度，或采用不正当手段恶意评价其他用户，降低其他用户信用度。</li>\r\n<li>用户承诺自己在使用本网站网上交易平台实施的所有行为遵守国家法律、法规和本网站的相关规定以及各种社会公共利益或公共道德。对于任何法律后果的发生，用户将以自己的名义独立承担所有相应的法律责任。</li>\r\n<li>用户在本网站网上交易过程中如与其他用户因交易产生纠纷，可以请求本网站从中予以协调。用户如发现其他用户有违法或违反本协议的行为，可以向本网站举报。如用户因网上交易与其他用户产生诉讼的，用户有权通过司法部门要求本网站提供相关资料。</li>\r\n<li>用户应自行承担因交易产生的相关费用，并依法纳税。</li>\r\n<li>未经本网站书面允许，用户不得将本网站资料以及在交易平台上所展示的任何信息以复制、修改、翻译等形式制作衍生作品、分发或公开展示。</li>\r\n<li>用户同意接收来自本网站的信息，包括但不限于活动信息、交易信息、促销信息等。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>四、 本网站的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>本网站不是传统意义上的\"拍卖商\"，仅为用户提供一个信息交流、进行物品买卖的平台，充当买卖双方之间的交流媒介，而非买主或卖主的代理商、合伙  人、雇员或雇主等经营关系人。公布在本网站上的交易物品是用户自行上传进行交易的物品，并非本网站所有。对于用户刊登物品、提供的信息或参与竞标的过程，  本网站均不加以监视或控制，亦不介入物品的交易过程，包括运送、付款、退款、瑕疵担保及其它交易事项，且不承担因交易物品存在品质、权利上的瑕疵以及交易  方履行交易协议的能力而产生的任何责任，对于出现在拍卖上的物品品质、安全性或合法性，本网站均不予保证。</li>\r\n<li>本网站有义务在现有技术水平的基础上努力确保整个网上交易平台的正常运行，尽力避免服务中断或将中断时间限制在最短时间内，保证用户网上交易活动的顺利进行。</li>\r\n<li>本网站有义务对用户在注册使用本网站网上交易平台中所遇到的问题及反映的情况及时作出回复。 </li>\r\n<li>本网站有权对用户的注册资料进行查阅，对存在任何问题或怀疑的注册资料，本网站有权发出通知询问用户并要求用户做出解释、改正，或直接做出处罚、删除等处理。</li>\r\n<li>用  户因在本网站网上交易与其他用户产生纠纷的，用户通过司法部门或行政部门依照法定程序要求本网站提供相关资料，本网站将积极配合并提供有关资料；用户将纠  纷告知本网站，或本网站知悉纠纷情况的，经审核后，本网站有权通过电子邮件及电话联系向纠纷双方了解纠纷情况，并将所了解的情况通过电子邮件互相通知对  方。 </li>\r\n<li>因网上交易平台的特殊性，本网站没有义务对所有用户的注册资料、所有的交易行为以及与交易有关的其他事项进行事先审查，但如发生以下情形，本网站有权限制用户的活动、向用户核实有关资料、发出警告通知、暂时中止、无限期地中止及拒绝向该用户提供服务：         \r\n<ul>\r\n<li>用户违反本协议或因被提及而纳入本协议的文件；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据，而本网站无法联系到该用户核证或验证该用户向本网站提供的任何资料；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据。本网站以普通非专业交易者的知识水平标准对相关内容进行判别，可以明显认为这些内容或行为可能对本网站用户或本网站造成财务损失或法律责任。 </li>\r\n</ul>\r\n</li>\r\n<li>在反网络欺诈行动中，本着保护广大用户利益的原则，当用户举报自己交易可能存在欺诈而产生交易争议时，本网站有权通过表面判断暂时冻结相关用户账号，并有权核对当事人身份资料及要求提供交易相关证明材料。</li>\r\n<li>根据国家法律法规、本协议的内容和本网站所掌握的事实依据，可以认定用户存在违法或违反本协议行为以及在本网站交易平台上的其他不当行为，本网站有权在本网站交易平台及所在网站上以网络发布形式公布用户的违法行为，并有权随时作出删除相关信息，而无须征得用户的同意。</li>\r\n<li>本  网站有权在不通知用户的前提下删除或采取其他限制性措施处理下列信息：包括但不限于以规避费用为目的；以炒作信用为目的；存在欺诈等恶意或虚假内容；与网  上交易无关或不是以交易为目的；存在恶意竞价或其他试图扰乱正常交易秩序因素；该信息违反公共利益或可能严重损害本网站和其他用户合法利益的。</li>\r\n<li>用  户授予本网站独家的、全球通用的、永久的、免费的信息许可使用权利，本网站有权对该权利进行再授权，依此授权本网站有权(全部或部份地)  使用、复制、修订、改写、发布、翻译、分发、执行和展示用户公示于网站的各类信息或制作其派生作品，以现在已知或日后开发的任何形式、媒体或技术，将上述  信息纳入其他作品内。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>五、服务的中断和终止</strong><br /></p>\r\n<ol>\r\n<li>在  本网站未向用户收取相关服务费用的情况下，本网站可自行全权决定以任何理由  (包括但不限于本网站认为用户已违反本协议的字面意义和精神，或用户在超过180天内未登录本网站等)  终止对用户的服务，并不再保存用户在本网站的全部资料（包括但不限于用户信息、商品信息、交易信息等）。同时本网站可自行全权决定，在发出通知或不发出通  知的情况下，随时停止提供全部或部分服务。服务终止后，本网站没有义务为用户保留原用户资料或与之相关的任何信息，或转发任何未曾阅读或发送的信息给用户  或第三方。此外，本网站不就终止对用户的服务而对用户或任何第三方承担任何责任。 </li>\r\n<li>如用户向本网站提出注销本网站注册用户身份，需经本网站审核同意，由本网站注销该注册用户，用户即解除与本网站的协议关系，但本网站仍保留下列权利：         \r\n<ul>\r\n<li>用户注销后，本网站有权保留该用户的资料,包括但不限于以前的用户资料、店铺资料、商品资料和交易记录等。 </li>\r\n<li>用户注销后，如用户在注销前在本网站交易平台上存在违法行为或违反本协议的行为，本网站仍可行使本协议所规定的权利。 </li>\r\n</ul>\r\n</li>\r\n<li>如存在下列情况，本网站可以通过注销用户的方式终止服务：         \r\n<ul>\r\n<li>在用户违反本协议相关规定时，本网站有权终止向该用户提供服务。本网站将在中断服务时通知用户。但如该用户在被本网站终止提供服务后，再一次直接或间接或以他人名义注册为本网站用户的，本网站有权再次单方面终止为该用户提供服务；</li>\r\n<li>一旦本网站发现用户注册资料中主要内容是虚假的，本网站有权随时终止为该用户提供服务； </li>\r\n<li>本协议终止或更新时，用户未确认新的协议的。 </li>\r\n<li>其它本网站认为需终止服务的情况。 </li>\r\n</ul>\r\n</li>\r\n<li>因用户违反相关法律法规或者违反本协议规定等原因而致使本网站中断、终止对用户服务的，对于服务中断、终止之前用户交易行为依下列原则处理：         \r\n<ul>\r\n<li>本网站有权决定是否在中断、终止对用户服务前将用户被中断或终止服务的情况和原因通知用户交易关系方，包括但不限于对该交易有意向但尚未达成交易的用户,参与该交易竞价的用户，已达成交易要约用户。</li>\r\n<li>服务中断、终止之前，用户已经上传至本网站的物品尚未交易或交易尚未完成的，本网站有权在中断、终止服务的同时删除此项物品的相关信息。 </li>\r\n<li>服务中断、终止之前，用户已经就其他用户出售的具体物品作出要约，但交易尚未结束，本网站有权在中断或终止服务的同时删除该用户的相关要约和信息。</li>\r\n</ul>\r\n</li>\r\n<li>本网站若因用户的行为（包括但不限于刊登的商品、在本网站社区发帖等）侵害了第三方的权利或违反了相关规定，而受到第三方的追偿或受到主管机关的处分时，用户应赔偿本网站因此所产生的一切损失及费用。</li>\r\n<li>对违反相关法律法规或者违反本协议规定，且情节严重的用户，本网站有权终止该用户的其它服务。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>六、协议的修订</strong><br /> <br /> 本协议可由本网站随时修订，并将修订后的协议公告于本网站之上，修订后的条款内容自公告时起生效，并成为本协议的一部分。用户若在本协议修改之后，仍继续使用本网站，则视为用户接受和自愿遵守修订后的协议。本网站行使修改或中断服务时，不需对任何第三方负责。<br /> <br /> <strong>七、 本网站的责任范围 </strong><br /> <br /> 当用户接受该协议时，用户应明确了解并同意∶</p>\r\n<ol>\r\n<li>是否经由本网站下载或取得任何资料，由用户自行考虑、衡量并且自负风险，因下载任何资料而导致用户电脑系统的任何损坏或资料流失，用户应负完全责任。</li>\r\n<li>用户经由本网站取得的建议和资讯，无论其形式或表现，绝不构成本协议未明示规定的任何保证。</li>\r\n<li>基于以下原因而造成的利润、商誉、使用、资料损失或其它无形损失，本网站不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿（即使本网站已被告知前款赔偿的可能性）：         \r\n<ul>\r\n<li>本网站的使用或无法使用。</li>\r\n<li>经由或通过本网站购买或取得的任何物品，或接收之信息，或进行交易所随之产生的替代物品及服务的购买成本。</li>\r\n<li>用户的传输或资料遭到未获授权的存取或变更。</li>\r\n<li>本网站中任何第三方之声明或行为。</li>\r\n<li>本网站其它相关事宜。</li>\r\n</ul>\r\n</li>\r\n<li>本网站只是为用户提供一个交易的平台，对于用户所刊登的交易物品的合法性、真实性及其品质，以及用户履行交易的能力等，本网站一律不负任何担保责任。用户如果因使用本网站，或因购买刊登于本网站的任何物品，而受有损害时，本网站不负任何补偿或赔偿责任。</li>\r\n<li>本  网站提供与其它互联网上的网站或资源的链接，用户可能会因此连结至其它运营商经营的网站，但不表示本网站与这些运营商有任何关系。其它运营商经营的网站均  由各经营者自行负责，不属于本网站控制及负责范围之内。对于存在或来源于此类网站或资源的任何内容、广告、产品或其它资料，本网站亦不予保证或负责。因使  用或依赖任何此类网站或资源发布的或经由此类网站或资源获得的任何内容、物品或服务所产生的任何损害或损失，本网站不负任何直接或间接的责任。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>八.、不可抗力</strong><br /> <br /> 因不可抗力或者其他意外事件，使得本协议的履行不可能、不必要或者无意义的，双方均不承担责任。本合同所称之不可抗力意指不能预见、不能避免并不能克服的  客观情况，包括但不限于战争、台风、水灾、火灾、雷击或地震、罢工、暴动、法定疾病、黑客攻击、网络病毒、电信部门技术管制、政府行为或任何其它自然或人  为造成的灾难等客观情况。<br /> <br /> <strong>九、争议解决方式</strong><br /></p>\r\n<ol>\r\n<li>本协议及其修订本的有效性、履行和与本协议及其修订本效力有关的所有事宜，将受中华人民共和国法律管辖，任何争议仅适用中华人民共和国法律。</li>\r\n<li>因  使用本网站服务所引起与本网站的任何争议，均应提交深圳仲裁委员会按照该会届时有效的仲裁规则进行仲裁。相关争议应单独仲裁，不得与任何其它方的争议在任  何仲裁中合并处理，该仲裁裁决是终局，对各方均有约束力。如果所涉及的争议不适于仲裁解决，用户同意一切争议由人民法院管辖。</li>\r\n</ol>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('2','cert_autonym','什么是实名认证','3','0','','<p><strong>什么是实名认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('3','cert_material','什么是实体店铺认证','3','0','','<p><strong>什么是实体店铺认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('4','setup_store','开店协议','3','0','','<p>使用本公司服务所须遵守的条款和条件。<br /><br />1.用户资格<br />本公司的服务仅向适用法律下能够签订具有法律约束力的合同的个人提供并仅由其使用。在不限制前述规定的前提下，本公司的服务不向18周岁以下或被临时或无限期中止的用户提供。如您不合资格，请勿使用本公司的服务。此外，您的帐户（包括信用评价）和用户名不得向其他方转让或出售。另外，本公司保留根据其意愿中止或终止您的帐户的权利。<br /><br />2.您的资料（包括但不限于所添加的任何商品）不得：<br />*具有欺诈性、虚假、不准确或具误导性；<br />*侵犯任何第三方著作权、专利权、商标权、商业秘密或其他专有权利或发表权或隐私权；<br />*违反任何适用的法律或法规（包括但不限于有关出口管制、消费者保护、不正当竞争、刑法、反歧视或贸易惯例/公平贸易法律的法律或法规）；<br />*有侮辱或者诽谤他人，侵害他人合法权益的内容；<br />*有淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的内容；<br />*包含可能破坏、改变、删除、不利影响、秘密截取、未经授权而接触或征用任何系统、数据或个人资料的任何病毒、特洛依木马、蠕虫、定时炸弹、删除蝇、复活节彩蛋、间谍软件或其他电脑程序；<br /><br />3.违约<br />如发生以下情形，本公司可能限制您的活动、立即删除您的商品、向本公司社区发出有关您的行为的警告、发出警告通知、暂时中止、无限期地中止或终止您的用户资格及拒绝向您提供服务：<br />(a)您违反本协议或纳入本协议的文件；<br />(b)本公司无法核证或验证您向本公司提供的任何资料；<br />(c)本公司相信您的行为可能对您、本公司用户或本公司造成损失或法律责任。<br /><br />4.责任限制<br />本公司、本公司的关联公司和相关实体或本公司的供应商在任何情况下均不就因本公司的网站、本公司的服务或本协议而产生或与之有关的利润损失或任何特别、间接或后果性的损害（无论以何种方式产生，包括疏忽）承担任何责任。您同意您就您自身行为之合法性单独承担责任。您同意，本公司和本公司的所有关联公司和相关实体对本公司用户的行为的合法性及产生的任何结果不承担责任。<br /><br />5.无代理关系<br />用户和本公司是独立的合同方，本协议无意建立也没有创立任何代理、合伙、合营、雇员与雇主或特许经营关系。本公司也不对任何用户及其网上交易行为做出明示或默许的推荐、承诺或担保。<br /><br />6.一般规定<br />本协议在所有方面均受中华人民共和国法律管辖。本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。</p>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('5','msn_privacy','MSN在线通隐私策略','3','0','','<p>Msn在线通隐私策略旨在说明您在本网站使用Msn在线通功能时我们如何保护您的Msn帐号信息。<br /> 我们认为隐私权非常重要。我们希望此隐私保护中心有助于您在本网站更好使用Msn在线通<br /> <strong>我们收集的信息</strong></p><blockquote>* 您在本网站激活Msn在线通时,程序将会记录您的Msn在线通帐号</blockquote><p><br /> <strong>您的选择</strong></p><blockquote>* 您可以在本网站随时注销您的Msn在线通帐号</blockquote><p><br /> <strong>其他隐私声明</strong></p><blockquote>* 如果我们需要改变本网站Msn在线通的隐私策略, 我们会把相关的改动在此页面发布.</blockquote>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('6','','怎么购物','4','0','','<p>怎么购物内容</p>','255','1','1403733977');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('7','','积分说明','4','0','','<p>积分说明内容</p>','255','1','1403733991');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('8','','如何维权','4','0','','<p>如何维权内容</p>','255','1','1403734008');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('9','','优惠券使用','4','0','','<p>优惠券使用内容</p>','255','1','1403734025');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('10','','付款方式','5','0','','<p>付款方式内容</p>','255','1','1403734047');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('11','','发票说明','5','0','','<p>发票说明内容</p>','255','1','1403734068');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('12','','货到付款','5','0','','<p>货到付款内容</p>','255','1','1403734088');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('13','','在线支付','5','0','','<p>在线支付内容</p>','255','1','1403734102');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('14','','服务承诺','6','0','','<p>服务承诺内容</p>','255','1','1403734136');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('15','','配送说明','6','0','','<p>配送说明内容</p>','255','1','1403734172');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('16','','售后上门','6','0','','<p>售后上门内容</p>','255','1','1403734196');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('17','','买差赔付','6','0','','<p>买差赔付内容</p>','255','1','1403734223');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('18','','退换货说明','7','0','','<p>退换货说明内容</p>','255','1','1403734264');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('19','','退款政策','7','0','','<p>退款政策内容</p>','255','1','1403734296');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('20','','退换货流程','7','0','','<p>退换货流程内容</p>','255','1','1403734346');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('21','','服务评论规则','7','0','','<p>服务评论规则内容</p>','255','1','1403734380');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('22','','会员卡购买','8','0','','<p>会员卡购买内容</p>','255','1','1403734416');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('23','','商家服务说明','9','0','','<p>商家服务说明内容</p>','255','1','1403734442');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('24','','我要开店','9','0','','','255','1','1403734666');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('25','','商家后台','9','0','','','255','1','1403734769');
DROP TABLE IF EXISTS ecm_attribute;
CREATE TABLE ecm_attribute (
  attr_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  attr_name varchar(60) NOT NULL DEFAULT '',
  input_mode varchar(10) NOT NULL DEFAULT 'text',
  def_value varchar(255) DEFAULT NULL,
  PRIMARY KEY (attr_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_brand;
CREATE TABLE ecm_brand (
  brand_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  brand_name varchar(100) NOT NULL DEFAULT '',
  brand_logo varchar(255) DEFAULT NULL,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  recommended tinyint(3) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  if_show tinyint(2) unsigned NOT NULL DEFAULT '1',
  tag varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (brand_id),
  KEY tag (tag)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_cart;
CREATE TABLE ecm_cart (
  rec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  session_id varchar(32) NOT NULL DEFAULT '',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_name varchar(255) NOT NULL DEFAULT '',
  spec_id int(10) unsigned NOT NULL DEFAULT '0',
  specification varchar(255) DEFAULT NULL,
  price decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  quantity int(10) unsigned NOT NULL DEFAULT '1',
  goods_image varchar(255) DEFAULT NULL,
  PRIMARY KEY (rec_id),
  KEY session_id (session_id),
  KEY user_id (user_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_cate_pvs;
CREATE TABLE ecm_cate_pvs (
  cate_id int(11) NOT NULL,
  pvs text NOT NULL
) TYPE=MyISAM;
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('19','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('20','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('97','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
DROP TABLE IF EXISTS ecm_category_goods;
CREATE TABLE ecm_category_goods (
  cate_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (cate_id,goods_id),
  KEY goods_id (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','1');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','2');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','3');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','4');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','5');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','6');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','7');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','8');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','9');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','10');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','12');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','13');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','14');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','15');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','16');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','19');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','20');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','21');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','22');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','23');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','24');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','25');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','30');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','31');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','34');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','35');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','36');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','37');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','28');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','29');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','40');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','42');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','43');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','44');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','45');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','46');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','47');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','48');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','49');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','50');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','51');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','52');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','53');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','54');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','55');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','56');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','57');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','59');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','58');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','60');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','61');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','62');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','63');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','64');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','65');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','66');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','67');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','68');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','69');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','81');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','82');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','83');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','85');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','86');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','87');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','88');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','89');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','90');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','93');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','70');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','71');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','72');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','73');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','75');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','76');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','77');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','80');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','100');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','101');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','102');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','103');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','104');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','105');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','106');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','107');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','108');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','109');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','110');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','111');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','112');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','113');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','114');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','115');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','116');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','91');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','92');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','94');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','95');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','96');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','97');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','98');
DROP TABLE IF EXISTS ecm_category_store;
CREATE TABLE ecm_category_store (
  cate_id int(10) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (cate_id,store_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_collect;
CREATE TABLE ecm_collect (
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'goods',
  item_id int(10) unsigned NOT NULL DEFAULT '0',
  keyword varchar(60) DEFAULT NULL,
  add_time int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (user_id,`type`,item_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_coupon;
CREATE TABLE ecm_coupon (
  coupon_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  coupon_name varchar(100) NOT NULL DEFAULT '',
  coupon_value decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  use_times int(10) unsigned NOT NULL DEFAULT '0',
  start_time int(10) unsigned NOT NULL DEFAULT '0',
  end_time int(10) unsigned NOT NULL DEFAULT '0',
  min_amount decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  if_issue tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (coupon_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_coupon_sn;
CREATE TABLE ecm_coupon_sn (
  coupon_sn varchar(20) NOT NULL,
  coupon_id int(10) unsigned NOT NULL DEFAULT '0',
  remain_times int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (coupon_sn),
  KEY coupon_id (coupon_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_friend;
CREATE TABLE ecm_friend (
  owner_id int(10) unsigned NOT NULL DEFAULT '0',
  friend_id int(10) unsigned NOT NULL DEFAULT '0',
  add_time varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (owner_id,friend_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_function;
CREATE TABLE ecm_function (
  func_code varchar(20) NOT NULL DEFAULT '',
  func_name varchar(60) NOT NULL DEFAULT '',
  `privileges` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (func_code)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_gcategory;
CREATE TABLE ecm_gcategory (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  cate_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (cate_id),
  KEY store_id (store_id,parent_id)
) TYPE=MyISAM;
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('1','0','网上菜场、果蔬生鲜','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('2','0','休闲食品、酒水饮料','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('3','0','进口食品、进口乳品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('4','0','粮油干货、厨房调料','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('5','0','美容化妆、个人护理','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('6','0','母婴用品、 玩具','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('7','0','厨房、清洁、卫浴用品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('8','0','家居生活、汽车用品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('9','0','大家电、生活电器','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('10','0','服饰箱包鞋靴、 运动','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('11','0','钟表、 礼品、 图书报刊','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('12','0','电脑办公、 手机数码','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('13','0','微店铺、乐生活','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('14','0','水果','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('15','0','蔬菜','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('16','0','肉类','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('17','0','面豆制品','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('18','0','南北干货','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('19','0','苹果','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('20','0','葡萄','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('21','0','红提','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('22','0','柚子','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('23','0','西瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('24','0','甜瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('25','0','芒果','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('26','0','橙梨','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('27','0','柠檬','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('28','0','桃子','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('29','0','石榴','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('30','0','蓝莓','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('31','0','木瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('32','0','哈密瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('33','0','火龙果','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('34','0','车厘子','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('35','0','黑布林','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('36','0','猕猴桃','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('37','0','美食净菜','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('38','0','葱姜蒜','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('39','0','菌菇类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('40','0','有机类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('41','0','瓜果类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('42','0','叶菜','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('43','0','根类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('44','0','豆类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('45','0','茎类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('46','0','牛肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('47','0','猪肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('48','0','鸡肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('49','0','鸭肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('50','0','生鲜豆品','17','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('51','0','熟食豆品','17','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('52','0','淀粉制品','17','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('53','0','香菇','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('54','0','枸杞','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('55','0','桂圆','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('56','0','莲子','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('57','0','木耳','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('58','0','银耳','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('59','0','黄花菜','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('60','0','百合干','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('61','0','休闲零食','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('62','0','饼干糕点','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('63','0','牛奶乳品','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('64','0','酒类商城','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('65','0','糖/巧克力','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('66','0','饮料饮品','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('67','0','冲调饮品','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('68','0','坚果','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('69','0','鱼干/海味即食','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('70','0','薯片','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('71','0','枣类','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('72','0','炒货','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('73','0','禽类','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('74','0','葡萄干','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('75','0','蜜饯','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('76','0','小食','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('77','0','肉干肉脯/豆干/熟食','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('78','0','新疆红枣','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('79','0','膨化','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('80','0','果冻/布丁','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('81','0','海苔','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('82','0','饼干','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('83','0','蛋糕','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('84','0','传统糕点','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('85','0','月饼','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('86','0','西式糕点','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('87','0','其它小点心','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('88','0','风味奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('89','0','纯牛奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('90','0','酸奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('91','0','儿童奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('92','0','啤酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('93','0','进口啤酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('94','0','进口葡萄酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('95','0','白酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('96','0','黄酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('97','0','葡萄酒/红酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('98','0','滋补酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('99','0','果酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('100','0','巧克力','65','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('101','0','糖果','65','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('102','0','口香糖','65','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('103','0','功能饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('104','0','碳酸饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('105','0','果汁/蔬菜汁','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('106','0','茶饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('107','0','水','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('108','0','果味饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('109','0','咖啡饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('110','0','乳品','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('111','0','茶叶','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('112','0','咖啡','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('113','0','奶茶','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('114','0','奶粉','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('115','0','藕粉','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('116','0','冲饮麦片','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('117','0','芝麻糊','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('118','0','冲饮果汁','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('119','0','豆奶','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('120','0','姜汤','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('121','0','蜂蜜','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('122','0','咖啡伴侣','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('123','0','其它冲饮品','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('124','0','进口零食','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('125','0','饼干糕点','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('126','0','糖巧克力','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('127','0','牛奶乳品','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('128','0','水及饮料','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('129','0','进口冲饮','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('130','0','进口米面','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('131','0','果干坚果','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('132','0','进口膨化/薯片','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('133','0','进口海产品','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('134','0','进口果冻/布丁','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('135','0','进口话梅','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('136','0','进口肉制品','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('137','0','进口山楂类','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('138','0','进口凉果/蜜饯','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('139','0','进口饼干','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('140','0','进口曲奇','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('141','0','进口威化','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('142','0','进口糕点','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('143','0','进口糖果','126','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('144','0','进口巧克力','126','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('145','0','粮油米面','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('146','0','调味果酱','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('147','0','水果蔬菜生鲜','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('148','0','方便速食','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('149','0','冷冻食品','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('150','0','杂粮','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('151','0','国产大米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('152','0','面粉/食用粉','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('153','0','豆类','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('154','0','玉米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('155','0','黑米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('156','0','糯米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('157','0','糙米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('158','0','食用油','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('159','0','粉丝','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('160','0','面条/挂面','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('161','0','面部护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('162','0','男士护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('163','0','魅力香氛','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('164','0','女性护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('165','0','成人用品','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('166','0','彩妆个护','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('167','0','口腔护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('168','0','洗发护发','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('169','0','身体护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('170','0','乳液','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('171','0','面霜','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('172','0','精华','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('173','0','防晒','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('174','0','眼膜','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('175','0','眼霜/眼部精华','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('176','0','唇部护理','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('177','0','面膜','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('178','0','护肤套装','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('179','0','卸妆','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('180','0','洁面','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('181','0','去角质','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('182','0','哺育用品','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('183','0','妈妈专区','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('184','0','奶粉','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('185','0','纸尿裤/湿巾','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('186','0','婴儿辅食','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('187','0','孕婴营养品','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('188','0','玩具','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('189','0','洗护用品','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('190','0','童车童床','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('191','0','服饰寝具','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('192','0','奶瓶','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('193','0','奶嘴','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('194','0','吸奶器','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('195','0','暖奶/消毒餐具','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('196','0','水具','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('197','0','牙胶/安抚辅助用品','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('198','0','家纺日用','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('199','0','居家日用','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('200','0','宠物用品','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('201','0','家具灯具','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('202','0','汽车用品','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('203','0','家装建材','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('204','0','园艺用品','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('205','0','床品件套','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('206','0','枕芯枕套','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('207','0','被子','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('208','0','床单被罩','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('209','0','毛毯/被','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('210','0','抱枕坐垫','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('211','0','蚊帐/凉席','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('212','0','毛巾家纺','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('213','0','床垫/床褥','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('214','0','大家电','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('215','0','厨房电器','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('216','0','生活电器','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('217','0','影音电器','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('218','0','个护健康','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('219','0','冰箱','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('220','0','空调','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('221','0','洗衣机','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('222','0','电视机','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('223','0','女装精品','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('224','0','男装精品','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('225','0','内衣服饰','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('226','0','户外鞋服','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('227','0','户外装备','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('228','0','体育娱乐','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('229','0','健身运动','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('230','0','饰品配件','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('231','0','童装','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('232','0','鞋子','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('233','0','箱包','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('234','0','皮草/皮衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('235','0','羽绒服','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('236','0','羊毛/羊绒','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('237','0','棉衣/棉服','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('238','0','呢大衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('239','0','连衣裙','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('240','0','T恤','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('241','0','衬衫','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('242','0','裤子','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('243','0','半身裙','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('244','0','马夹','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('245','0','蕾丝衫/雪纺衫','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('246','0','针织衫/毛衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('247','0','外套','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('248','0','西装','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('249','0','卫衣/绒衫','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('250','0','风衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('251','0','皮衣/皮草','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('252','0','羽绒服','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('253','0','棉衣','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('254','0','毛衫/羊绒','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('255','0','夹克','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('256','0','T恤','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('257','0','卫衣','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('258','0','衬衫','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('259','0','长裤','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('260','0','短裤/中裤','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('261','0','风衣','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('262','0','西服','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('263','0','图书','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('264','0','杂志','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('265','0','钟表','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('266','0','翡翠玉石','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('267','0','时尚饰品','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('268','0','保健滋补','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('269','0','特色礼品','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('270','0','珍珠/水晶','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('271','0','金/银/钻饰','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('272','0','金镶玉','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('273','0','和田玉','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('274','0','翡翠','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('275','0','彩色宝石','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('276','0','琥珀','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('277','0','其他玉石','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('278','0','手机通讯','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('279','0','手机配件','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('280','0','数码影音','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('281','0','数码配件','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('282','0','电脑配件','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('283','0','电脑整机','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('284','0','办公设备','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('285','0','学习用品','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('286','0','网络产品','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('287','0','办公用品','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('288','0','手机','278','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('289','0','对讲机','278','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('290','0','舌尖上的美食','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('291','0','我的个性我做主','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('292','0','今天我要嫁给你','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('293','0','小情调，乐生活','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('294','0','休闲零食','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('295','0','特产美食','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('296','0','其他','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('297','0','蛋糕','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('298','0','甜品小食','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('299','0','饮品','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('300','0','手工饼干','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('301','0','婚礼用品','292','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('302','0','首饰','292','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('303','0','化妆工具','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('304','0','特色服务','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('305','0','手工DIY','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('306','0','应季配饰','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('307','0','流行小饰品','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('308','0','鲜花绿植','293','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('309','0','特色服装','293','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('310','0','家居饰品','293','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('311','0','风味奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('312','0','纯牛奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('313','0','酸奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('314','0','儿童奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('315','0','进口果汁饮料','128','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('316','0','进口咖啡','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('317','0','进口茶叶','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('318','0','进口蜂蜜','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('319','0','进口奶茶/柚子茶','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('320','0','进口麦片','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('321','0','进口速食','130','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('322','0','进口调味品','130','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('323','0','进口油','130','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('324','0','进口果干','131','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('325','0','进口坚果','131','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('326','0','酱油','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('327','0','食糖','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('328','0','鸡精/味精','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('329','0','盐','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('330','0','醋制品','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('331','0','腌制酱菜','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('332','0','调味料','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('333','0','腐乳','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('334','0','调味酱','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('335','0','料酒','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('336','0','调味油','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('337','0','果酱','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('338','0','其它调味品','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('339','0','烘焙原料/辅料','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('340','0','香水','163','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('341','0','精油芳疗','163','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('342','0','香体走珠','163','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('343','0','避孕套','165','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('344','0','润滑剂','165','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('345','0','成人卫生垫','165','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('346','0','牙膏','167','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('347','0','牙刷','167','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('348','0','漱口水','167','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('349','0','洗浴用品','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('350','0','手足护理','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('351','0','身体乳','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('352','0','美体塑身','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('353','0','1段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('354','0','2段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('355','0','3段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('356','0','4段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('357','0','5段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('358','0','米粉/米糊/汤粥','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('359','0','面食类','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('360','0','饼干/磨牙棒','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('361','0','肉松/鱼松','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('362','0','婴幼儿降火食品','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('363','0','宝宝护肤','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('364','0','护理用品','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('365','0','洗浴用品','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('366','0','清洁用品','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('367','0','礼盒套装','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('368','0','婴儿服','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('369','0','婴儿家纺','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('370','0','婴儿鞋袜','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('371','0','安全用品','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('372','0','床','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('373','0','沙发','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('374','0','柜类','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('375','0','架类','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('376','0','桌/椅/凳','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('377','0','灯具','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('378','0','鲜花','204','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('379','0','盆栽','204','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('380','0','园艺工具','204','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('381','0','音响/音箱','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('382','0','影碟机/DVD','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('383','0','耳机/耳麦','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('384','0','收音机','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('385','0','其它影音产品','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('386','0','靴子','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('387','0','单鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('388','0','休闲鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('389','0','凉鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('390','0','皮鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('391','0','太阳眼镜','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('392','0','腰带/皮带','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('393','0','手套','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('394','0','围巾/围脖','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('395','0','网球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('396','0','足球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('397','0','排球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('398','0','乒乓球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('399','0','篮球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('400','0','户外服装','226','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('401','0','户外鞋袜','226','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('402','0','户外配饰','226','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('403','0','时尚生活杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('404','0','娱乐休闲杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('405','0','教育科技杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('406','0','商业时政杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('407','0','文化艺术杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('408','0','美食礼品','269','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('409','0','美酒礼品','269','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('410','0','茗茶礼品','269','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('411','0','摄像机','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('412','0','MP3/MP4/iPod','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('413','0','录音笔','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('414','0','耳机/耳麦','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('415','0','音箱','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('416','0','光驱/刻录/DVD','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('417','0','机箱','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('418','0','电脑包','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('419','0','散热器','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('420','0','笔记本电脑桌','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('421','0','内存','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('422','0','硬盘','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('423','0','主板','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('424','0','显卡','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('425','0','电话机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('426','0','传真机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('427','0','打印机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('428','0','一体机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('429','0','复合机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('430','0','碎纸机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('431','0','扫描仪','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('432','0','保险柜','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('433','0','投影机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('434','0','点钞机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('435','0','墨盒','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('436','0','硒鼓/粉盒','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('437','0','墨粉/碳粉','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('438','0','色带/碳带','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('439','0','网络存储','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('440','0','网卡','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('441','0','路由器','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('442','0','交换机','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('443','0','其他','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('444','0','方便面','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('445','0','速食品','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('446','0','罐头','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('447','0','冷藏即食','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('448','2','果蔬','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('449','2','酒水','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('450','2','食品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('451','2','粮油干货','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('453','2','玩具用品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('454','2','生活百货','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('456','2','电器','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('457','2','服装鞋','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('459','2','电脑手机','0','255','1');
DROP TABLE IF EXISTS ecm_goods;
CREATE TABLE ecm_goods (
  goods_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  goods_name varchar(255) NOT NULL DEFAULT '',
  description text,
  cate_id int(10) unsigned NOT NULL DEFAULT '0',
  cate_name varchar(255) NOT NULL DEFAULT '',
  brand varchar(100) NOT NULL,
  spec_qty tinyint(4) unsigned NOT NULL DEFAULT '0',
  spec_name_1 varchar(60) NOT NULL DEFAULT '',
  spec_name_2 varchar(60) NOT NULL DEFAULT '',
  if_show tinyint(3) unsigned NOT NULL DEFAULT '1',
  closed tinyint(3) unsigned NOT NULL DEFAULT '0',
  close_reason varchar(255) DEFAULT NULL,
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  last_update int(10) unsigned NOT NULL DEFAULT '0',
  default_spec int(11) unsigned NOT NULL DEFAULT '0',
  default_image varchar(255) NOT NULL DEFAULT '',
  recommended tinyint(4) unsigned NOT NULL DEFAULT '0',
  cate_id_1 int(10) unsigned NOT NULL DEFAULT '0',
  cate_id_2 int(10) unsigned NOT NULL DEFAULT '0',
  cate_id_3 int(10) unsigned NOT NULL DEFAULT '0',
  cate_id_4 int(10) unsigned NOT NULL DEFAULT '0',
  price decimal(10,2) NOT NULL DEFAULT '0.00',
  tags varchar(102) NOT NULL,
  PRIMARY KEY (goods_id),
  KEY store_id (store_id),
  KEY cate_id (cate_id),
  KEY cate_id_1 (cate_id_1),
  KEY cate_id_2 (cate_id_2),
  KEY cate_id_3 (cate_id_3),
  KEY cate_id_4 (cate_id_4),
  KEY brand (brand(10)),
  KEY tags (tags)
) TYPE=MyISAM;
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('1','2','material','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033366','1388033366','1','data/files/store_2/goods_110/small_201312262048304586.jpg','1','1','14','19','0','8.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('2','2','material','袋装水果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033524','1388033524','2','data/files/store_2/goods_198/small_201312262049586818.jpg','1','1','14','19','0','100.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('3','2','material','海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033588','1388033588','3','data/files/store_2/goods_148/small_201312262052284448.jpg','1','1','14','19','0','68.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('4','2','material','杰记 新鲜脆甜 高山红苹果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033671','1388033671','4','data/files/store_2/goods_57/small_201312262054174988.jpg','1','1','14','19','0','69.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('5','2','material','杰记 新鲜脆甜 高山红苹果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033715','1388033715','5','data/files/store_2/goods_99/small_201312262054594117.jpg','1','1','14','19','0','10.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('6','2','material','杰记 进口 新鲜 新西兰 爵士 苹果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033757','1388033757','6','data/files/store_2/goods_136/small_201312262055366831.jpg','1','1','14','19','0','32.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('7','2','material','杰记 进口 新鲜 果大味甜 红蛇果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033798','1388033798','7','data/files/store_2/goods_180/small_201312262056209107.jpg','1','1','14','19','0','65.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('8','2','material','杰记美国无籽黑提（清香蜜甜，爽脆无渣）','','20','网上菜场、果蔬生鲜	水果	葡萄','','0','','','1','0',null,'1388033867','1388033867','8','data/files/store_2/goods_63/small_201312262057435880.jpg','1','1','14','20','0','38.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('9','2','material','海泉 进口红提 新鲜配送','','21','网上菜场、果蔬生鲜	水果	红提','','0','','','1','0',null,'1388033923','1388033923','9','data/files/store_2/goods_120/small_201312262058402887.jpg','1','1','14','21','0','50.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('10','2','material','杰记 国产 新鲜 香甜 库尔勒香梨礼盒','','26','网上菜场、果蔬生鲜	水果	橙梨','','0','','','1','0',null,'1388034036','1388034036','10','data/files/store_2/goods_31/small_201312262100319871.jpg','1','1','14','26','0','108.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('11','2','material','海泉 贡梨','','26','网上菜场、果蔬生鲜	水果	橙梨','','0','','','1','0',null,'1388034078','1388034078','11','data/files/store_2/goods_75/small_201312262101158858.jpg','1','1','14','26','0','25.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('12','2','material','杰记 国产 红肉 新鲜 红心蜜柚','','22','网上菜场、果蔬生鲜	水果	柚子','','0','','','1','0',null,'1388034154','1388034154','12','data/files/store_2/goods_144/small_201312262102246687.jpg','1','1','14','22','0','28.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('13','2','material','海泉 进口车厘子 圣诞款','','34','网上菜场、果蔬生鲜	水果	车厘子','','0','','','1','0',null,'1388034228','1388034228','13','data/files/store_2/goods_2/small_201312262103227833.jpg','1','1','14','34','0','108.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('14','2','material','海泉 进口 红心火龙果 新鲜配送','','33','网上菜场、果蔬生鲜	水果	火龙果','','0','','','1','0',null,'1388034294','1388034294','14','data/files/store_2/goods_77/small_201312262104371080.jpg','1','1','14','33','0','21.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('15','2','material','海泉 进口柠檬 尤力克 新鲜配送','','27','网上菜场、果蔬生鲜	水果	柠檬','','0','','','1','0',null,'1388034356','1388034356','15','data/files/store_2/goods_153/small_201312262105539118.jpg','1','1','14','27','0','30.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('16','2','material','椰岛鹿龟酒二星礼盒（500ml*2）','','98','休闲食品、酒水饮料	酒类商城	滋补酒','','0','','','1','0',null,'1388034478','1388034478','16','data/files/store_2/goods_69/small_201312262107499378.jpg','1','2','64','98','0','92.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('17','2','material','椰岛鹿龟酒三星（露酒）礼盒2瓶装（500ml*2） 养生保健补酒','','98','休闲食品、酒水饮料	酒类商城	滋补酒','','0','','','1','0',null,'1388034535','1388034535','17','data/files/store_2/goods_129/small_201312262108507192.jpg','1','2','64','98','0','110.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('18','2','material','沙洲优黄花开富贵480ml/瓶','','96','休闲食品、酒水饮料	酒类商城	黄酒','','0','','','1','0',null,'1388034582','1388034582','18','data/files/store_2/goods_166/small_201312262109269656.jpg','1','2','64','96','0','32.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('19','2','material','50°红心如意郎酒500ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388034641','1388034641','19','data/files/store_2/goods_28/small_201312262110282113.jpg','1','2','64','97','0','52.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('20','2','material','口子窖白酒（五年）46度 400ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388034702','1388034702','20','data/files/store_2/goods_51/small_201312262110515808.jpg','1','2','64','97','0','95.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('21','2','material','【量贩购】张裕窖藏二年干红葡萄酒750ml×2瓶（每个ID限购5组）','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388034760','1388034760','21','data/files/store_2/goods_124/small_201312262112041198.jpg','1','2','64','97','0','72.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('22','2','material','华佗十全补酒700ml','','95','休闲食品、酒水饮料	酒类商城	白酒','','0','','','1','0',null,'1388034838','1388034838','22','data/files/store_2/goods_6/small_201312262113269791.jpg','1','2','64','95','0','36.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('23','2','material','双沟珍宝坊 君坊 41.8度 480ml+68度 20ml','','94','休闲食品、酒水饮料	酒类商城	进口葡萄酒','','0','','','1','0',null,'1388034891','1388034891','23','data/files/store_2/goods_71/small_201312262114315846.jpg','1','2','64','94','0','128.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('24','2','material','42°洋河大曲青瓷500ml','','99','休闲食品、酒水饮料	酒类商城	果酒','','0','','','1','0',null,'1388034944','1388034944','24','data/files/store_2/goods_141/small_201312262115417011.jpg','1','2','64','99','0','62.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('25','2','material','沙洲优黄(干黄) 480ml/瓶','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388035006','1388035006','25','data/files/store_2/goods_3/small_201312262116433996.jpg','1','2','64','97','0','350.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('26','2','material','乌毡帽十年陈 350ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388035091','1388035091','26','data/files/store_2/goods_86/small_201312262118061068.jpg','1','2','64','97','0','100.00',',330,');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('27','2','material','上海老酒六年陈500ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388035163','1388035163','27','data/files/store_2/goods_160/small_201312262119204138.jpg','1','2','64','97','0','666.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('28','2','material','【量贩购】多力橄榄葵花油2.5L×2瓶 礼盒装 过节送礼更合适（每个I...','','158','粮油干货、厨房调料	粮油米面	食用油','','0','','','1','0',null,'1388036097','1388036097','28','data/files/store_2/goods_92/small_201312262134527551.jpg','1','4','145','158','0','108.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('29','2','material','银鹭好粥道 黑米杂粮八宝粥280g','','150','粮油干货、厨房调料	粮油米面	杂粮','','0','','','1','0',null,'1388036198','1388036198','29','data/files/store_2/goods_192/small_201312262136326387.jpg','1','4','145','150','0','3.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('30','2','material','纽天然三叶草蜂蜜250g（新西兰）','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036332','1388036332','30','data/files/store_2/goods_111/small_201312262138315559.jpg','1','3','124','132','0','59.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('31','2','material','台湾进口零食品 张君雅系列 拉面条饼和风鸡汁味 嘴馋了','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036394','1388036394','31','data/files/store_2/goods_189/small_201312262139497936.jpg','1','3','124','132','0','6.90','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('32','2','material','正宗99能量棒 台湾北田棒蛋黄夹心 180克 特价 嘴馋了','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036467','1388036467','32','data/files/store_2/goods_62/small_201312262141025440.jpg','1','3','124','132','0','10.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('33','2','material','印度尼西亚进口啪啪通虾片85克','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036528','1388036528','33','data/files/store_2/goods_125/small_201312262142056946.jpg','1','3','124','132','0','16.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('34','2','material','正品马来西亚 可康牌多口味果冻（含椰果）480g 嘴馋了','','134','进口食品、进口乳品	进口零食	进口果冻/布丁','','0','','','1','0',null,'1388036590','1388036590','34','data/files/store_2/goods_185/small_201312262143054186.jpg','1','3','124','134','0','12.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('35','2','material','可康果冻布丁 480g(80gX6杯) 邻客小食','','134','进口食品、进口乳品	进口零食	进口果冻/布丁','','0','','','1','0',null,'1388036650','1388036650','35','data/files/store_2/goods_42/small_201312262144021189.jpg','1','3','124','134','0','12.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('36','2','material','泰国进口天然零食品 特级泰国植生桂圆肉干 龙眼肉 果干蜜饯 140g...','','138','进口食品、进口乳品	进口零食	进口凉果/蜜饯','','0','','','1','0',null,'1388036717','1388036717','36','data/files/store_2/goods_113/small_201312262145134866.jpg','1','3','124','138','0','22.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('37','2','material','优之良品贵妃梅200克','','138','进口食品、进口乳品	进口零食	进口凉果/蜜饯','','0','','','1','0',null,'1388036809','1388036809','37','data/files/store_2/goods_7/small_201312262146474624.jpg','1','3','124','138','0','20.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('38','2','material','澳门香记特产 XO酱金钱猪肉脯/肉干 250g 特价 嘴馋了','','136','进口食品、进口乳品	进口零食	进口肉制品','','0','','','1','0',null,'1388036884','1388036884','38','data/files/store_2/goods_80/small_201312262148001815.jpg','1','3','124','136','0','21.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('39','2','material','韩国进口小零食 托马斯小火车鳕鱼肠400g','','136','进口食品、进口乳品	进口零食	进口肉制品','','0','','','1','0',null,'1388036943','1388036943','39','data/files/store_2/goods_139/small_201312262148598688.jpg','1','3','124','136','0','80.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('40','2','material','味好美脆皮香酥炸鸡配料45g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037104','1388037104','40','data/files/store_2/goods_95/small_201312262151359791.jpg','1','4','146','332','0','2.20','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('41','2','material','味好美鱼香肉丝调料35g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037142','1388037142','41','data/files/store_2/goods_130/small_201312262152104798.jpg','1','4','146','332','0','2.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('42','2','material','王守义十三香40g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037251','1388037251','42','data/files/store_2/goods_47/small_201312262154079508.jpg','1','4','146','332','0','2.30','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('43','2','material','味好美咖喱粉30g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037302','1388037302','43','data/files/store_2/goods_93/small_201312262154537504.jpg','1','4','146','332','0','7.30','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('44','2','material','川南火锅底料150g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037356','1388037356','44','data/files/store_2/goods_144/small_201312262155447040.jpg','1','4','146','332','0','4.10','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('45','2','material','郫县红油豆瓣 1.05kg','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037389','1388037389','45','data/files/store_2/goods_178/small_201312262156186146.jpg','1','4','146','332','0','14.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('46','2','material','川郫红油郫县豆瓣500g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037427','1388037427','46','data/files/store_2/goods_11/small_201312262156516537.jpg','1','4','146','332','0','5.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('47','2','material','川南干爹风味豆豉210g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037481','1388037481','47','data/files/store_2/goods_76/small_201312262157569987.jpg','1','4','146','332','0','5.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('48','2','material','川崎火锅调料海鲜100g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037529','1388037529','48','data/files/store_2/goods_111/small_201312262158319438.jpg','1','4','146','332','0','2.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('49','2','material','川崎火锅调料海麻辣100g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037569','1388037569','49','data/files/store_2/goods_162/small_201312262159227323.jpg','1','4','146','332','0','2.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('50','2','material','新安怡 婴儿保湿润肤乳液200ML','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388037930','1388037930','50','data/files/store_2/goods_127/small_201312262205276887.jpg','1','6','189','364','0','74.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('51','2','material','飞利浦新安怡标准口径奶嘴','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388037976','1388037976','51','data/files/store_2/goods_173/small_201312262206139520.jpg','1','6','189','364','0','14.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('52','2','material','飞利浦新安怡幼儿食物储存盒','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038076','1388038076','52','data/files/store_2/goods_72/small_201312262207528762.jpg','1','6','189','364','0','144.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('53','2','material','Pigeon贝亲 婴儿沐浴露','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038125','1388038125','53','data/files/store_2/goods_102/small_201312262208227300.jpg','1','6','189','364','0','17.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('54','2','material','飞利浦新安怡微波炉蒸汽消毒锅套餐','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038164','1388038164','54','data/files/store_2/goods_135/small_201312262208557042.jpg','1','6','189','364','0','354.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('55','2','material','飞利浦新安怡4合1电子蒸汽消毒锅','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038205','1388038205','55','data/files/store_2/goods_176/small_201312262209361435.jpg','1','6','189','364','0','679.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('56','2','material','飞利浦新安怡手动吸乳器外出旅行组合套装','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038246','1388038246','56','data/files/store_2/goods_16/small_201312262210162177.jpg','1','6','189','364','0','606.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('57','2','material','飞利浦新安怡对装乳头矫正器','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038292','1388038292','57','data/files/store_2/goods_57/small_201312262210575290.jpg','1','6','189','364','0','374.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('58','2','material','飞利浦新安怡智能蒸汽消毒锅','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038343','1388038343','58','data/files/store_2/goods_106/small_201312262211467126.jpg','1','6','189','364','0','774.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('59','2','material','飞利浦新安怡标准口径奶嘴','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038380','1388038380','59','data/files/store_2/goods_152/small_201312262212327144.jpg','1','6','189','364','0','12.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('60','2','material','希乐上品真空保温泡茶杯 XS-400-3','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038694','1388038694','60','data/files/store_2/goods_90/small_201312262218109004.jpg','1','7','0','0','0','35.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('61','2','material','妙洁圆形耐热玻璃保鲜盒800ml MCOGBC80','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038738','1388038738','61','data/files/store_2/goods_114/small_201312262218342575.jpg','1','7','0','0','0','24.90','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('62','2','material','(原装进口)韩国爱敬aekyung全彩护色洗衣液1L','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038787','1388038787','62','data/files/store_2/goods_153/small_201312262219138421.jpg','1','7','0','0','0','46.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('63','2','material','品诚尚品惠 Supor/苏泊尔 T0908Q厨具套装典雅系列不锈钢锅铲汤勺...','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038827','1388038827','63','data/files/store_2/goods_6/small_201312262220067431.jpg','1','7','0','0','0','215.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('64','2','material','乐扣保鲜盒6件多规格套装微波炉烤箱耐热玻璃LLG224S902 44763当...','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038876','1388038876','64','data/files/store_2/goods_41/small_201312262220415407.jpg','1','7','0','0','0','202.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('65','2','material','妙洁手压旋拖1*4','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038973','1388038973','65','data/files/store_2/goods_143/small_201312262222237668.jpg','1','7','0','0','0','158.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('66','2','material','2支装妙洁C型点断式垃圾袋(中)','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039008','1388039008','66','data/files/store_2/goods_186/small_201312262223061143.jpg','1','7','0','0','0','2.90','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('67','2','material','妙洁C型魔吸胶棉拖把','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039047','1388039047','67','data/files/store_2/goods_26/small_201312262223464846.jpg','1','7','0','0','0','23.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('68','2','material','汰渍全效炫白加衣领净精华洗衣粉560克','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039114','1388039114','68','data/files/store_2/goods_91/small_201312262224518849.jpg','1','7','0','0','0','5.10','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('69','2','material','【量贩购】奥妙 全自动含金纺馨香精华深层洁净洗衣液 3kg（怡神薰...','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039145','1388039145','69','data/files/store_2/goods_131/small_201312262225311490.jpg','1','7','0','0','0','45.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('70','2','material','韩版夏季新款连衣裙 纯色露肩 雪纺假两件套 连衣短裙5776','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039629','1388039629','70','data/files/store_2/goods_195/small_201312262233156335.jpg','1','10','223','239','0','850.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('71','2','material','春装新款 韩版 气质修身 蕾丝拼接 圆领长袖 性感 连衣短裙L4666','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039672','1388039672','71','data/files/store_2/goods_44/small_201312262234045839.jpg','1','10','223','239','0','750.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('72','2','material','时尚休闲 气质雪纺条纹两件套 长袖不规则连衣裙7938','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039729','1388039729','72','data/files/store_2/goods_113/small_201312262235137180.jpg','1','10','223','239','0','690.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('73','2','material','新品女装 荷叶边外衫 碎花裙 裙子夏季两件套 麻棉长袖连衣裙F512...','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039774','1388039774','73','data/files/store_2/goods_142/small_201312262235429182.jpg','1','10','223','239','0','850.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('74','2','material','皇后大街2013春装新款圆领收腰中袖蕾丝连衣裙修身显瘦打底裙L234...','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039823','1388039823','74','data/files/store_2/goods_189/small_201312262236298305.jpg','1','10','223','239','0','2090.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('75','2','material','棉先生原创 2012新品 韩版黑色西服两粒扣休闲小西装外套 S5455','','262','服饰箱包鞋靴、 运动	男装精品	西服','','0','','','1','0',null,'1388039883','1388039883','75','data/files/store_2/goods_38/small_201312262237189780.jpg','1','10','224','262','0','173.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('76','2','material','Miiow猫人 2013新款夏季女士性感豹纹印花舒适中腰提臀三角裤1397...','','249','服饰箱包鞋靴、 运动	女装精品	卫衣/绒衫','','0','','','1','0',null,'1388039951','1388039951','76','data/files/store_2/goods_98/small_201312262238182827.jpg','1','10','223','249','0','390.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('77','2','material','韩国品牌 SATSUN 专柜正品 超弹修身小腿裤 明线装饰 特价促销','','245','服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫','','0','','','1','0',null,'1388040028','1388040028','77','data/files/store_2/goods_179/small_201312262239393163.jpg','1','10','223','245','0','169.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('78','2','material','（冰爽特价）韩国品牌 SATSUN 专柜正品 拉链装饰牛仔短裤','','245','服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫','','0','','','1','0',null,'1388040081','1388040081','78','data/files/store_2/goods_54/small_201312262240547284.jpg','1','10','223','245','0','129.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('79','2','material','全棉弹力抓绒小腿裤 保暖舒适 雪花修身小腿裤 春...','','235','服饰箱包鞋靴、 运动	女装精品	羽绒服','','0','','','1','0',null,'1388040133','1388040133','79','data/files/store_2/goods_97/small_201312262241379970.jpg','1','10','223','235','0','69.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('80','2','material','【量贩购】顶瓜瓜专柜 顶呱呱男女保暖内衣 加厚加绒套装DNBMD-T2...','','236','服饰箱包鞋靴、 运动	女装精品	羊毛/羊绒','','0','','','1','0',null,'1388040198','1388040198','80','data/files/store_2/goods_156/small_201312262242365477.jpg','1','10','223','236','0','89.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('81','2','material','艾美特PTC陶瓷暖风机HP2028UR 取暖器 电暖器 遥控加湿','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040743','1388040743','81','data/files/store_2/goods_111/small_201312262251512164.jpg','1','9','216','0','0','699.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('82','2','material','飞利浦 充电剃须刀HQ6076 弹出式修发器刀头水洗','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040835','1388040835','82','data/files/store_2/goods_9/small_201312262253293800.jpg','1','9','216','0','0','499.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('83','2','material','Joyoung/九阳 JYC-21GS08 电磁炉 健康双环火 触摸 节能 正品特价...','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040935','1388040935','83','data/files/store_2/goods_80/small_201312262254404774.jpg','1','9','216','0','0','269.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('84','2','material','Joyoung/九阳JYK-17F05A特价不锈钢多功能电热开水煲壶联保正品 ...','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040980','1388040980','84','data/files/store_2/goods_155/small_201312262255558436.jpg','1','9','216','0','0','170.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('85','2','material','先锋 电暖气CY11BB-11 DS1102 油汀11片 赠晾衣架加湿盒','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041028','1388041028','85','data/files/store_2/goods_6/small_201312262256466045.jpg','1','9','216','0','0','399.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('86','2','material','Joyoung/九阳 C21-SC007 九阳电磁炉 超薄 二级能效 整板触摸屏','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041065','1388041065','86','data/files/store_2/goods_49/small_201312262257294186.jpg','1','9','216','0','0','259.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('87','2','material','道尔顿PF前置折叠棉滤芯','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041106','1388041106','87','data/files/store_2/goods_86/small_201312262258066317.jpg','1','9','216','0','0','88.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('88','2','material','美妙足浴盆MM-13H全盖泡脚加热足浴器足浴盆泡脚盆','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041146','1388041146','88','data/files/store_2/goods_124/small_201312262258442397.jpg','1','9','216','0','0','249.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('89','2','material','美妙足浴盆MM-12E/02E足浴器按摩正品 洗脚盆加热泡脚盆','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041200','1388041200','89','data/files/store_2/goods_180/small_201312262259401924.jpg','1','9','216','0','0','239.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('90','2','material','品诚尚品惠 Midea/美的 DE12G13 全不锈钢豆浆机多功能无网 3.4KG','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041280','1388041280','90','data/files/store_2/goods_60/small_201312262301006712.jpg','1','9','216','0','0','270.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('91','2','material','HTC T528t 双卡双待双通TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041380','1388041380','91','data/files/store_2/goods_155/small_201312262302356953.jpg','1','9','216','0','0','1298.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('92','2','material','中兴（ZTE）U960s3 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041427','1388041427','92','data/files/store_2/goods_3/small_201312262303231812.jpg','1','9','216','0','0','495.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('93','2','material','三星(samsung)s5698 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041471','1388041471','93','data/files/store_2/goods_48/small_201312262304085587.jpg','1','9','216','0','0','199.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('94','2','material','华为（Huawei）T8951（G510）3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041510','1388041510','94','data/files/store_2/goods_93/small_201312262304537590.jpg','1','9','216','0','0','599.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('95','2','material','HTC 8S（A620t）3G手机TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041548','1388041548','95','data/files/store_2/goods_134/small_201312262305341913.jpg','1','9','216','0','0','688.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('96','2','material','诺基亚（NOKIA） Lumia 720T 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041597','1388041597','96','data/files/store_2/goods_170/small_201312262306104597.jpg','1','9','216','0','0','1749.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('97','2','material','三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041645','1388041645','97','data/files/store_2/goods_27/small_201312262307078496.jpg','1','9','216','0','0','1549.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('98','2','material','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041757','1419232489','98','data/files/store_2/goods_107/small_201312262308271759.jpg','1','9','216','0','0','0.01','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('100','2','material','2014四季款时尚单鞋甜美平底帆布鞋新款潮女鞋温州外贸鞋代理批发','<p><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p><span style=\"color: #ff0000;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">服务费</span></span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"color: #ff0000; font-size: 14pt; background-color: #ffff00;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p>&nbsp;<img alt=\"2)53b06b17f0595\" src=\"http://i05.c.aliimg.com/img/ibank/2014/074/105/1533501470_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"3)53b06b1834bad\" src=\"http://i03.c.aliimg.com/img/ibank/2014/374/105/1533501473_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"7)53b06b19a3403\" src=\"http://i01.c.aliimg.com/img/ibank/2014/494/105/1533501494_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"5)53b06b18e7fde\" src=\"http://i03.c.aliimg.com/img/ibank/2014/684/105/1533501486_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"6)53b06b1940800\" src=\"http://i05.c.aliimg.com/img/ibank/2014/294/105/1533501492_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"4)53b06b18a38c4\" src=\"http://i05.c.aliimg.com/img/ibank/2014/184/105/1533501481_1263057136.jpg\" /></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、</span>出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、物流运输途</span>中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。<span style=\"color: #000000;\">一箱（</span></span><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"font-size: 18pt; background-color: #ffff00;\"><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">诚信通、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">买家保障、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\"><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span><span style=\"color: blue;\">等服务&mdash;&mdash;阿里巴巴认证金牌供应商，信誉保证！</span></span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先验货再签收（签收即表示亲认可产品完好）；如有问题请第一时间联系客服说明情况，我们负责处理！</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、需要退</span>货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','103','data/files/store_2/goods_184/small_201412231443046230.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('101','2','material','2014夏秋季新款女鞋 金属网纱尖头平底单鞋 外贸鞋地摊鞋批发代理','<p>&nbsp;<span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background: #ffffff; color: #000000;\">服务费</span></span></strong><span style=\"background-color: #ffffff;\"><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"background-color: #ffffff;\"><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"font-size: 14pt;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><img alt=\"undefined\" src=\"http://i03.c.aliimg.com/img/ibank/2014/933/299/1509992339_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i01.c.aliimg.com/img/ibank/2014/843/299/1509992348_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i05.c.aliimg.com/img/ibank/2014/373/299/1509992373_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i03.c.aliimg.com/img/ibank/2014/204/299/1509992402_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"750\" src=\"http://i05.c.aliimg.com/img/ibank/2014/604/299/1509992406_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"750\" src=\"http://i01.c.aliimg.com/img/ibank/2014/014/299/1509992410_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"750\" src=\"http://i05.c.aliimg.com/img/ibank/2014/314/299/1509992413_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"750\" src=\"http://i05.c.aliimg.com/img/ibank/2014/614/299/1509992416_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"750\" src=\"http://i01.c.aliimg.com/img/ibank/2014/024/299/1509992420_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"750\" src=\"http://i01.c.aliimg.com/img/ibank/2014/724/299/1509992427_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /></span><span style=\"color: #ffffff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ff0000;\">@物流说明</span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的请留言或联系客服发邮政（其他快递公司一律不发）。</strong><strong style=\"font-size: 14pt;\">一箱（30双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格15-30元）</strong></span></p><p><span style=\"color: #ffffff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ff0000;\"><strong style=\"font-size: 14pt;\">@混批说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！！！</strong></span></p><p><span style=\"color: #ffffff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ff0000;\"><strong style=\"font-size: 14pt;\"><strong style=\"font-size: 14pt;\">@质量说明</strong></strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>质量问题包括：</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、经消费者协会认证有其它质量问题的。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><span style=\"color: #ff0000;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、气味、些许胶水痕迹、肉眼在1.5米外不能明显分辨的划痕等，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、因测量方法不同，尺寸细微不合（误差在1cm以内）的尺码问题，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>4、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>5、对鞋子的材质不满，穿着效果与想象不同等不熟与质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>6、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量问题，外包装的稍微变形和破损不算质量问题！</strong></span></p><p><span style=\"color: #ffffff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ff0000;\"><strong>@售后说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>秉承客户就是上帝的宗旨，本公司接受质量问题7天退换货服务；让你没有后顾之忧！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>1、当快递员送货上门时，亲一定要先检查包裹是否破损少件等。有问题请第一时间联系客服说明情况，我们负责处理！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>2.需退换货请在买家签收7天之内（质量问题是48小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</strong></strong></span></p><p><span style=\"color: #ffffff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ff0000;\"><strong><strong>声明：以上条款自您下单付款后即视为同意接受，具有等同合约法律效应！</strong></strong></span></p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','104','data/files/store_2/goods_176/small_201412231442562379.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('102','2','material','2014夏秋时尚铆钉尖头平底鞋  爆款舒适新款潮女单鞋批发/代理','<p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><img alt=\"undefined\" src=\"http://i02.c.aliimg.com/img/ibank/2014/292/682/1511286292_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i04.c.aliimg.com/img/ibank/2014/013/682/1511286310_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i02.c.aliimg.com/img/ibank/2014/533/682/1511286335_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1124.6485473289597\" src=\"http://i00.c.aliimg.com/img/ibank/2014/753/682/1511286357_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1124.6485473289597\" src=\"http://i04.c.aliimg.com/img/ibank/2014/983/682/1511286389_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1124.6485473289597\" src=\"http://i00.c.aliimg.com/img/ibank/2014/624/682/1511286426_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i02.c.aliimg.com/img/ibank/2014/444/682/1511286444_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1124.6485473289597\" src=\"http://i04.c.aliimg.com/img/ibank/2014/554/682/1511286455_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i02.c.aliimg.com/img/ibank/2014/754/682/1511286457_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i02.c.aliimg.com/img/ibank/2014/064/682/1511286460_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\">@物流说明</span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递公司一律不发）。</strong><strong style=\"font-size: 14pt;\">一箱（30双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格15-30元）</strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 22pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">@混批说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！！！</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\"><strong style=\"font-size: 14pt;\">质量说明</strong></strong></span></p><p><span style=\"color: #0000ff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>质量问题包括</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、经消费者协会认证有其它质量问题的。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</strong></span></p><p><span style=\"color: #0000ff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>非质量问题包括</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、气味、些许胶水痕迹、肉眼在1.5米外不能明显分辨的划痕等，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、因测量方法不同，尺寸细微不合（误差在1cm以内）的尺码问题，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>4、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>5、对鞋子的材质不满，穿着效果与想象不同等不熟与质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>6、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量问题，外包装的稍微变形和破损不算质量问题！</strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>@售后说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffff00;\"><strong><strong>秉承客户就是上帝的宗旨，本公司接受质量问题的退换货服务；让你没有后顾之忧！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>1、当快递员送货上门时，亲一定要先检查包裹是否破损少件等。有问题请第一时间联系客服说明情况，我们负责处理！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>2.需退换货请在买家签收7天之内（质量问题是48小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</strong></strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffff00;\"><strong><strong>声明：以上条款自您下单付款后即视为同意接受，具有等同合约法律效应！</strong></strong></span></p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','105','data/files/store_2/goods_184/small_201412231443047733.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('103','2','material','2014夏蝴蝶结时尚工作鞋坡跟女单鞋新款潮外贸女鞋地摊鞋批发代理','<p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #00ccff;\">【淘宝代理说明】</span></span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.<strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责</span></strong>提供数据包和产品原图</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单给第三方地址代你发货。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.具体</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">详情请</span></strong><span style=\"font-size: 14pt;\">点击本公司首页的导航栏</span><span style=\"color: #ffffff; font-size: 14pt; background-color: #ff0000;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客</span><span style=\"font-size: 14pt;\">服。</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><span style=\"font-size: 24pt;\"><strong><span style=\"font-family: 宋体;\">订单满</span></strong><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">500</span></strong></span><strong><span style=\"font-family: 宋体;\"><span style=\"font-size: 24pt;\">双以上的可以来样订做！！！</span></span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><strong><span style=\"font-family: 宋体;\">财富热线：15387967722</span></strong></span></p><p align=\"left\">&nbsp;</p><p align=\"left\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><span style=\"color: #000000; font-size: 16pt;\"><img alt=\"undefined\" src=\"http://i04.c.aliimg.com/img/ibank/2014/222/274/1452472222_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i04.c.aliimg.com/img/ibank/2014/232/274/1452472232_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i00.c.aliimg.com/img/ibank/2014/017/454/1452454710_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i00.c.aliimg.com/img/ibank/2014/027/454/1452454720_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i02.c.aliimg.com/img/ibank/2014/827/454/1452454728_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i02.c.aliimg.com/img/ibank/2014/547/454/1452454745_1263057136.jpg\" /></span></span></span></span></span></span></span></span></span></span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14.05pt;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\">、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt; line-height: 25pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。一箱（</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">诚信通</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">、</span></strong><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">买家保障</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">；</span></strong><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">经过<span style=\"background: yellow;\">企业实地认证</span></span><span style=\"color: blue; font-size: 14pt;\">等服务&mdash;&mdash;信誉保证！</span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先检查包裹是否破损少件等再签收。有问题请第一时间联系客服说明情况，我们负责处理！</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></p><p style=\"margin: 0cm 0cm 0pt; line-height: 25pt; text-indent: 14pt;\"><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、需要退货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: blue; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background: yellow;\">服务费</span></span></strong><strong><span style=\"background: yellow; color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">39</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><strong><span style=\"background: yellow; color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">\\</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"font-size: 14pt;\">代理加盟</span><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">&nbsp;</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','106','data/files/store_2/goods_185/small_201412231443056225.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('104','2','material','2014新款休闲网面跑步鞋舒适保健单鞋交叉绑带平底鞋温州女鞋批发','<p><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p><span style=\"color: #ff0000;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">服务费</span></span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"color: #ff0000; font-size: 14pt; background-color: #ffff00;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p>&nbsp;<img alt=\"psb6\" height=\"300\" src=\"http://i01.c.aliimg.com/img/ibank/2014/281/663/1533366182_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"psb\" src=\"http://i05.c.aliimg.com/img/ibank/2014/351/663/1533366153_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"psbCADKTCBJ\" src=\"http://i03.c.aliimg.com/img/ibank/2014/791/663/1533366197_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"psb3\" src=\"http://i01.c.aliimg.com/img/ibank/2014/081/663/1533366180_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"psb1\" src=\"http://i03.c.aliimg.com/img/ibank/2014/561/663/1533366165_1263057136.jpg\" /></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、</span>出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、物流运输途</span>中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。<span style=\"color: #000000;\">一箱（</span></span><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"font-size: 18pt; background-color: #ffff00;\"><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">诚信通、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">买家保障、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\"><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span><span style=\"color: blue;\">等服务&mdash;&mdash;阿里巴巴认证金牌供应商，信誉保证！</span></span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先验货再签收（签收即表示亲认可产品完好）；如有问题请第一时间联系客服说明情况，我们负责处理！</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、需要退</span>货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','107','data/files/store_2/goods_168/small_201412231442481783.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('105','2','material','2014新款四季单鞋 时尚碎花平底鞋一件代发免费代理 温州女鞋批发','<p><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p><span style=\"color: #ff0000;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">服务费</span></span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"color: #ff0000; font-size: 14pt; background-color: #ffff00;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p>&nbsp;<img alt=\"3)53af1a2359016\" src=\"http://i04.c.aliimg.com/img/ibank/2014/803/780/1532087308_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"4)53af1a239ba5a\" src=\"http://i02.c.aliimg.com/img/ibank/2014/313/780/1532087313_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"6)53af1a243d9c2\" height=\"806\" src=\"http://i00.c.aliimg.com/img/ibank/2014/413/780/1532087314_1263057136.jpg\" width=\"640\" /></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、</span>出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、物流运输途</span>中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。<span style=\"color: #000000;\">一箱（</span></span><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"font-size: 18pt; background-color: #ffff00;\"><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">诚信通、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">买家保障、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\"><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span><span style=\"color: blue;\">等服务&mdash;&mdash;阿里巴巴认证金牌供应商，信誉保证！</span></span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先验货再签收（签收即表示亲认可产品完好）；如有问题请第一时间联系客服说明情况，我们负责处理！</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、需要退</span>货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','108','data/files/store_2/goods_177/small_201412231442574317.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('106','2','material','2014新款四季单鞋 时尚豹纹平底鞋一件代发免费代理 温州女鞋批发','<p><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p><span style=\"color: #ff0000;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">服务费</span></span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"color: #ff0000; font-size: 14pt; background-color: #ffff00;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p>&nbsp;<img alt=\"49)53b3101f31ce4\" src=\"http://i00.c.aliimg.com/img/ibank/2014/020/060/1532060020_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"50)53b3101f7a948\" src=\"http://i04.c.aliimg.com/img/ibank/2014/520/060/1532060025_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"46)53b3101e73ef1\" src=\"http://i04.c.aliimg.com/img/ibank/2014/810/060/1532060018_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-size: 15pt; background-color: #00ccff;\">【关于气味】</span>刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于价格】</span>本公司所有产品系代工厂批量生产，运营成本<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">+2</span>至<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>元利润<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">=</span>批发单价；薄利多销！没有中间代理，价格低于市场批发价格。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 15pt; background-color: #00ccff;\">【关于物流】</span>本公司默认发圆通快递，到不了地方的请留言发邮政小包。一箱（<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">30</span>双）以上可选择发托运站；到货自取（也可叫物流公司中转到您所在地，价格<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">15-30</span>元）时效较慢，价格实惠！</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于混批】</span>本公司所有产品均支持混批！可任意挑选款式、颜色和尺码，爱怎么选就怎么选！</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于质量】</span><strong>质量问题包括：</strong></span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、经消费者协会认证有其它质量问题的。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong>非质量问题包括：</strong></span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、气味、些许胶水痕迹、肉眼在<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1.5</span>米外不能明显分辨的划痕等，不属于质量问题。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">4</span>、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">5</span>、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于售后】</span>本公司已经开通<span style=\"color: #ff0000; background-color: #ffffff;\"><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">诚信通</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">、</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">买家保障</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">；</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">经过<span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span></span>等服务&mdash;&mdash;阿里巴巴认证<span style=\"color: #ffff00; background-color: #ff0000;\">金牌供应商</span>；信誉保证！</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、当快递员送货上门时，亲一定要先验货再签收（签收即表示默认产品完好）。有问题请第一时间联系客服说明情况，我们负责处理！</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2.</span>需退换货请在买家签收<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">7</span>天之内（质量问题是<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">48</span>小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、需要退货的请先联系客服说明原因。退货前提是没穿过，原包装完好，不影响二次销售！</span></p><p>&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\';\"><span style=\"font-family: 宋体;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></span></strong></span></p><p>&nbsp;</p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','109','data/files/store_2/goods_179/small_201412231442595441.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('107','2','material','2014新款四季单鞋时尚拼色帆布鞋舒适平底鞋温州外贸女鞋代理批发','<p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #00ccff;\">【淘宝代理说明】</span></span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.<strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责</span></strong>提供数据包和产品原图</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单给第三方地址代你发货。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.具体</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">详情请</span></strong><span style=\"font-size: 14pt;\">点击本公司首页的导航栏</span><span style=\"color: #ffffff; font-size: 14pt; background-color: #ff0000;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客</span><span style=\"font-size: 14pt;\">服。</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><span style=\"font-size: 24pt;\"><strong><span style=\"font-family: 宋体;\">订单满</span></strong><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">500</span></strong></span><strong><span style=\"font-family: 宋体;\"><span style=\"font-size: 24pt;\">双以上的可以来样订做！！！</span></span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><strong><span style=\"font-family: 宋体;\">财富热线：15387967722</span></strong></span></p><p>&nbsp;</p><p>&nbsp;<img alt=\"0\" src=\"http://i02.c.aliimg.com/img/ibank/2014/260/785/1530587062_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"0 (3)\" src=\"http://i00.c.aliimg.com/img/ibank/2014/650/785/1530587056_1263057136.jpg\" /></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、</span>出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、物流运输途</span>中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。<span style=\"color: #000000;\">一箱（</span></span><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"font-size: 18pt; background-color: #ffff00;\"><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">诚信通、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">买家保障、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\"><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span><span style=\"color: blue;\">等服务&mdash;&mdash;阿里巴巴认证金牌供应商，信誉保证！</span></span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先验货再签收（签收即表示亲认可产品完好）；如有问题请第一时间联系客服说明情况，我们负责处理！</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、需要退</span>货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','110','data/files/store_2/goods_188/small_201412231443084479.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('108','2','material','2014新款四季单鞋时尚碎花布鞋 交叉绑带平底鞋 温州女鞋代理批发','<p><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p><span style=\"color: #ff0000;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">服务费</span></span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"color: #ff0000; font-size: 14pt; background-color: #ffff00;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p>&nbsp;<img alt=\"16)539f45d4bed39\" src=\"http://i01.c.aliimg.com/img/ibank/2014/144/458/1531854441_1263057136.jpg\" /></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、</span>出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、物流运输途</span>中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。<span style=\"color: #000000;\">一箱（</span></span><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"font-size: 18pt; background-color: #ffff00;\"><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">诚信通、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">买家保障、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\"><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span><span style=\"color: blue;\">等服务&mdash;&mdash;阿里巴巴认证金牌供应商，信誉保证！</span></span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先验货再签收（签收即表示亲认可产品完好）；如有问题请第一时间联系客服说明情况，我们负责处理！</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、需要退</span>货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','111','data/files/store_2/goods_183/small_201412231443036489.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('109','2','material','2014新款四季单鞋时尚蕾丝帆布鞋 舒适平底鞋 新款潮女鞋代理批发','<p><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p><span style=\"color: #ff0000;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">服务费</span></span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"color: #ff0000; font-size: 14pt; background-color: #ffff00;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p><strong><span style=\"font-family: 宋体; font-size: 14pt;\"><img alt=\"5)539368faaf541\" src=\"http://i04.c.aliimg.com/img/ibank/2014/943/284/1530482349_1263057136.jpg\" /></span></strong></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、</span>出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、物流运输途</span>中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。<span style=\"color: #000000;\">一箱（</span></span><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"font-size: 18pt; background-color: #ffff00;\"><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">诚信通、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">买家保障、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\"><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span><span style=\"color: blue;\">等服务&mdash;&mdash;阿里巴巴认证金牌供应商，信誉保证！</span></span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先验货再签收（签收即表示亲认可产品完好）；如有问题请第一时间联系客服说明情况，我们负责处理！</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、需要退</span>货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','112','data/files/store_2/goods_189/small_201412231443097557.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('110','2','material','2014新款潮四季单鞋 韩版舒适圆头平底鞋 温州外贸女鞋代理批发','<p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #00ccff;\">【淘宝代理说明】</span></span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.<strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责</span></strong>提供数据包和产品原图</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单给第三方地址代你发货。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.具体</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">详情请</span></strong><span style=\"font-size: 14pt;\">点击本公司首页的导航栏</span><span style=\"color: #ffffff; font-size: 14pt; background-color: #ff0000;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客</span><span style=\"font-size: 14pt;\">服。</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><span style=\"font-size: 24pt;\"><strong><span style=\"font-family: 宋体;\">订单满</span></strong><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">500</span></strong></span><strong><span style=\"font-family: 宋体;\"><span style=\"font-size: 24pt;\">双以上的可以来样订做！！！</span></span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><strong><span style=\"font-family: 宋体;\">财富热线：15387967722</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;<img alt=\"20140623183810271027\" src=\"http://i05.c.aliimg.com/img/ibank/2014/249/892/1537298942_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140623183887008700\" src=\"http://i02.c.aliimg.com/img/ibank/2014/362/475/1538574263_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140623183845534553\" src=\"http://i04.c.aliimg.com/img/ibank/2014/331/475/1538574133_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140623183865656565\" src=\"http://i02.c.aliimg.com/img/ibank/2014/202/475/1538574202_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140623183813901390\" src=\"http://i03.c.aliimg.com/img/ibank/2014/799/892/1537298997_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-size: 15pt; background-color: #00ccff;\">【关于气味】</span>刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于价格】</span>本公司所有产品于厂家直接供货，运营成本<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">+2</span>至<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>元利润<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">=</span>批发单价；薄利多销！没有中间代理，价格低于市场批发价格。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 15pt; background-color: #00ccff;\">【关于物流】</span>本公司默认发圆通快递，到不了地方的留言或联系客服发邮政。一箱（<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">30</span>双）以上可选择发托运站；到货自取（也可叫物流公司中转到您所在地，价格<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">15-30</span>元）时效较慢，价格实惠！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于混批】</span>本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于质量】</span><strong>质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、经消费者协会认证有其它质量问题的。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong>非质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、气味、些许胶水痕迹、肉眼在<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1.5</span>米外不能明显分辨的划痕等，不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">4</span>、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">5</span>、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于售后】</span>本公司已经开通<span style=\"color: #ff0000; background-color: #ffffff;\"><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">诚信通</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">、</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">买家保障</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">；</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">经过<span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span></span>等服务&mdash;&mdash;阿里巴巴认证<span style=\"color: #ffff00; background-color: #ff0000;\">金牌供应商</span>；信誉保证！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、当快递员送货上门时，亲一定要先验货再签收（签收即表示默认产品完好）。有问题请第一时间联系客服说明情况，我们负责处理！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2.</span>需退换货请在买家签收<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">7</span>天之内（质量问题是<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">48</span>小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、需要退货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>元一双包装成本费；退货前提是没穿过，不影响二次销售！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\';\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','113','data/files/store_2/goods_182/small_201412231443022756.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('111','2','material','2014新款潮四季平底单鞋星星拼色时尚学生鞋温州外贸女鞋代理批发','<p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #00ccff;\">【淘宝代理说明】</span></span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.<strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责</span></strong>提供数据包和产品原图</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单给第三方地址代你发货。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.具体</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">详情请</span></strong><span style=\"font-size: 14pt;\">点击本公司首页的导航栏</span><span style=\"color: #ffffff; font-size: 14pt; background-color: #ff0000;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客</span><span style=\"font-size: 14pt;\">服。</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><span style=\"font-size: 24pt;\"><strong><span style=\"font-family: 宋体;\">订单满</span></strong><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">500</span></strong></span><strong><span style=\"font-family: 宋体;\"><span style=\"font-size: 24pt;\">双以上的可以来样订做！！！</span></span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><strong><span style=\"font-family: 宋体;\">财富热线：15387967722</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;<img alt=\"20140504201099269926\" src=\"http://i04.c.aliimg.com/img/ibank/2014/478/766/1538667874_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140504201071497149\" src=\"http://i00.c.aliimg.com/img/ibank/2014/287/766/1538667782_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140504201074617461\" src=\"http://i04.c.aliimg.com/img/ibank/2014/828/766/1538667828_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-size: 15pt; background-color: #00ccff;\">【关于气味】</span>刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于价格】</span>本公司所有产品于厂家直接供货，运营成本<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">+2</span>至<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>元利润<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">=</span>批发单价；薄利多销！没有中间代理，价格低于市场批发价格。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 15pt; background-color: #00ccff;\">【关于物流】</span>本公司默认发圆通快递，到不了地方的留言或联系客服发邮政。一箱（<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">30</span>双）以上可选择发托运站；到货自取（也可叫物流公司中转到您所在地，价格<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">15-30</span>元）时效较慢，价格实惠！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于混批】</span>本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于质量】</span><strong>质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、经消费者协会认证有其它质量问题的。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong>非质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、气味、些许胶水痕迹、肉眼在<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1.5</span>米外不能明显分辨的划痕等，不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">4</span>、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">5</span>、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于售后】</span>本公司已经开通<span style=\"color: #ff0000; background-color: #ffffff;\"><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">诚信通</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">、</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">买家保障</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">；</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">经过<span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span></span>等服务&mdash;&mdash;阿里巴巴认证<span style=\"color: #ffff00; background-color: #ff0000;\">金牌供应商</span>；信誉保证！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、当快递员送货上门时，亲一定要先验货再签收（签收即表示默认产品完好）。有问题请第一时间联系客服说明情况，我们负责处理！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2.</span>需退换货请在买家签收<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">7</span>天之内（质量问题是<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">48</span>小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、需要退货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>元一双包装成本费；退货前提是没穿过，不影响二次销售！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\';\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','114','data/files/store_2/goods_187/small_201412231443077777.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('112','2','material','2014新款潮四季平底单鞋碎花图案甜美学生鞋温州外贸女鞋代理批发','<p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #00ccff;\">【淘宝代理说明】</span></span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.<strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责</span></strong>提供数据包和产品原图</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单给第三方地址代你发货。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.具体</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">详情请</span></strong><span style=\"font-size: 14pt;\">点击本公司首页的导航栏</span><span style=\"color: #ffffff; font-size: 14pt; background-color: #ff0000;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客</span><span style=\"font-size: 14pt;\">服。</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><span style=\"font-size: 24pt;\"><strong><span style=\"font-family: 宋体;\">订单满</span></strong><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">500</span></strong></span><strong><span style=\"font-family: 宋体;\"><span style=\"font-size: 24pt;\">双以上的可以来样订做！！！</span></span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><strong><span style=\"font-family: 宋体;\">财富热线：15387967722</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;<img alt=\"14)53b9a54a45fbb\" src=\"http://i01.c.aliimg.com/img/ibank/2014/649/771/1537177946_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"1)53b9a5471739a\" src=\"http://i05.c.aliimg.com/img/ibank/2014/188/771/1537177881_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"5)53b9a54828d75\" src=\"http://i05.c.aliimg.com/img/ibank/2014/110/595/1537595011_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"4)53b9a54800083\" src=\"http://i03.c.aliimg.com/img/ibank/2014/900/595/1537595009_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"13)53b9a54a29c3d\" src=\"http://i05.c.aliimg.com/img/ibank/2014/839/771/1537177938_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"12)53b9a54a00860\" src=\"http://i05.c.aliimg.com/img/ibank/2014/429/771/1537177924_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"6)53b9a54850304\" height=\"316\" src=\"http://i05.c.aliimg.com/img/ibank/2014/510/595/1537595015_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"11)53b9a549a3227\" src=\"http://i05.c.aliimg.com/img/ibank/2014/209/771/1537177902_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"7)53b9a5487c681\" src=\"http://i05.c.aliimg.com/img/ibank/2014/020/595/1537595020_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"10)53b9a549486d5\" src=\"http://i01.c.aliimg.com/img/ibank/2014/588/771/1537177885_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"9)53b9a5490c23e\" src=\"http://i01.c.aliimg.com/img/ibank/2014/030/595/1537595030_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"8)53b9a548c25d9\" src=\"http://i03.c.aliimg.com/img/ibank/2014/720/595/1537595027_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"3)53b9a54792a44\" src=\"http://i05.c.aliimg.com/img/ibank/2014/969/771/1537177969_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-size: 15pt; background-color: #00ccff;\">【关于气味】</span>刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于价格】</span>本公司所有产品于厂家直接供货，运营成本<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">+2</span>至<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>元利润<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">=</span>批发单价；薄利多销！没有中间代理，价格低于市场批发价格。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 15pt; background-color: #00ccff;\">【关于物流】</span>本公司默认发圆通快递，到不了地方的留言或联系客服发邮政。一箱（<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">30</span>双）以上可选择发托运站；到货自取（也可叫物流公司中转到您所在地，价格<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">15-30</span>元）时效较慢，价格实惠！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于混批】</span>本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于质量】</span><strong>质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、经消费者协会认证有其它质量问题的。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong>非质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、气味、些许胶水痕迹、肉眼在<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1.5</span>米外不能明显分辨的划痕等，不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">4</span>、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">5</span>、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于售后】</span>本公司已经开通<span style=\"color: #ff0000; background-color: #ffffff;\"><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">诚信通</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">、</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">买家保障</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">；</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">经过<span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span></span>等服务&mdash;&mdash;阿里巴巴认证<span style=\"color: #ffff00; background-color: #ff0000;\">金牌供应商</span>；信誉保证！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、当快递员送货上门时，亲一定要先验货再签收（签收即表示默认产品完好）。有问题请第一时间联系客服说明情况，我们负责处理！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2.</span>需退换货请在买家签收<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">7</span>天之内（质量问题是<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">48</span>小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、需要退货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>元一双包装成本费；退货前提是没穿过，不影响二次销售！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\';\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','115','data/files/store_2/goods_175/small_201412231442552495.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('113','2','material','2014新款潮四季平底单鞋红唇图案帆布学生鞋温州外贸女鞋代理批发','<p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #00ccff;\">【淘宝代理说明】</span></span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.<strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责</span></strong>提供数据包和产品原图</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单给第三方地址代你发货。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.具体</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">详情请</span></strong><span style=\"font-size: 14pt;\">点击本公司首页的导航栏</span><span style=\"color: #ffffff; font-size: 14pt; background-color: #ff0000;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客</span><span style=\"font-size: 14pt;\">服。</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><span style=\"font-size: 24pt;\"><strong><span style=\"font-family: 宋体;\">订单满</span></strong><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">500</span></strong></span><strong><span style=\"font-family: 宋体;\"><span style=\"font-size: 24pt;\">双以上的可以来样订做！！！</span></span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><strong><span style=\"font-family: 宋体;\">财富热线：15387967722</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;</p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;<img alt=\"20140620105571277127\" src=\"http://i03.c.aliimg.com/img/ibank/2014/680/094/1537490086_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140620105663426342\" src=\"http://i01.c.aliimg.com/img/ibank/2014/371/094/1537490173_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140620105734973497\" src=\"http://i01.c.aliimg.com/img/ibank/2014/572/094/1537490275_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"20140620105718251825\" src=\"http://i01.c.aliimg.com/img/ibank/2014/722/094/1537490227_1263057136.jpg\" /><br class=\"img-brk\" /><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-size: 15pt; background-color: #00ccff;\">【关于气味】</span>刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于价格】</span>本公司所有产品于厂家直接供货，运营成本<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">+2</span>至<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>元利润<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">=</span>批发单价；薄利多销！没有中间代理，价格低于市场批发价格。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 15pt; background-color: #00ccff;\">【关于物流】</span>本公司默认发圆通快递，到不了地方的留言或联系客服发邮政。一箱（<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">30</span>双）以上可选择发托运站；到货自取（也可叫物流公司中转到您所在地，价格<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">15-30</span>元）时效较慢，价格实惠！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于混批】</span>本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于质量】</span><strong>质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、经消费者协会认证有其它质量问题的。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong>非质量问题包括：</strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、气味、些许胶水痕迹、肉眼在<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1.5</span>米外不能明显分辨的划痕等，不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">4</span>、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">5</span>、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"color: #ffffff; font-family: simhei; font-size: 15pt; background-color: #00ccff;\">【关于售后】</span>本公司已经开通<span style=\"color: #ff0000; background-color: #ffffff;\"><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">诚信通</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">、</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">买家保障</span><strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">；</span></strong><span style=\"font-family: \'微软雅黑\',\'sans-serif\';\">经过<span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span></span>等服务&mdash;&mdash;阿里巴巴认证<span style=\"color: #ffff00; background-color: #ff0000;\">金牌供应商</span>；信誉保证！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">1</span>、当快递员送货上门时，亲一定要先验货再签收（签收即表示默认产品完好）。有问题请第一时间联系客服说明情况，我们负责处理！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2.</span>需退换货请在买家签收<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">7</span>天之内（质量问题是<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">48</span>小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">3</span>、需要退货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣<span style=\"font-family: \'Tahoma\',\'sans-serif\';\">2</span>元一双包装成本费；退货前提是没穿过，不影响二次销售！</span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000; font-size: 12pt;\"><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\';\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\">&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','116','data/files/store_2/goods_185/small_201412231443057327.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('114','2','material','四季新款潮高档低帮女单鞋交叉绑带平跟外贸鞋子批发代理','<p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><img alt=\"undefined\" src=\"http://i05.c.aliimg.com/img/ibank/2014/871/130/1510031178_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i05.c.aliimg.com/img/ibank/2014/181/130/1510031181_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i01.c.aliimg.com/img/ibank/2014/591/130/1510031195_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i05.c.aliimg.com/img/ibank/2014/022/130/1510031220_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i03.c.aliimg.com/img/ibank/2014/922/130/1510031229_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i01.c.aliimg.com/img/ibank/2014/132/130/1510031231_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i05.c.aliimg.com/img/ibank/2014/432/130/1510031234_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i03.c.aliimg.com/img/ibank/2014/632/130/1510031236_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i05.c.aliimg.com/img/ibank/2014/732/130/1510031237_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i03.c.aliimg.com/img/ibank/2014/932/130/1510031239_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\">@物流说明</span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递公司一律不发）。</strong><strong style=\"font-size: 14pt;\">一箱（30双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格15-30元）</strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 22pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">@混批说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！！！</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\"><strong style=\"font-size: 14pt;\">质量说明</strong></strong></span></p><p><span style=\"color: #0000ff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>质量问题包括</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、经消费者协会认证有其它质量问题的。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</strong></span></p><p><span style=\"color: #0000ff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>非质量问题包括</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、气味、些许胶水痕迹、肉眼在1.5米外不能明显分辨的划痕等，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、因测量方法不同，尺寸细微不合（误差在1cm以内）的尺码问题，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>4、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>5、对鞋子的材质不满，穿着效果与想象不同等不熟与质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>6、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量问题，外包装的稍微变形和破损不算质量问题！</strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>@售后说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffff00;\"><strong><strong>秉承客户就是上帝的宗旨，本公司接受质量问题的退换货服务；让你没有后顾之忧！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>1、当快递员送货上门时，亲一定要先检查包裹是否破损少件等。有问题请第一时间联系客服说明情况，我们负责处理！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>2.需退换货请在买家签收7天之内（质量问题是48小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</strong></strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffff00;\"><strong><strong>声明：以上条款自您下单付款后即视为同意接受，具有等同合约法律效应！</strong></strong></span></p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','117','data/files/store_2/goods_187/small_201412231443086049.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('115','2','material','四季款百搭时尚单鞋 舒适圆头平底鞋 新款潮女鞋温州鞋子代理批发','<p><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p><span style=\"color: #ff0000;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">【淘宝代理说明】</span></strong></span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">代理需缴纳<span style=\"text-decoration: underline;\">数据包</span>和<span style=\"text-decoration: underline;\">代发货</span><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">服务费</span></span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">39</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">元</span></strong><span style=\"color: #000000; background-color: #ffffff;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt; background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">\\</span></strong></span><strong><span style=\"font-family: 宋体; font-size: 14pt;\">年</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单代理第三方地址发货。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></p><p><strong><span style=\"color: #333333; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们免费向您提供淘宝数据包，详情请</span></strong><span style=\"font-size: 14pt;\">点击本网首页的导航栏</span><span style=\"color: #ff0000; font-size: 14pt; background-color: #ffff00;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客服。</span></p><p><strong><span style=\"color: black; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">订单满</span></strong><strong><span style=\"color: #993300; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">500</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">双以上的可以来样订做。</span></strong></p><p>&nbsp;<img alt=\"5)53b30f5fe4096\" src=\"http://i01.c.aliimg.com/img/ibank/2014/411/846/1533648114_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"1)53b30f5e4e1da\" src=\"http://i01.c.aliimg.com/img/ibank/2014/501/846/1533648105_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"4)53b30f5f66faa\" src=\"http://i01.c.aliimg.com/img/ibank/2014/011/846/1533648110_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"3)53b30f5f09b8c\" src=\"http://i03.c.aliimg.com/img/ibank/2014/901/846/1533648109_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"2)53b30f5eaaadd\" src=\"http://i05.c.aliimg.com/img/ibank/2014/601/846/1533648106_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"6)53b30f60742a5\" src=\"http://i03.c.aliimg.com/img/ibank/2014/721/846/1533648127_1263057136.jpg\" /></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于气味】</span><span style=\"font-size: 14pt;\">刚出厂的鞋子会有些许气味，在通风处放置一会胶水气味就会散去（此情况不属于质量问题，介意者慎拍！）</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于价格】</span><span style=\"font-size: 14pt;\">本公司所有产品于厂家直接供货，运营成本</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">+2</span><span style=\"font-size: 14pt;\">至</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">元利润</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">=</span><span style=\"font-size: 14pt;\">批发单价！薄利多销！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\"><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【</span>关于质量】</span><strong><span style=\"font-size: 14pt;\">质量问题包括：</span></strong></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、</span>出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、经消费者协会认证有其它质量问题的。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><strong><span style=\"font-size: 14pt;\">非质量问题包括：</span></strong></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、气味、些许胶水痕迹、肉眼在</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.5</span><span style=\"font-size: 14pt;\">米外不能明显分辨的划痕等，不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\">、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4</span><span style=\"font-size: 14pt;\">、对鞋子的材质不满，穿着效果与想象不同等不属于质量问题。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">5</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、物流运输途</span>中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量，外包装的稍微变形和破损不算质量问题！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于物流】</span><span style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递一律不发）。<span style=\"color: #000000;\">一箱（</span></span><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">30</span><span style=\"font-size: 14pt;\">双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">15-30</span><span style=\"font-size: 14pt;\">元）。</span></span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于混批】</span><span style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！</span></p><p><span style=\"color: red; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 14pt;\">【关于售后】</span><span style=\"font-size: 14pt;\">本公司已经开通</span><span style=\"font-size: 18pt; background-color: #ffff00;\"><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">诚信通、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\">买家保障、</span><span style=\"color: blue; font-family: \'微软雅黑\',\'sans-serif\';\"><span style=\"background-image: none; background-attachment: scroll; background-repeat: repeat; background-size: auto; background-origin: padding-box; background-clip: border-box;\">企业实地认证</span></span><span style=\"color: blue;\">等服务&mdash;&mdash;阿里巴巴认证金牌供应商，信誉保证！</span></span><span style=\"font-size: 14pt;\">本公司接受质量问题的退换货服务；让你没有后顾之忧！</span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1</span><span style=\"font-size: 14pt;\">、当快递员送货上门时，亲一定要先验货再签收（签收即表示亲认可产品完好）；如有问题请第一时间联系客服说明情况，我们负责处理！</span></span></p><p><span style=\"color: #000000;\"><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span><span style=\"font-size: 14pt;\">需退换货请在买家签收</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">7</span><span style=\"font-size: 14pt;\">天之内（质量问题是</span><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">48</span><span style=\"font-size: 14pt;\">小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</span></span></p><p><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3</span><span style=\"font-size: 14pt;\"><span style=\"color: #000000;\">、需要退</span>货的请先联系客服说明原因。退回的鞋子请用原鞋盒原装包好，不按原鞋盒包装的扣</span><span style=\"color: #000000; font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2</span><span style=\"font-size: 14pt;\">元一双包装费；退货前提是没穿过，不影响二次销售！</span></p><p><strong><span style=\"font-family: \'仿宋_GB2312\',\'serif\'; font-size: 14pt;\">声明：以上条款自亲拍下付款后即视为同意接受，具有等同合约法律效应！</span></strong></p><p style=\"text-align: center;\">&nbsp;</p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','118','data/files/store_2/goods_176/small_201412231442566236.jpeg','1','10','232','387','0','30.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('116','2','material','夏秋季新款潮女鞋网纱镂空尖头平底欧美风皮单鞋外贸鞋批发代理','<p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: yellow; font-family: \'微软雅黑\',\'sans-serif\'; font-size: 26pt;\"><span style=\"background-color: #ff0000;\">本公司专做精品女鞋贸易！支持混批/淘宝代理！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt; text-indent: 126.5pt;\"><strong><span style=\"font-family: 宋体; font-size: 14pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: #00ccff;\">【淘宝代理说明】</span></span></strong></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">1.<strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责</span></strong>提供数据包和产品原图</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">（</span></strong><span style=\"font-size: 14pt;\">不得外传数据包给未经允许的人使用）！</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">2.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们负责按您的淘宝店订单给第三方地址代你发货。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">3.</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">我们将定期或不定期关注你的店铺，并在需要的情况下给予一定的建议和意见。</span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #000000;\"><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\'; font-size: 14pt;\">4.具体</span></strong><strong><span style=\"font-family: 宋体; font-size: 14pt;\">详情请</span></strong><span style=\"font-size: 14pt;\">点击本公司首页的导航栏</span><span style=\"color: #ffffff; font-size: 14pt; background-color: #ff0000;\">代理加盟</span><span style=\"font-size: 14pt;\">，或咨询客</span><span style=\"font-size: 14pt;\">服。</span></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><span style=\"font-size: 24pt;\"><strong><span style=\"font-family: 宋体;\">订单满</span></strong><strong><span style=\"font-family: \'Tahoma\',\'sans-serif\';\">500</span></strong></span><strong><span style=\"font-family: 宋体;\"><span style=\"font-size: 24pt;\">双以上的可以来样订做！！！</span></span></strong></span></p><p style=\"background: white; margin: 0cm 0cm 0pt;\"><span style=\"color: #ff0000; font-size: 22pt;\"><strong><span style=\"font-family: 宋体;\">财富热线：15387967722</span></strong></span></p><p>&nbsp;</p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><img alt=\"undefined\" src=\"http://i04.c.aliimg.com/img/ibank/2014/858/352/1511253858_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" src=\"http://i04.c.aliimg.com/img/ibank/2014/188/352/1511253881_1263057136.jpg\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i04.c.aliimg.com/img/ibank/2014/419/352/1511253914_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1125\" src=\"http://i02.c.aliimg.com/img/ibank/2014/939/352/1511253939_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1125\" src=\"http://i02.c.aliimg.com/img/ibank/2014/569/352/1511253965_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1125\" src=\"http://i02.c.aliimg.com/img/ibank/2014/889/352/1511253988_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1125\" src=\"http://i05.c.aliimg.com/img/ibank/2014/710/940/1510049017_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1003\" src=\"http://i01.c.aliimg.com/img/ibank/2014/230/940/1510049032_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"1125\" src=\"http://i03.c.aliimg.com/img/ibank/2014/360/940/1510049063_1263057136.jpg\" width=\"750\" /><br class=\"img-brk\" /><br class=\"img-brk\" /><img alt=\"undefined\" height=\"500\" src=\"http://i01.c.aliimg.com/img/ibank/2014/860/940/1510049068_1263057136.jpg\" width=\"750\" /></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\">@物流说明</span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司默认发圆通快递，到不了地方的留言或联系客服发邮政（其他快递公司一律不发）。</strong><strong style=\"font-size: 14pt;\">一箱（30双）以上可以发托运站，到货自取（可以叫物流公司中转到您所在地，价格15-30元）</strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 22pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">@混批说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\">本公司支持混批！可任意挑选款式和尺码，爱怎么选就怎么选！！！</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong style=\"font-size: 14pt;\"><strong style=\"font-size: 14pt;\">质量说明</strong></strong></span></p><p><span style=\"color: #0000ff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>质量问题包括</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、出现严重脱胶、裂浆、裂帮、裂面、断（脱）跟、表皮脱落、开线、开裂、脱胶、坏拉锁、钉头突出。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、经消费者协会认证有其它质量问题的。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、根据《国家三包法鞋类产品三包服务明细》及《消费权益保障法鞋类细则》，认定属于质量问题。</strong></span></p><p><span style=\"color: #0000ff; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>非质量问题包括</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>1、气味、些许胶水痕迹、肉眼在1.5米外不能明显分辨的划痕等，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>2、由于显示器的品牌、亮度和对比度不同、些许色差是必然存在的，色差不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>3、因测量方法不同，尺寸细微不合（误差在1cm以内）的尺码问题，不属于质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>4、鞋子配饰、鞋扣等的松紧度，吊扣及扣眼（运输途中可能导致纽扣松脱），不属于质量问题</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>5、对鞋子的材质不满，穿着效果与想象不同等不熟与质量问题。</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>6、物流运输途中的摩擦会导致鞋盒稍微变形，鞋盒只是起到保护产品的功能，本公司只保证产品本身质量问题，外包装的稍微变形和破损不算质量问题！</strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong>@售后说明</strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffff00;\"><strong><strong>秉承客户就是上帝的宗旨，本公司接受质量问题的退换货服务；让你没有后顾之忧！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>1、当快递员送货上门时，亲一定要先检查包裹是否破损少件等。有问题请第一时间联系客服说明情况，我们负责处理！</strong></strong></span></p><p><span style=\"color: #000000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffffff;\"><strong><strong>2.需退换货请在买家签收7天之内（质量问题是48小时）提出申请。选用快递方式退回，拒收平邮和运费到付件，售后客服在收到产品后直接把货款退回您支付宝账户。</strong></strong></span></p><p><span style=\"color: #ff0000; font-family: 仿宋_GB2312; font-size: 15pt; background-color: #ffff00;\"><strong><strong>声明：以上条款自您下单付款后即视为同意接受，具有等同合约法律效应！</strong></strong></span></p><p>&nbsp;</p>','387','服饰箱包鞋靴、 运动	鞋子	单鞋','','0','','','1','0',null,'1419288143','1419288143','119','data/files/store_2/goods_170/small_201412231442502861.jpeg','1','10','232','387','0','30.00','');
DROP TABLE IF EXISTS ecm_goods_attr;
CREATE TABLE ecm_goods_attr (
  gattr_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  attr_name varchar(60) NOT NULL DEFAULT '',
  attr_value varchar(255) NOT NULL DEFAULT '',
  attr_id int(10) unsigned DEFAULT NULL,
  sort_order tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (gattr_id),
  KEY goods_id (goods_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_goods_image;
CREATE TABLE ecm_goods_image (
  image_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  image_url varchar(255) NOT NULL DEFAULT '',
  thumbnail varchar(255) NOT NULL DEFAULT '',
  sort_order tinyint(4) unsigned NOT NULL DEFAULT '0',
  file_id int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (image_id),
  KEY goods_id (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('1','1','data/files/store_2/goods_110/201312262048304586.jpg','data/files/store_2/goods_110/small_201312262048304586.jpg','1','1');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('2','2','data/files/store_2/goods_198/201312262049586818.jpg','data/files/store_2/goods_198/small_201312262049586818.jpg','1','2');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('3','3','data/files/store_2/goods_148/201312262052284448.jpg','data/files/store_2/goods_148/small_201312262052284448.jpg','1','3');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('4','4','data/files/store_2/goods_57/201312262054174988.jpg','data/files/store_2/goods_57/small_201312262054174988.jpg','1','4');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('5','5','data/files/store_2/goods_99/201312262054594117.jpg','data/files/store_2/goods_99/small_201312262054594117.jpg','1','5');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('6','6','data/files/store_2/goods_136/201312262055366831.jpg','data/files/store_2/goods_136/small_201312262055366831.jpg','1','6');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('7','7','data/files/store_2/goods_180/201312262056209107.jpg','data/files/store_2/goods_180/small_201312262056209107.jpg','1','7');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('8','8','data/files/store_2/goods_63/201312262057435880.jpg','data/files/store_2/goods_63/small_201312262057435880.jpg','1','8');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('9','9','data/files/store_2/goods_120/201312262058402887.jpg','data/files/store_2/goods_120/small_201312262058402887.jpg','1','9');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('10','10','data/files/store_2/goods_31/201312262100319871.jpg','data/files/store_2/goods_31/small_201312262100319871.jpg','1','10');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('11','11','data/files/store_2/goods_75/201312262101158858.jpg','data/files/store_2/goods_75/small_201312262101158858.jpg','1','11');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('12','12','data/files/store_2/goods_144/201312262102246687.jpg','data/files/store_2/goods_144/small_201312262102246687.jpg','1','12');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('13','13','data/files/store_2/goods_2/201312262103227833.jpg','data/files/store_2/goods_2/small_201312262103227833.jpg','1','13');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('14','14','data/files/store_2/goods_77/201312262104371080.jpg','data/files/store_2/goods_77/small_201312262104371080.jpg','1','14');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('15','15','data/files/store_2/goods_153/201312262105539118.jpg','data/files/store_2/goods_153/small_201312262105539118.jpg','1','15');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('16','16','data/files/store_2/goods_69/201312262107499378.jpg','data/files/store_2/goods_69/small_201312262107499378.jpg','1','16');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('17','17','data/files/store_2/goods_129/201312262108507192.jpg','data/files/store_2/goods_129/small_201312262108507192.jpg','1','17');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('18','17','data/files/store_2/goods_130/201312262108508363.jpg','data/files/store_2/goods_130/small_201312262108508363.jpg','255','18');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('19','18','data/files/store_2/goods_166/201312262109269656.jpg','data/files/store_2/goods_166/small_201312262109269656.jpg','1','19');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('20','19','data/files/store_2/goods_28/201312262110282113.jpg','data/files/store_2/goods_28/small_201312262110282113.jpg','1','20');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('21','20','data/files/store_2/goods_51/201312262110515808.jpg','data/files/store_2/goods_51/small_201312262110515808.jpg','1','21');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('22','21','data/files/store_2/goods_124/201312262112041198.jpg','data/files/store_2/goods_124/small_201312262112041198.jpg','1','22');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('23','22','data/files/store_2/goods_6/201312262113269791.jpg','data/files/store_2/goods_6/small_201312262113269791.jpg','1','23');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('24','23','data/files/store_2/goods_71/201312262114315846.jpg','data/files/store_2/goods_71/small_201312262114315846.jpg','1','24');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('25','24','data/files/store_2/goods_141/201312262115417011.jpg','data/files/store_2/goods_141/small_201312262115417011.jpg','1','25');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('26','25','data/files/store_2/goods_3/201312262116433996.jpg','data/files/store_2/goods_3/small_201312262116433996.jpg','1','26');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('27','26','data/files/store_2/goods_86/201312262118061068.jpg','data/files/store_2/goods_86/small_201312262118061068.jpg','1','27');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('28','27','data/files/store_2/goods_160/201312262119204138.jpg','data/files/store_2/goods_160/small_201312262119204138.jpg','1','28');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('29','28','data/files/store_2/goods_92/201312262134527551.jpg','data/files/store_2/goods_92/small_201312262134527551.jpg','1','29');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('30','29','data/files/store_2/goods_192/201312262136326387.jpg','data/files/store_2/goods_192/small_201312262136326387.jpg','1','30');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('31','30','data/files/store_2/goods_111/201312262138315559.jpg','data/files/store_2/goods_111/small_201312262138315559.jpg','1','31');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('32','31','data/files/store_2/goods_189/201312262139497936.jpg','data/files/store_2/goods_189/small_201312262139497936.jpg','1','32');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('33','32','data/files/store_2/goods_62/201312262141025440.jpg','data/files/store_2/goods_62/small_201312262141025440.jpg','1','33');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('34','33','data/files/store_2/goods_125/201312262142056946.jpg','data/files/store_2/goods_125/small_201312262142056946.jpg','1','34');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('35','34','data/files/store_2/goods_185/201312262143054186.jpg','data/files/store_2/goods_185/small_201312262143054186.jpg','1','35');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('36','35','data/files/store_2/goods_42/201312262144021189.jpg','data/files/store_2/goods_42/small_201312262144021189.jpg','1','36');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('37','36','data/files/store_2/goods_113/201312262145134866.jpg','data/files/store_2/goods_113/small_201312262145134866.jpg','1','37');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('38','37','data/files/store_2/goods_7/201312262146474624.jpg','data/files/store_2/goods_7/small_201312262146474624.jpg','1','38');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('39','38','data/files/store_2/goods_80/201312262148001815.jpg','data/files/store_2/goods_80/small_201312262148001815.jpg','1','39');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('40','39','data/files/store_2/goods_139/201312262148598688.jpg','data/files/store_2/goods_139/small_201312262148598688.jpg','1','40');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('41','40','data/files/store_2/goods_95/201312262151359791.jpg','data/files/store_2/goods_95/small_201312262151359791.jpg','1','41');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('42','41','data/files/store_2/goods_130/201312262152104798.jpg','data/files/store_2/goods_130/small_201312262152104798.jpg','1','42');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('43','42','data/files/store_2/goods_47/201312262154079508.jpg','data/files/store_2/goods_47/small_201312262154079508.jpg','1','43');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('44','43','data/files/store_2/goods_93/201312262154537504.jpg','data/files/store_2/goods_93/small_201312262154537504.jpg','1','44');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('45','44','data/files/store_2/goods_144/201312262155447040.jpg','data/files/store_2/goods_144/small_201312262155447040.jpg','1','45');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('46','45','data/files/store_2/goods_178/201312262156186146.jpg','data/files/store_2/goods_178/small_201312262156186146.jpg','1','46');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('47','46','data/files/store_2/goods_11/201312262156516537.jpg','data/files/store_2/goods_11/small_201312262156516537.jpg','1','47');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('48','47','data/files/store_2/goods_76/201312262157569987.jpg','data/files/store_2/goods_76/small_201312262157569987.jpg','1','48');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('49','48','data/files/store_2/goods_111/201312262158319438.jpg','data/files/store_2/goods_111/small_201312262158319438.jpg','1','49');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('50','49','data/files/store_2/goods_162/201312262159227323.jpg','data/files/store_2/goods_162/small_201312262159227323.jpg','1','50');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('51','50','data/files/store_2/goods_127/201312262205276887.jpg','data/files/store_2/goods_127/small_201312262205276887.jpg','1','51');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('52','51','data/files/store_2/goods_173/201312262206139520.jpg','data/files/store_2/goods_173/small_201312262206139520.jpg','1','52');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('53','52','data/files/store_2/goods_72/201312262207528762.jpg','data/files/store_2/goods_72/small_201312262207528762.jpg','1','53');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('54','53','data/files/store_2/goods_102/201312262208227300.jpg','data/files/store_2/goods_102/small_201312262208227300.jpg','1','54');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('55','54','data/files/store_2/goods_135/201312262208557042.jpg','data/files/store_2/goods_135/small_201312262208557042.jpg','1','55');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('56','55','data/files/store_2/goods_176/201312262209361435.jpg','data/files/store_2/goods_176/small_201312262209361435.jpg','1','56');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('57','56','data/files/store_2/goods_16/201312262210162177.jpg','data/files/store_2/goods_16/small_201312262210162177.jpg','1','57');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('58','57','data/files/store_2/goods_57/201312262210575290.jpg','data/files/store_2/goods_57/small_201312262210575290.jpg','1','58');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('59','58','data/files/store_2/goods_106/201312262211467126.jpg','data/files/store_2/goods_106/small_201312262211467126.jpg','1','59');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('60','59','data/files/store_2/goods_152/201312262212327144.jpg','data/files/store_2/goods_152/small_201312262212327144.jpg','1','60');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('61','60','data/files/store_2/goods_90/201312262218109004.jpg','data/files/store_2/goods_90/small_201312262218109004.jpg','1','61');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('62','61','data/files/store_2/goods_114/201312262218342575.jpg','data/files/store_2/goods_114/small_201312262218342575.jpg','1','62');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('63','62','data/files/store_2/goods_153/201312262219138421.jpg','data/files/store_2/goods_153/small_201312262219138421.jpg','1','63');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('64','63','data/files/store_2/goods_6/201312262220067431.jpg','data/files/store_2/goods_6/small_201312262220067431.jpg','1','64');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('65','64','data/files/store_2/goods_41/201312262220415407.jpg','data/files/store_2/goods_41/small_201312262220415407.jpg','1','65');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('66','65','data/files/store_2/goods_143/201312262222237668.jpg','data/files/store_2/goods_143/small_201312262222237668.jpg','1','66');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('67','66','data/files/store_2/goods_186/201312262223061143.jpg','data/files/store_2/goods_186/small_201312262223061143.jpg','1','67');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('68','67','data/files/store_2/goods_26/201312262223464846.jpg','data/files/store_2/goods_26/small_201312262223464846.jpg','1','68');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('70','68','data/files/store_2/goods_91/201312262224518849.jpg','data/files/store_2/goods_91/small_201312262224518849.jpg','1','70');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('71','69','data/files/store_2/goods_131/201312262225311490.jpg','data/files/store_2/goods_131/small_201312262225311490.jpg','1','71');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('72','70','data/files/store_2/goods_195/201312262233156335.jpg','data/files/store_2/goods_195/small_201312262233156335.jpg','1','72');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('73','71','data/files/store_2/goods_44/201312262234045839.jpg','data/files/store_2/goods_44/small_201312262234045839.jpg','1','73');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('74','72','data/files/store_2/goods_113/201312262235137180.jpg','data/files/store_2/goods_113/small_201312262235137180.jpg','1','74');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('75','73','data/files/store_2/goods_142/201312262235429182.jpg','data/files/store_2/goods_142/small_201312262235429182.jpg','1','75');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('76','74','data/files/store_2/goods_189/201312262236298305.jpg','data/files/store_2/goods_189/small_201312262236298305.jpg','1','76');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('77','75','data/files/store_2/goods_38/201312262237189780.jpg','data/files/store_2/goods_38/small_201312262237189780.jpg','1','77');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('78','76','data/files/store_2/goods_98/201312262238182827.jpg','data/files/store_2/goods_98/small_201312262238182827.jpg','1','78');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('79','77','data/files/store_2/goods_179/201312262239393163.jpg','data/files/store_2/goods_179/small_201312262239393163.jpg','1','79');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('80','78','data/files/store_2/goods_54/201312262240547284.jpg','data/files/store_2/goods_54/small_201312262240547284.jpg','1','80');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('81','79','data/files/store_2/goods_97/201312262241379970.jpg','data/files/store_2/goods_97/small_201312262241379970.jpg','1','81');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('82','80','data/files/store_2/goods_156/201312262242365477.jpg','data/files/store_2/goods_156/small_201312262242365477.jpg','1','82');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('83','81','data/files/store_2/goods_111/201312262251512164.jpg','data/files/store_2/goods_111/small_201312262251512164.jpg','1','83');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('84','82','data/files/store_2/goods_9/201312262253293800.jpg','data/files/store_2/goods_9/small_201312262253293800.jpg','1','84');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('85','83','data/files/store_2/goods_80/201312262254404774.jpg','data/files/store_2/goods_80/small_201312262254404774.jpg','1','85');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('86','84','data/files/store_2/goods_155/201312262255558436.jpg','data/files/store_2/goods_155/small_201312262255558436.jpg','1','86');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('87','85','data/files/store_2/goods_6/201312262256466045.jpg','data/files/store_2/goods_6/small_201312262256466045.jpg','1','87');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('88','86','data/files/store_2/goods_49/201312262257294186.jpg','data/files/store_2/goods_49/small_201312262257294186.jpg','1','88');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('89','87','data/files/store_2/goods_86/201312262258066317.jpg','data/files/store_2/goods_86/small_201312262258066317.jpg','1','89');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('90','88','data/files/store_2/goods_124/201312262258442397.jpg','data/files/store_2/goods_124/small_201312262258442397.jpg','1','90');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('91','89','data/files/store_2/goods_180/201312262259401924.jpg','data/files/store_2/goods_180/small_201312262259401924.jpg','1','91');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('92','90','data/files/store_2/goods_60/201312262301006712.jpg','data/files/store_2/goods_60/small_201312262301006712.jpg','1','92');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('93','91','data/files/store_2/goods_155/201312262302356953.jpg','data/files/store_2/goods_155/small_201312262302356953.jpg','1','93');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('94','92','data/files/store_2/goods_3/201312262303231812.jpg','data/files/store_2/goods_3/small_201312262303231812.jpg','1','94');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('95','93','data/files/store_2/goods_48/201312262304085587.jpg','data/files/store_2/goods_48/small_201312262304085587.jpg','1','95');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('96','94','data/files/store_2/goods_93/201312262304537590.jpg','data/files/store_2/goods_93/small_201312262304537590.jpg','1','96');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('97','95','data/files/store_2/goods_134/201312262305341913.jpg','data/files/store_2/goods_134/small_201312262305341913.jpg','1','97');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('98','96','data/files/store_2/goods_170/201312262306104597.jpg','data/files/store_2/goods_170/small_201312262306104597.jpg','1','98');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('99','97','data/files/store_2/goods_27/201312262307078496.jpg','data/files/store_2/goods_27/small_201312262307078496.jpg','1','99');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('101','98','data/files/store_2/goods_107/201312262308271759.jpg','data/files/store_2/goods_107/small_201312262308271759.jpg','1','101');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('102','98','data/files/store_2/goods_113/201312262308337745.jpg','data/files/store_2/goods_113/small_201312262308337745.jpg','255','102');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('103','98','data/files/store_2/goods_154/201312262309145699.jpg','data/files/store_2/goods_154/small_201312262309145699.jpg','255','103');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('105','115','data/files/store_2/goods_156/201412231442368870.jpeg','data/files/store_2/goods_156/small_201412231442368870.jpeg','255','106');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('106','112','data/files/store_2/goods_156/201412231442366697.jpeg','data/files/store_2/goods_156/small_201412231442366697.jpeg','255','107');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('107','112','data/files/store_2/goods_157/201412231442379228.jpeg','data/files/store_2/goods_157/small_201412231442379228.jpeg','255','108');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('108','105','data/files/store_2/goods_158/201412231442381696.jpeg','data/files/store_2/goods_158/small_201412231442381696.jpeg','255','109');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('109','113','data/files/store_2/goods_158/201412231442386714.jpeg','data/files/store_2/goods_158/small_201412231442386714.jpeg','255','110');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('110','114','data/files/store_2/goods_159/201412231442391438.jpeg','data/files/store_2/goods_159/small_201412231442391438.jpeg','255','111');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('111','104','data/files/store_2/goods_160/201412231442408228.jpeg','data/files/store_2/goods_160/small_201412231442408228.jpeg','255','112');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('112','108','data/files/store_2/goods_160/201412231442409702.jpeg','data/files/store_2/goods_160/small_201412231442409702.jpeg','255','113');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('113','105','data/files/store_2/goods_161/201412231442415044.jpeg','data/files/store_2/goods_161/small_201412231442415044.jpeg','255','114');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('114','116','data/files/store_2/goods_162/201412231442429934.jpeg','data/files/store_2/goods_162/small_201412231442429934.jpeg','255','115');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('115','113','data/files/store_2/goods_162/201412231442436049.jpeg','data/files/store_2/goods_162/small_201412231442436049.jpeg','255','116');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('116','101','data/files/store_2/goods_163/201412231442434682.jpeg','data/files/store_2/goods_163/small_201412231442434682.jpeg','255','117');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('117','107','data/files/store_2/goods_164/201412231442443839.jpeg','data/files/store_2/goods_164/small_201412231442443839.jpeg','255','118');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('118','100','data/files/store_2/goods_164/201412231442448485.jpeg','data/files/store_2/goods_164/small_201412231442448485.jpeg','255','119');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('119','116','data/files/store_2/goods_165/201412231442452740.jpeg','data/files/store_2/goods_165/small_201412231442452740.jpeg','255','120');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('120','114','data/files/store_2/goods_166/201412231442468363.jpeg','data/files/store_2/goods_166/small_201412231442468363.jpeg','255','121');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('121','104','data/files/store_2/goods_166/201412231442462245.jpeg','data/files/store_2/goods_166/small_201412231442462245.jpeg','255','122');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('122','115','data/files/store_2/goods_167/201412231442479494.jpeg','data/files/store_2/goods_167/small_201412231442479494.jpeg','255','123');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('123','104','data/files/store_2/goods_168/201412231442481783.jpeg','data/files/store_2/goods_168/small_201412231442481783.jpeg','255','124');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('124','110','data/files/store_2/goods_168/201412231442482790.jpeg','data/files/store_2/goods_168/small_201412231442482790.jpeg','255','125');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('125','106','data/files/store_2/goods_169/201412231442499694.jpeg','data/files/store_2/goods_169/small_201412231442499694.jpeg','255','126');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('126','109','data/files/store_2/goods_169/201412231442502821.jpeg','data/files/store_2/goods_169/small_201412231442502821.jpeg','255','127');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('127','116','data/files/store_2/goods_170/201412231442502861.jpeg','data/files/store_2/goods_170/small_201412231442502861.jpeg','255','128');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('128','109','data/files/store_2/goods_171/201412231442515421.jpeg','data/files/store_2/goods_171/small_201412231442515421.jpeg','255','129');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('129','106','data/files/store_2/goods_172/201412231442521904.jpeg','data/files/store_2/goods_172/small_201412231442521904.jpeg','255','130');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('130','101','data/files/store_2/goods_172/201412231442524989.jpeg','data/files/store_2/goods_172/small_201412231442524989.jpeg','255','131');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('131','103','data/files/store_2/goods_173/201412231442533148.jpeg','data/files/store_2/goods_173/small_201412231442533148.jpeg','255','132');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('132','111','data/files/store_2/goods_173/201412231442532327.jpeg','data/files/store_2/goods_173/small_201412231442532327.jpeg','255','133');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('133','110','data/files/store_2/goods_174/201412231442548787.jpeg','data/files/store_2/goods_174/small_201412231442548787.jpeg','255','134');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('134','112','data/files/store_2/goods_175/201412231442552495.jpeg','data/files/store_2/goods_175/small_201412231442552495.jpeg','255','135');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('135','101','data/files/store_2/goods_176/201412231442562379.jpeg','data/files/store_2/goods_176/small_201412231442562379.jpeg','255','136');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('136','115','data/files/store_2/goods_176/201412231442566236.jpeg','data/files/store_2/goods_176/small_201412231442566236.jpeg','255','137');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('137','108','data/files/store_2/goods_177/201412231442573059.jpeg','data/files/store_2/goods_177/small_201412231442573059.jpeg','255','138');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('138','105','data/files/store_2/goods_177/201412231442574317.jpeg','data/files/store_2/goods_177/small_201412231442574317.jpeg','255','139');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('139','102','data/files/store_2/goods_178/201412231442583885.jpeg','data/files/store_2/goods_178/small_201412231442583885.jpeg','255','140');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('140','103','data/files/store_2/goods_179/201412231442592293.jpeg','data/files/store_2/goods_179/small_201412231442592293.jpeg','255','141');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('141','106','data/files/store_2/goods_179/201412231442595441.jpeg','data/files/store_2/goods_179/small_201412231442595441.jpeg','255','142');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('142','107','data/files/store_2/goods_180/201412231443007160.jpeg','data/files/store_2/goods_180/small_201412231443007160.jpeg','255','143');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('143','102','data/files/store_2/goods_181/201412231443019225.jpeg','data/files/store_2/goods_181/small_201412231443019225.jpeg','255','144');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('144','100','data/files/store_2/goods_181/201412231443011303.jpeg','data/files/store_2/goods_181/small_201412231443011303.jpeg','255','145');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('145','110','data/files/store_2/goods_182/201412231443022756.jpeg','data/files/store_2/goods_182/small_201412231443022756.jpeg','255','146');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('146','108','data/files/store_2/goods_183/201412231443036489.jpeg','data/files/store_2/goods_183/small_201412231443036489.jpeg','255','147');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('147','102','data/files/store_2/goods_184/201412231443047733.jpeg','data/files/store_2/goods_184/small_201412231443047733.jpeg','255','148');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('148','100','data/files/store_2/goods_184/201412231443046230.jpeg','data/files/store_2/goods_184/small_201412231443046230.jpeg','255','149');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('149','103','data/files/store_2/goods_185/201412231443056225.jpeg','data/files/store_2/goods_185/small_201412231443056225.jpeg','255','150');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('150','113','data/files/store_2/goods_185/201412231443057327.jpeg','data/files/store_2/goods_185/small_201412231443057327.jpeg','255','151');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('151','111','data/files/store_2/goods_186/201412231443067701.jpeg','data/files/store_2/goods_186/small_201412231443067701.jpeg','255','152');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('152','111','data/files/store_2/goods_187/201412231443077777.jpeg','data/files/store_2/goods_187/small_201412231443077777.jpeg','255','153');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('153','114','data/files/store_2/goods_187/201412231443086049.jpeg','data/files/store_2/goods_187/small_201412231443086049.jpeg','255','154');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('154','107','data/files/store_2/goods_188/201412231443084479.jpeg','data/files/store_2/goods_188/small_201412231443084479.jpeg','255','155');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('155','109','data/files/store_2/goods_189/201412231443097557.jpeg','data/files/store_2/goods_189/small_201412231443097557.jpeg','255','156');
DROP TABLE IF EXISTS ecm_goods_prop;
CREATE TABLE ecm_goods_prop (
  pid int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  sort_order int(11) NOT NULL,
  PRIMARY KEY (pid)
) TYPE=MyISAM;
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('1','品牌','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('2','类别','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('3','规格','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('4','产地','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('5','价格区间','1','255');
DROP TABLE IF EXISTS ecm_goods_prop_value;
CREATE TABLE ecm_goods_prop_value (
  vid int(11) NOT NULL AUTO_INCREMENT,
  pid int(11) NOT NULL,
  prop_value varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  sort_order int(11) NOT NULL,
  PRIMARY KEY (vid)
) TYPE=MyISAM;
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('1','1','红富士','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('2','2','苹果','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('3','3','礼盒装','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('4','4','国产','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('5','5','0-50','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('6','1','杰记水果','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('7','2','梨子','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('8','2','葡萄','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('9','2','红提','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('10','3','礼袋装','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('11','4','进口','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('12','5','50-100','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('13','5','100-200','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('14','5','200-500','1','255');
DROP TABLE IF EXISTS ecm_goods_pvs;
CREATE TABLE ecm_goods_pvs (
  goods_id int(11) NOT NULL,
  pvs text NOT NULL,
  PRIMARY KEY (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('1','5:12;4:11;3:3;2:2;1:6');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('2','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('3','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('4','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('5','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('6','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('7','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('8','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('19','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('20','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('21','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('25','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('26','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('27','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('99','');
DROP TABLE IF EXISTS ecm_goods_qa;
CREATE TABLE ecm_goods_qa (
  ques_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  question_content varchar(255) NOT NULL,
  user_id int(10) unsigned NOT NULL,
  store_id int(10) unsigned NOT NULL,
  email varchar(60) NOT NULL,
  item_id int(10) unsigned NOT NULL DEFAULT '0',
  item_name varchar(255) NOT NULL DEFAULT '',
  reply_content varchar(255) NOT NULL,
  time_post int(10) unsigned NOT NULL,
  time_reply int(10) unsigned NOT NULL,
  if_new tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'goods',
  PRIMARY KEY (ques_id),
  KEY user_id (user_id),
  KEY goods_id (item_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_goods_spec;
CREATE TABLE ecm_goods_spec (
  spec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  spec_1 varchar(60) NOT NULL DEFAULT '',
  spec_2 varchar(60) NOT NULL DEFAULT '',
  color_rgb varchar(7) NOT NULL DEFAULT '',
  price decimal(10,2) NOT NULL DEFAULT '0.00',
  stock int(11) NOT NULL DEFAULT '0',
  sku varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (spec_id),
  KEY goods_id (goods_id),
  KEY price (price)
) TYPE=MyISAM;
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('1','1','','','','8.00','96','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('2','2','','','','100.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('3','3','','','','68.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('4','4','','','','69.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('5','5','','','','10.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('6','6','','','','32.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('7','7','','','','65.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('8','8','','','','38.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('9','9','','','','50.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('10','10','','','','108.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('11','11','','','','25.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('12','12','','','','28.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('13','13','','','','108.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('14','14','','','','21.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('15','15','','','','30.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('16','16','','','','92.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('17','17','','','','110.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('18','18','','','','32.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('19','19','','','','52.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('20','20','','','','95.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('21','21','','','','72.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('22','22','','','','36.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('23','23','','','','128.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('24','24','','','','62.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('25','25','','','','350.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('26','26','','','','100.00','0','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('27','27','','','','666.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('28','28','','','','108.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('29','29','','','','3.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('30','30','','','','59.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('31','31','','','','6.90','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('32','32','','','','10.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('33','33','','','','16.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('34','34','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('35','35','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('36','36','','','','22.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('37','37','','','','20.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('38','38','','','','21.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('39','39','','','','80.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('40','40','','','','2.20','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('41','41','','','','2.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('42','42','','','','2.30','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('43','43','','','','7.30','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('44','44','','','','4.10','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('45','45','','','','14.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('46','46','','','','5.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('47','47','','','','5.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('48','48','','','','2.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('49','49','','','','2.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('50','50','','','','74.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('51','51','','','','14.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('52','52','','','','144.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('53','53','','','','17.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('54','54','','','','354.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('55','55','','','','679.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('56','56','','','','606.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('57','57','','','','374.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('58','58','','','','774.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('59','59','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('60','60','','','','35.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('61','61','','','','24.90','0','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('62','62','','','','46.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('63','63','','','','215.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('64','64','','','','202.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('65','65','','','','158.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('66','66','','','','2.90','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('67','67','','','','23.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('68','68','','','','5.10','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('69','69','','','','45.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('70','70','','','','850.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('71','71','','','','750.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('72','72','','','','690.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('73','73','','','','850.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('74','74','','','','2090.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('75','75','','','','173.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('76','76','','','','390.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('77','77','','','','169.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('78','78','','','','129.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('79','79','','','','69.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('80','80','','','','89.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('81','81','','','','699.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('82','82','','','','499.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('83','83','','','','269.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('84','84','','','','170.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('85','85','','','','399.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('86','86','','','','259.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('87','87','','','','88.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('88','88','','','','249.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('89','89','','','','239.00','98','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('90','90','','','','270.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('91','91','','','','1298.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('92','92','','','','495.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('93','93','','','','199.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('94','94','','','','599.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('95','95','','','','688.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('96','96','','','','1749.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('97','97','','','','1549.00','97','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('98','98','','','','0.01','95','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('106','103','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('105','102','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('104','101','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('103','100','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('107','104','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('108','105','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('109','106','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('110','107','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('111','108','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('112','109','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('113','110','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('114','111','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('115','112','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('116','113','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('117','114','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('118','115','','','','30.00','999','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('119','116','','','','30.00','999','');
DROP TABLE IF EXISTS ecm_goods_statistics;
CREATE TABLE ecm_goods_statistics (
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  views int(10) unsigned NOT NULL DEFAULT '0',
  collects int(10) unsigned NOT NULL DEFAULT '0',
  carts int(10) unsigned NOT NULL DEFAULT '0',
  orders int(10) unsigned NOT NULL DEFAULT '0',
  sales int(10) unsigned NOT NULL DEFAULT '0',
  comments int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('1','8','0','4','4','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('2','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('3','2','0','1','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('4','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('5','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('6','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('7','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('8','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('9','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('10','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('11','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('12','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('13','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('14','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('15','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('16','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('17','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('18','1','0','1','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('19','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('20','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('21','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('22','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('23','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('24','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('25','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('26','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('27','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('28','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('29','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('30','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('31','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('32','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('33','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('34','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('35','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('36','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('37','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('38','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('39','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('40','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('41','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('42','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('43','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('44','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('45','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('46','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('47','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('48','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('49','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('50','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('51','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('52','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('53','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('54','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('55','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('56','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('57','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('58','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('59','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('60','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('61','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('62','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('63','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('64','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('65','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('66','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('67','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('68','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('69','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('70','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('71','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('72','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('73','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('74','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('75','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('76','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('77','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('78','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('79','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('80','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('81','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('82','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('83','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('84','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('85','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('86','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('87','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('88','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('89','6','0','2','2','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('90','4','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('91','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('92','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('93','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('94','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('95','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('96','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('97','4','0','3','3','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('98','16','0','5','5','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('100','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('101','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('102','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('103','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('104','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('105','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('106','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('107','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('108','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('109','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('110','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('111','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('112','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('113','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('114','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('115','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('116','0','0','0','0','0','0');
DROP TABLE IF EXISTS ecm_groupbuy;
CREATE TABLE ecm_groupbuy (
  group_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  group_name varchar(255) NOT NULL DEFAULT '',
  group_image varchar(255) NOT NULL,
  group_desc varchar(255) NOT NULL DEFAULT '',
  start_time int(10) unsigned NOT NULL DEFAULT '0',
  end_time int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  spec_price text NOT NULL,
  min_quantity smallint(5) unsigned NOT NULL DEFAULT '0',
  max_per_user smallint(5) unsigned NOT NULL DEFAULT '0',
  state tinyint(3) unsigned NOT NULL DEFAULT '0',
  recommended tinyint(3) unsigned NOT NULL DEFAULT '0',
  views int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (group_id),
  KEY goods_id (goods_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_groupbuy_log;
CREATE TABLE ecm_groupbuy_log (
  group_id int(10) unsigned NOT NULL DEFAULT '0',
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(60) NOT NULL DEFAULT '',
  quantity smallint(5) unsigned NOT NULL DEFAULT '0',
  spec_quantity text NOT NULL,
  linkman varchar(60) NOT NULL DEFAULT '',
  tel varchar(60) NOT NULL DEFAULT '',
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (group_id,user_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_kmenus;
CREATE TABLE ecm_kmenus (
  kmenus_id int(10) unsigned NOT NULL,
  stypeinfo tinyint(3) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  stype tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (kmenus_id)
) TYPE=MyISAM;
INSERT INTO ecm_kmenus ( `kmenus_id`, `stypeinfo`, `status`, `stype` ) VALUES  ('2','3','0','1');
DROP TABLE IF EXISTS ecm_kmenusinfo;
CREATE TABLE ecm_kmenusinfo (
  kmenusinfo_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  kmenus_id int(10) unsigned NOT NULL DEFAULT '0',
  title varchar(60) NOT NULL DEFAULT '',
  color varchar(20) NOT NULL DEFAULT '',
  loadurl varchar(255) NOT NULL DEFAULT '',
  imgurl varchar(255) NOT NULL DEFAULT '',
  nums tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (kmenusinfo_id)
) TYPE=MyISAM;
INSERT INTO ecm_kmenusinfo ( `kmenusinfo_id`, `kmenus_id`, `title`, `color`, `loadurl`, `imgurl`, `nums` ) VALUES  ('1','2','','FFB92E','tel:12345678','http://vmall.vchuang.cn/mall/kmenus/plugmenu1.png','1');
INSERT INTO ecm_kmenusinfo ( `kmenusinfo_id`, `kmenus_id`, `title`, `color`, `loadurl`, `imgurl`, `nums` ) VALUES  ('2','2','客服QQ','088CFF','http://wpa.qq.com/msgrd?v=3&uin=540616918&site=qq&menu=yes','http://ecmall.jyds95.com/mall/kmenus/plugmenu1.png','2');
INSERT INTO ecm_kmenusinfo ( `kmenusinfo_id`, `kmenus_id`, `title`, `color`, `loadurl`, `imgurl`, `nums` ) VALUES  ('3','2','购物','FF47E0','http://ecmall.jyds95.com/index.php?app=cart','http://ecmall.jyds95.com/mall/kmenus/plugmenu1.png','3');
DROP TABLE IF EXISTS ecm_lottery;
CREATE TABLE ecm_lottery (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  title varchar(60) NOT NULL DEFAULT '' COMMENT '活动名称',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  statdate int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  enddate int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  startinfo varchar(255) NOT NULL DEFAULT '' COMMENT '活动规则',
  info varchar(255) NOT NULL DEFAULT '' COMMENT '活动说明',
  startpicurl varchar(255) NOT NULL DEFAULT '' COMMENT '开始图片',
  endinfo varchar(255) NOT NULL DEFAULT '' COMMENT '结束说明',
  endpicurl varchar(255) NOT NULL DEFAULT '' COMMENT '结束图片',
  fist varchar(255) NOT NULL DEFAULT '',
  fistnums int(10) unsigned NOT NULL DEFAULT '0',
  `second` varchar(255) NOT NULL DEFAULT '',
  secondnums int(10) unsigned NOT NULL DEFAULT '0',
  third varchar(255) NOT NULL DEFAULT '',
  thirdnums int(10) unsigned NOT NULL DEFAULT '0',
  dayflag tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '抽奖方式',
  allpeople varchar(255) NOT NULL DEFAULT '' COMMENT '中奖概率',
  joinnum int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加入人数',
  checkpwd varchar(255) NOT NULL DEFAULT '' COMMENT '兑奖密码',
  displayjpnums tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示奖品数量',
  click int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数量',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) TYPE=MyISAM;
INSERT INTO ecm_lottery ( `id`, `title`, `store_id`, `statdate`, `enddate`, `startinfo`, `info`, `startpicurl`, `endinfo`, `endpicurl`, `fist`, `fistnums`, `second`, `secondnums`, `third`, `thirdnums`, `dayflag`, `allpeople`, `joinnum`, `checkpwd`, `displayjpnums`, `click`, `status` ) VALUES  ('4','大转盘活动','2','1400025600','1400544000','123123','亲，请点击进入大转盘活123动页面，祝您好运哦！','','亲，活动已经结束，请继续关注我们的后续活动哦。','','1','2','1','2','1','2','1','1','2','','0','0','1');
INSERT INTO ecm_lottery ( `id`, `title`, `store_id`, `statdate`, `enddate`, `startinfo`, `info`, `startpicurl`, `endinfo`, `endpicurl`, `fist`, `fistnums`, `second`, `secondnums`, `third`, `thirdnums`, `dayflag`, `allpeople`, `joinnum`, `checkpwd`, `displayjpnums`, `click`, `status` ) VALUES  ('3','1212','2','1400112000','1401494400','活动规则','1','data/files/store_2/lottery/201405211419571075.png','2','data/files/store_2/lottery/201405211419576308.png','1','1','2','2','3','3','1','1','2','123456','0','0','0');
DROP TABLE IF EXISTS ecm_mail_queue;
CREATE TABLE ecm_mail_queue (
  queue_id int(11) unsigned NOT NULL AUTO_INCREMENT,
  mail_to varchar(150) NOT NULL DEFAULT '',
  mail_encoding varchar(50) NOT NULL DEFAULT '',
  mail_subject varchar(255) NOT NULL DEFAULT '',
  mail_body text NOT NULL,
  priority tinyint(1) unsigned NOT NULL DEFAULT '2',
  err_num tinyint(1) unsigned NOT NULL DEFAULT '0',
  add_time int(11) NOT NULL DEFAULT '0',
  lock_expiry int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (queue_id)
) TYPE=MyISAM;
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('1','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1335948628。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.taocz.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=1\">http://ecmall.taocz.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=1</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2013-12-26 23:31</p>','1','0','1388043112','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('2','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1335948628，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.taocz.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=1\">http://ecmall.taocz.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=1</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.taocz.60data.com/index.php?app=seller_order\">http://ecmall.taocz.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2013-12-26 23:31</p>','1','0','1388043113','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('3','jat@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的jatwxf:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435542086。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=2\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:16</p>','1','0','1419225376','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('4','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435542086，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=2\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:16</p>','1','0','1419225376','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('5','jat@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的jatwxf:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435581716。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=3\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=3</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:17</p>','1','0','1419225470','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('6','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435581716，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=3\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=3</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:17</p>','1','0','1419225470','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('7','jat@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的jatwxf:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435579923。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=4\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=4</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:20</p>','1','0','1419225647','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('8','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435579923，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=4\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=4</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:20</p>','1','0','1419225647','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('9','jat@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的jatwxf:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435591789。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=5\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=5</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:26</p>','1','0','1419225990','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('10','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435591789，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=5\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=5</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:26</p>','1','0','1419225990','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('11','jat@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的jatwxf:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435529312。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=6\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=6</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:33</p>','1','0','1419226411','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('12','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435529312，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=6\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=6</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:33</p>','1','0','1419226411','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('13','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435527341。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=7\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:51</p>','1','0','1419227489','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('14','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435527341，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=7\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:51</p>','1','0','1419227489','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('15','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435520214。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=8\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=8</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:53</p>','1','0','1419227601','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('16','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435520214，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=8\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=8</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:53</p>','1','0','1419227601','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('17','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435514155。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=9\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:56</p>','1','0','1419227783','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('18','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435514155，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=9\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 21:56</p>','1','0','1419227783','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('19','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435567032。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=10\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=10</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 22:05</p>','1','0','1419228330','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('20','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435567032，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=10\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=10</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 22:05</p>','1','0','1419228330','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('21','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435577069。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=11\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=11</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:07</p>','1','0','1419232066','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('22','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435577069，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=11\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=11</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:07</p>','1','0','1419232066','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('23','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435530043。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=12\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=12</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:15</p>','1','0','1419232545','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('24','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435530043，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=12\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=12</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:15</p>','1','0','1419232545','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('25','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435582626。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=13\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=13</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:31</p>','1','0','1419233477','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('26','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435582626，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=13\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=13</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:31</p>','1','0','1419233477','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('27','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435560539。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=14\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=14</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:56</p>','1','0','1419234973','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('28','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435560539，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=14\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=14</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-22 23:56</p>','1','0','1419234973','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('29','jat@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的jatwxf:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1435569031。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=15\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=15</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-23 00:08</p>','1','0','1419235725','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('30','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1435569031，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=15\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=15</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-23 00:08</p>','1','0','1419235725','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('31','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1436097933。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=15\">http://ecmall.jyds95.com/index.php?app=buyer_order&amp;act=view&amp;order_id=15</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-27 15:19</p>','1','0','1419635943','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('32','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1436097933，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=15\">http://ecmall.jyds95.com/index.php?app=seller_order&amp;act=view&amp;order_id=15</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.jyds95.com/index.php?app=seller_order\">http://ecmall.jyds95.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-12-27 15:19</p>','1','0','1419635943','0');
DROP TABLE IF EXISTS ecm_member;
CREATE TABLE ecm_member (
  user_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_name varchar(60) NOT NULL DEFAULT '',
  email varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  real_name varchar(60) DEFAULT NULL,
  gender tinyint(3) unsigned NOT NULL DEFAULT '0',
  birthday date DEFAULT NULL,
  phone_tel varchar(60) DEFAULT NULL,
  phone_mob varchar(60) DEFAULT NULL,
  im_qq varchar(60) DEFAULT NULL,
  im_msn varchar(60) DEFAULT NULL,
  im_skype varchar(60) DEFAULT NULL,
  im_yahoo varchar(60) DEFAULT NULL,
  im_aliww varchar(60) DEFAULT NULL,
  reg_time int(10) unsigned DEFAULT '0',
  last_login int(10) unsigned DEFAULT NULL,
  last_ip varchar(15) DEFAULT NULL,
  logins int(10) unsigned NOT NULL DEFAULT '0',
  ugrade tinyint(3) unsigned NOT NULL DEFAULT '0',
  portrait varchar(255) DEFAULT NULL,
  outer_id int(10) unsigned NOT NULL DEFAULT '0',
  activation varchar(60) DEFAULT NULL,
  feed_config text NOT NULL,
  PRIMARY KEY (user_id),
  KEY user_name (user_name),
  KEY email (email),
  KEY outer_id (outer_id)
) TYPE=MyISAM;
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('1','admin','admin@qq.com','7fef6171469e80d32c0559f88b377245','','0',null,null,null,'','',null,null,null,'1388016632','1419702757','182.137.155.176','24','0','','0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('2','seller','123456@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1388031020','1419701615','182.137.155.176','27','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('3','buyer','123456@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1388031042','1419635792','58.58.192.132','10','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('4','dashan','1107831801@qq.com','62b69e20b75ffba7c53a87129257bbc2',null,'0',null,null,null,null,null,null,null,null,'1419630347','1419630348','58.58.192.132','2','0',null,'0',null,'');
DROP TABLE IF EXISTS ecm_membership_card_info;
CREATE TABLE ecm_membership_card_info (
  membership_card_info_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(100) NOT NULL DEFAULT '',
  card_num int(10) NOT NULL,
  phone varchar(20) NOT NULL DEFAULT '',
  sex tinyint(1) unsigned NOT NULL DEFAULT '0',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(100) DEFAULT '',
  address varchar(255) NOT NULL DEFAULT '',
  create_time int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (membership_card_info_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_membership_setting;
CREATE TABLE ecm_membership_setting (
  membership_setting_id int(10) unsigned NOT NULL DEFAULT '0',
  title varchar(60) NOT NULL DEFAULT '',
  cover_image varchar(100) NOT NULL DEFAULT '',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(100) DEFAULT NULL,
  address varchar(100) DEFAULT NULL,
  phone varchar(100) DEFAULT NULL,
  card_name varchar(60) NOT NULL DEFAULT '',
  card_name_color varchar(10) NOT NULL DEFAULT '',
  bg varchar(255) NOT NULL DEFAULT '',
  card_bg varchar(100) NOT NULL DEFAULT '',
  card_num_color varchar(10) NOT NULL DEFAULT '',
  card_description varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (membership_setting_id)
) TYPE=MyISAM;
INSERT INTO ecm_membership_setting ( `membership_setting_id`, `title`, `cover_image`, `region_id`, `region_name`, `address`, `phone`, `card_name`, `card_name_color`, `bg`, `card_bg`, `card_num_color`, `card_description` ) VALUES  ('2','微创动力会员卡','','1','中国','北京','010-12345678','微创动力会员卡','FFFFFF','','themes/mall/taocz/styles/default/images/huodong/membership_card/card_bg/card_bg05.png','FFFFFF','会员卡说明');
DROP TABLE IF EXISTS ecm_message;
CREATE TABLE ecm_message (
  msg_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  from_id int(10) unsigned NOT NULL DEFAULT '0',
  to_id int(10) unsigned NOT NULL DEFAULT '0',
  title varchar(100) NOT NULL DEFAULT '',
  content text NOT NULL,
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  last_update int(10) unsigned NOT NULL DEFAULT '0',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (msg_id),
  KEY from_id (from_id),
  KEY to_id (to_id),
  KEY parent_id (parent_id)
) TYPE=MyISAM;
INSERT INTO ecm_message ( `msg_id`, `from_id`, `to_id`, `title`, `content`, `add_time`, `last_update`, `new`, `parent_id`, `status` ) VALUES  ('1','0','2','','恭喜，您的店铺已开通，赶快来用户中心发布商品吧。','1388031275','1388031275','0','0','3');
DROP TABLE IF EXISTS ecm_module;
CREATE TABLE ecm_module (
  module_id varchar(30) NOT NULL DEFAULT '',
  module_name varchar(100) NOT NULL DEFAULT '',
  module_version varchar(5) NOT NULL DEFAULT '',
  module_desc text NOT NULL,
  module_config text NOT NULL,
  enabled tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (module_id)
) TYPE=MyISAM;
INSERT INTO ecm_module ( `module_id`, `module_name`, `module_version`, `module_desc`, `module_config`, `enabled` ) VALUES  ('msg','手机短信','1.0','安装以后，用户可以使用手机短信收发功能','','1');
DROP TABLE IF EXISTS ecm_msg;
CREATE TABLE ecm_msg (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(100) DEFAULT NULL,
  mobile varchar(100) DEFAULT NULL,
  num int(10) unsigned NOT NULL DEFAULT '0',
  functions varchar(255) DEFAULT NULL,
  state tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_msglog;
CREATE TABLE ecm_msglog (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  user_name varchar(100) DEFAULT NULL,
  to_mobile varchar(100) DEFAULT NULL,
  content text,
  state varchar(100) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT '0',
  `time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_navigation;
CREATE TABLE ecm_navigation (
  nav_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  title varchar(60) NOT NULL DEFAULT '',
  link varchar(255) NOT NULL DEFAULT '',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  open_new tinyint(3) unsigned NOT NULL DEFAULT '0',
  hot tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (nav_id)
) TYPE=MyISAM;
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('1','middle','官方淘宝店','http://ailimo.taobao.com/','255','0','0');
INSERT INTO ecm_navigation ( `nav_id`, `type`, `title`, `link`, `sort_order`, `open_new`, `hot` ) VALUES  ('2','middle','进入论坛','http://bbs.jyds95.com','255','0','0');
DROP TABLE IF EXISTS ecm_order;
CREATE TABLE ecm_order (
  order_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  order_sn varchar(20) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  extension varchar(10) NOT NULL DEFAULT '',
  seller_id int(10) unsigned NOT NULL DEFAULT '0',
  seller_name varchar(100) DEFAULT NULL,
  buyer_id int(10) unsigned NOT NULL DEFAULT '0',
  buyer_name varchar(100) DEFAULT NULL,
  buyer_email varchar(60) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  payment_id int(10) unsigned DEFAULT NULL,
  payment_name varchar(100) DEFAULT NULL,
  payment_code varchar(20) NOT NULL DEFAULT '',
  out_trade_sn varchar(20) NOT NULL DEFAULT '',
  pay_time int(10) unsigned DEFAULT NULL,
  pay_message varchar(255) NOT NULL DEFAULT '',
  ship_time int(10) unsigned DEFAULT NULL,
  invoice_no varchar(255) DEFAULT NULL,
  finished_time int(10) unsigned NOT NULL DEFAULT '0',
  goods_amount decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  discount decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  order_amount decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  evaluation_status tinyint(1) unsigned NOT NULL DEFAULT '0',
  evaluation_time int(10) unsigned NOT NULL DEFAULT '0',
  anonymous tinyint(3) unsigned NOT NULL DEFAULT '0',
  postscript varchar(255) NOT NULL DEFAULT '',
  pay_alter tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (order_id),
  KEY order_sn (order_sn,seller_id),
  KEY seller_name (seller_name),
  KEY buyer_name (buyer_name),
  KEY add_time (add_time)
) TYPE=MyISAM;
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('1','1335948628','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1388043112','1','支付宝','alipay','1335948628',null,'',null,null,'0','32.00','0.00','32.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('7','1435527341','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419227489','5','微信jsapi支付','wxjsapi','1435527341',null,'',null,null,'0','1549.00','0.00','1549.00','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('8','1435520214','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419227601','5','微信jsapi支付','wxjsapi','1435520214',null,'',null,null,'0','1549.00','0.00','1549.00','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('9','1435514155','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419227783','5','微信jsapi支付','wxjsapi','1435514155',null,'',null,null,'0','1549.00','0.00','1549.00','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('10','1435567032','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419228330','5','微信jsapi支付','wxjsapi','1435567032',null,'',null,null,'0','68.00','0.00','68.00','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('11','1435577069','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419232066','5','微信jsapi支付','wxjsapi','1435577069',null,'',null,null,'0','8.00','0.00','8.00','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('12','1435530043','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419232545','5','微信jsapi支付','wxjsapi','1435530043',null,'',null,null,'0','0.01','0.00','0.01','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('13','1435582626','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419233477','5','微信jsapi支付','wxjsapi','1435582626',null,'',null,null,'0','0.01','0.00','0.01','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('14','1435560539','material','normal','2','超级店铺','3','buyer','123456@qq.com','11','1419234973','5','微信jsapi支付','wxjsapi','1435560539',null,'',null,null,'0','0.01','0.00','0.01','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('15','1436097933','material','normal','2','超级店铺','3','buyer','123456@qq.com','10','1419635943','3','货到付款','cod','',null,'',null,null,'0','0.01','0.00','0.01','0','0','0','','0');
DROP TABLE IF EXISTS ecm_order_extm;
CREATE TABLE ecm_order_extm (
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  consignee varchar(60) NOT NULL DEFAULT '',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(255) DEFAULT NULL,
  address varchar(255) DEFAULT NULL,
  zipcode varchar(20) DEFAULT NULL,
  phone_tel varchar(60) DEFAULT NULL,
  phone_mob varchar(60) DEFAULT NULL,
  shipping_id int(10) unsigned DEFAULT NULL,
  shipping_name varchar(100) DEFAULT NULL,
  shipping_fee decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (order_id),
  KEY consignee (consignee)
) TYPE=MyISAM;
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('1','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('7','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('8','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('9','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('10','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('11','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('12','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('13','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('14','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('15','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','包邮','0.00');
DROP TABLE IF EXISTS ecm_order_goods;
CREATE TABLE ecm_order_goods (
  rec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_name varchar(255) NOT NULL DEFAULT '',
  spec_id int(10) unsigned NOT NULL DEFAULT '0',
  specification varchar(255) DEFAULT NULL,
  price decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  quantity int(10) unsigned NOT NULL DEFAULT '1',
  goods_image varchar(255) DEFAULT NULL,
  evaluation tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  credit_value tinyint(1) NOT NULL DEFAULT '0',
  is_valid tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (rec_id),
  KEY order_id (order_id,goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('1','1','18','沙洲优黄花开富贵480ml/瓶','18','','32.00','1','data/files/store_2/goods_166/small_201312262109269656.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('7','7','97','三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','97','','1549.00','1','data/files/store_2/goods_27/small_201312262307078496.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('8','8','97','三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','97','','1549.00','1','data/files/store_2/goods_27/small_201312262307078496.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('9','9','97','三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','97','','1549.00','1','data/files/store_2/goods_27/small_201312262307078496.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('10','10','3','海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~','3','','68.00','1','data/files/store_2/goods_148/small_201312262052284448.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('11','11','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','8.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('12','12','98','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','98','','0.01','1','data/files/store_2/goods_107/small_201312262308271759.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('13','13','98','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','98','','0.01','1','data/files/store_2/goods_107/small_201312262308271759.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('14','14','98','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','98','','0.01','1','data/files/store_2/goods_107/small_201312262308271759.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('15','15','98','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','98','','0.01','1','data/files/store_2/goods_107/small_201312262308271759.jpg','0','','0','1');
DROP TABLE IF EXISTS ecm_order_log;
CREATE TABLE ecm_order_log (
  log_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  order_id int(10) unsigned NOT NULL DEFAULT '0',
  operator varchar(60) NOT NULL DEFAULT '',
  order_status varchar(60) NOT NULL DEFAULT '',
  changed_status varchar(60) NOT NULL DEFAULT '',
  remark varchar(255) DEFAULT NULL,
  log_time int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (log_id),
  KEY order_id (order_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_pageview;
CREATE TABLE ecm_pageview (
  rec_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  view_date date NOT NULL DEFAULT '0000-00-00',
  view_times int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (rec_id),
  UNIQUE KEY storedate (store_id,view_date)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_partner;
CREATE TABLE ecm_partner (
  partner_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  title varchar(100) NOT NULL DEFAULT '',
  link varchar(255) NOT NULL DEFAULT '',
  logo varchar(255) DEFAULT NULL,
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (partner_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_payment;
CREATE TABLE ecm_payment (
  payment_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  payment_code varchar(20) NOT NULL DEFAULT '',
  payment_name varchar(100) NOT NULL DEFAULT '',
  payment_desc varchar(255) DEFAULT NULL,
  config text,
  is_online tinyint(3) unsigned NOT NULL DEFAULT '1',
  enabled tinyint(3) unsigned NOT NULL DEFAULT '1',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (payment_id),
  KEY store_id (store_id),
  KEY payment_code (payment_code)
) TYPE=MyISAM;
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('3','2','cod','货到付款','','','0','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('2','2','bank','银行汇款','','','0','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('4','2','alipayfree','支付宝免签接口','','a:2:{s:18:\"alipayfree_account\";s:14:\"hxdicr@163.com\";s:5:\"pcode\";s:0:\"\";}','1','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('5','2','wxjsapi','微信jsapi支付','','a:5:{s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}','1','1','0');
DROP TABLE IF EXISTS ecm_privilege;
CREATE TABLE ecm_privilege (
  priv_code varchar(20) NOT NULL DEFAULT '',
  priv_name varchar(60) NOT NULL DEFAULT '',
  parent_code varchar(20) DEFAULT NULL,
  `owner` varchar(10) NOT NULL DEFAULT 'mall',
  PRIMARY KEY (priv_code)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_recommend;
CREATE TABLE ecm_recommend (
  recom_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  recom_name varchar(100) NOT NULL DEFAULT '',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (recom_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_recommend ( `recom_id`, `recom_name`, `store_id` ) VALUES  ('1','果蔬','0');
INSERT INTO ecm_recommend ( `recom_id`, `recom_name`, `store_id` ) VALUES  ('2','酒水','0');
DROP TABLE IF EXISTS ecm_recommended_goods;
CREATE TABLE ecm_recommended_goods (
  recom_id int(10) unsigned NOT NULL DEFAULT '0',
  goods_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (recom_id,goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','27','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','26','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','25','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','24','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','23','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','22','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','21','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','20','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','19','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','18','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','17','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','16','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','15','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','14','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','13','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','12','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','11','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','10','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','9','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','8','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','7','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','6','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','5','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','4','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','3','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','2','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','1','255');
DROP TABLE IF EXISTS ecm_region;
CREATE TABLE ecm_region (
  region_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  region_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (region_id),
  KEY parent_id (parent_id)
) TYPE=MyISAM;
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1','中国','0','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2','北京','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3','北京','2','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('4','东城区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('5','西城区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('6','海淀区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('7','朝阳区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('8','崇文区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('9','宣武区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('10','丰台区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('11','石景山区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('12','房山区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('13','门头沟区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('14','通州区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('15','顺义区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('16','昌平区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('17','怀柔区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('18','平谷区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('19','大兴区','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('20','密云县','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('21','延庆县','3','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('22','安徽','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('23','安庆','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('24','迎江区','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('25','大观区','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('26','宜秀区','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('27','桐城市','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('28','怀宁县','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('29','枞阳县','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('30','潜山县','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('31','太湖县','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('32','宿松县','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('33','望江县','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('34','岳西县','23','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('35','蚌埠','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('36','中市区','35','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('37','东市区','35','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('38','西市区','35','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('39','郊区','35','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('40','怀远县','35','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('41','五河县','35','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('42','固镇县','35','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('43','巢湖','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('44','居巢区','43','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('45','庐江县','43','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('46','无为县','43','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('47','含山县','43','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('48','和县','43','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('49','池州','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('50','贵池区','49','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('51','东至县','49','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('52','石台县','49','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('53','青阳县','49','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('54','滁州','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('55','琅琊区','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('56','南谯区','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('57','天长市','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('58','明光市','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('59','来安县','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('60','全椒县','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('61','定远县','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('62','凤阳县','54','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('63','阜阳','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('64','蚌山区','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('65','龙子湖区','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('66','禹会区','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('67','淮上区','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('68','颍州区','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('69','颍东区','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('70','颍泉区','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('71','界首市','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('72','临泉县','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('73','太和县','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('74','阜南县','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('75','颖上县','63','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('76','淮北','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('77','相山区','76','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('78','杜集区','76','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('79','烈山区','76','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('80','濉溪县','76','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('81','淮南','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('82','田家庵区','81','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('83','大通区','81','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('84','谢家集区','81','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('85','八公山区','81','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('86','潘集区','81','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('87','凤台县','81','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('88','黄山','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('89','屯溪区','88','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('90','黄山区','88','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('91','徽州区','88','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('92','歙县','88','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('93','休宁县','88','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('94','黟县','88','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('95','祁门县','88','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('96','六安','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('97','金安区','96','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('98','裕安区','96','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('99','寿县','96','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('100','霍邱县','96','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('101','舒城县','96','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('102','金寨县','96','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('103','霍山县','96','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('104','马鞍山','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('105','雨山区','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('106','花山区','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('107','金家庄区','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('108','当涂县','104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('109','宿州','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('110','埇桥区','109','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('111','砀山县','109','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('112','萧县','109','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('113','灵璧县','109','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('114','泗县','109','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('115','铜陵','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('116','铜官山区','115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('117','狮子山区','115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('118','郊区','115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('119','铜陵县','115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('120','芜湖','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('121','镜湖区','120','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('122','弋江区','120','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('123','鸠江区','120','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('124','三山区','120','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('125','芜湖县','120','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('126','繁昌县','120','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('127','南陵县','120','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('128','宣城','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('129','宣州区','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('130','宁国市','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('131','郎溪县','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('132','广德县','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('133','泾县','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('134','绩溪县','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('135','旌德县','128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('136','亳州','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('137','涡阳县','136','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('138','蒙城县','136','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('139','利辛县','136','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('140','谯城区','136','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('141','合肥','22','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('142','庐阳区','141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('143','瑶海区','141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('144','蜀山区','141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('145','包河区','141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('146','长丰县','141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('147','肥东县','141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('148','肥西县','141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('149','福建','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('150','福州','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('151','鼓楼区','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('152','台江区','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('153','仓山区','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('154','马尾区','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('155','晋安区','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('156','福清市','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('157','长乐市','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('158','闽侯县','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('159','连江县','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('160','罗源县','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('161','闽清县','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('162','永泰县','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('163','平潭县','150','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('164','龙岩','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('165','新罗区','164','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('166','漳平市','164','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('167','长汀县','164','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('168','永定县','164','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('169','上杭县','164','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('170','武平县','164','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('171','连城县','164','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('172','南平','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('173','延平区','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('174','邵武市','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('175','武夷山市','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('176','建瓯市','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('177','建阳市','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('178','顺昌县','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('179','浦城县','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('180','光泽县','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('181','松溪县','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('182','政和县','172','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('183','宁德','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('184','蕉城区','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('185','福安市','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('186','福鼎市','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('187','霞浦县','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('188','古田县','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('189','屏南县','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('190','寿宁县','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('191','周宁县','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('192','柘荣县','183','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('193','莆田','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('194','城厢区','193','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('195','涵江区','193','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('196','荔城区','193','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('197','秀屿区','193','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('198','仙游县','193','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('199','泉州','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('200','鲤城区','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('201','丰泽区','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('202','洛江区','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('203','清濛开发区','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('204','泉港区','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('205','石狮市','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('206','晋江市','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('207','南安市','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('208','惠安县','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('209','安溪县','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('210','永春县','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('211','德化县','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('212','金门县','199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('213','三明','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('214','梅列区','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('215','三元区','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('216','永安市','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('217','明溪县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('218','清流县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('219','宁化县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('220','大田县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('221','尤溪县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('222','沙县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('223','将乐县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('224','泰宁县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('225','建宁县','213','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('226','厦门','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('227','思明区','226','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('228','海沧区','226','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('229','湖里区','226','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('230','集美区','226','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('231','同安区','226','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('232','翔安区','226','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('233','漳州','149','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('234','芗城区','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('235','龙文区','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('236','龙海市','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('237','云霄县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('238','漳浦县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('239','诏安县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('240','长泰县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('241','东山县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('242','南靖县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('243','平和县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('244','华安县','233','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('245','甘肃','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('246','兰州','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('247','皋兰县','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('248','城关区','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('249','七里河区','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('250','西固区','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('251','安宁区','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('252','红古区','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('253','永登县','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('254','榆中县','246','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('255','白银','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('256','白银区','255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('257','平川区','255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('258','会宁县','255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('259','景泰县','255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('260','靖远县','255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('261','定西','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('262','临洮县','261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('263','陇西县','261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('264','通渭县','261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('265','渭源县','261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('266','漳县','261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('267','岷县','261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('268','安定区','261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('269','甘南','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('270','合作市','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('271','临潭县','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('272','卓尼县','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('273','舟曲县','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('274','迭部县','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('275','玛曲县','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('276','碌曲县','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('277','夏河县','269','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('278','嘉峪关','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('279','嘉峪关市','278','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('280','金昌','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('281','金川区','280','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('282','永昌县','280','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('283','酒泉','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('284','肃州区','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('285','玉门市','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('286','敦煌市','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('287','金塔县','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('288','瓜州县','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('289','肃北','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('290','阿克塞','283','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('291','临夏','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('292','临夏市','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('293','临夏县','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('294','康乐县','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('295','永靖县','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('296','广河县','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('297','和政县','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('298','东乡族自治县','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('299','积石山','291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('300','陇南','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('301','成县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('302','徽县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('303','康县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('304','礼县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('305','两当县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('306','文县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('307','西和县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('308','宕昌县','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('309','武都区','300','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('310','平凉','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('311','崇信县','310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('312','华亭县','310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('313','静宁县','310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('314','灵台县','310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('315','崆峒区','310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('316','庄浪县','310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('317','泾川县','310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('318','庆阳','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('319','合水县','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('320','华池县','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('321','环县','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('322','宁县','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('323','庆城县','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('324','西峰区','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('325','镇原县','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('326','正宁县','318','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('327','天水','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('328','甘谷县','327','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('329','秦安县','327','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('330','清水县','327','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('331','秦州区','327','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('332','麦积区','327','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('333','武山县','327','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('334','张家川','327','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('335','武威','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('336','古浪县','335','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('337','民勤县','335','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('338','天祝','335','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('339','凉州区','335','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('340','张掖','245','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('341','高台县','340','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('342','临泽县','340','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('343','民乐县','340','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('344','山丹县','340','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('345','肃南','340','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('346','甘州区','340','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('347','广东','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('348','广州','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('349','从化市','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('350','天河区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('351','东山区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('352','白云区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('353','海珠区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('354','荔湾区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('355','越秀区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('356','黄埔区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('357','番禺区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('358','花都区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('359','增城区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('360','从化区','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('361','市郊','348','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('362','深圳','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('363','福田区','362','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('364','罗湖区','362','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('365','南山区','362','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('366','宝安区','362','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('367','龙岗区','362','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('368','盐田区','362','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('369','潮州','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('370','湘桥区','369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('371','潮安县','369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('372','饶平县','369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('373','东莞','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('374','南城区','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('375','东城区','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('376','万江区','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('377','莞城区','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('378','石龙镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('379','虎门镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('380','麻涌镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('381','道滘镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('382','石碣镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('383','沙田镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('384','望牛墩镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('385','洪梅镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('386','茶山镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('387','寮步镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('388','大岭山镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('389','大朗镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('390','黄江镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('391','樟木头','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('392','凤岗镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('393','塘厦镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('394','谢岗镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('395','厚街镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('396','清溪镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('397','常平镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('398','桥头镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('399','横沥镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('400','东坑镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('401','企石镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('402','石排镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('403','长安镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('404','中堂镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('405','高埗镇','373','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('406','佛山','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('407','禅城区','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('408','南海区','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('409','顺德区','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('410','三水区','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('411','高明区','406','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('412','河源','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('413','东源县','412','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('414','和平县','412','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('415','源城区','412','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('416','连平县','412','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('417','龙川县','412','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('418','紫金县','412','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('419','惠州','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('420','惠阳区','419','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('421','惠城区','419','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('422','大亚湾','419','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('423','博罗县','419','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('424','惠东县','419','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('425','龙门县','419','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('426','江门','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('427','江海区','426','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('428','蓬江区','426','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('429','新会区','426','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('430','台山市','426','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('431','开平市','426','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('432','鹤山市','426','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('433','恩平市','426','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('434','揭阳','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('435','榕城区','434','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('436','普宁市','434','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('437','揭东县','434','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('438','揭西县','434','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('439','惠来县','434','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('440','茂名','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('441','茂南区','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('442','茂港区','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('443','高州市','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('444','化州市','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('445','信宜市','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('446','电白县','440','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('447','梅州','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('448','梅县','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('449','梅江区','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('450','兴宁市','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('451','大埔县','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('452','丰顺县','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('453','五华县','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('454','平远县','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('455','蕉岭县','447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('456','清远','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('457','清城区','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('458','英德市','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('459','连州市','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('460','佛冈县','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('461','阳山县','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('462','清新县','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('463','连山','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('464','连南','456','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('465','汕头','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('466','南澳县','465','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('467','潮阳区','465','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('468','澄海区','465','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('469','龙湖区','465','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('470','金平区','465','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('471','濠江区','465','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('472','潮南区','465','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('473','汕尾','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('474','城区','473','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('475','陆丰市','473','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('476','海丰县','473','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('477','陆河县','473','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('478','韶关','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('479','曲江县','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('480','浈江区','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('481','武江区','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('482','曲江区','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('483','乐昌市','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('484','南雄市','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('485','始兴县','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('486','仁化县','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('487','翁源县','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('488','新丰县','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('489','乳源','478','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('490','阳江','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('491','江城区','490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('492','阳春市','490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('493','阳西县','490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('494','阳东县','490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('495','云浮','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('496','云城区','495','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('497','罗定市','495','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('498','新兴县','495','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('499','郁南县','495','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('500','云安县','495','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('501','湛江','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('502','赤坎区','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('503','霞山区','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('504','坡头区','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('505','麻章区','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('506','廉江市','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('507','雷州市','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('508','吴川市','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('509','遂溪县','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('510','徐闻县','501','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('511','肇庆','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('512','肇庆市','511','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('513','高要市','511','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('514','四会市','511','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('515','广宁县','511','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('516','怀集县','511','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('517','封开县','511','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('518','德庆县','511','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('519','中山','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('520','石岐街道','519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('521','东区街道','519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('522','西区街道','519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('523','环城街道','519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('524','中山港街道','519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('525','五桂山街道','519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('526','珠海','347','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('527','香洲区','526','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('528','斗门区','526','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('529','金湾区','526','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('530','广西','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('531','南宁','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('532','邕宁区','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('533','青秀区','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('534','兴宁区','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('535','良庆区','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('536','西乡塘区','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('537','江南区','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('538','武鸣县','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('539','隆安县','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('540','马山县','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('541','上林县','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('542','宾阳县','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('543','横县','531','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('544','桂林','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('545','秀峰区','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('546','叠彩区','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('547','象山区','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('548','七星区','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('549','雁山区','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('550','阳朔县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('551','临桂县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('552','灵川县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('553','全州县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('554','平乐县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('555','兴安县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('556','灌阳县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('557','荔浦县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('558','资源县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('559','永福县','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('560','龙胜','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('561','恭城','544','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('562','百色','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('563','右江区','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('564','凌云县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('565','平果县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('566','西林县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('567','乐业县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('568','德保县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('569','田林县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('570','田阳县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('571','靖西县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('572','田东县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('573','那坡县','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('574','隆林','562','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('575','北海','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('576','海城区','575','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('577','银海区','575','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('578','铁山港区','575','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('579','合浦县','575','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('580','崇左','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('581','江州区','580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('582','凭祥市','580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('583','宁明县','580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('584','扶绥县','580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('585','龙州县','580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('586','大新县','580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('587','天等县','580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('588','防城港','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('589','港口区','588','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('590','防城区','588','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('591','东兴市','588','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('592','上思县','588','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('593','贵港','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('594','港北区','593','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('595','港南区','593','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('596','覃塘区','593','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('597','桂平市','593','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('598','平南县','593','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('599','河池','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('600','金城江区','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('601','宜州市','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('602','天峨县','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('603','凤山县','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('604','南丹县','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('605','东兰县','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('606','都安','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('607','罗城','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('608','巴马','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('609','环江','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('610','大化','599','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('611','贺州','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('612','八步区','611','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('613','钟山县','611','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('614','昭平县','611','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('615','富川','611','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('616','来宾','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('617','兴宾区','616','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('618','合山市','616','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('619','象州县','616','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('620','武宣县','616','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('621','忻城县','616','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('622','金秀','616','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('623','柳州','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('624','城中区','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('625','鱼峰区','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('626','柳北区','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('627','柳南区','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('628','柳江县','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('629','柳城县','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('630','鹿寨县','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('631','融安县','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('632','融水','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('633','三江','623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('634','钦州','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('635','钦南区','634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('636','钦北区','634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('637','灵山县','634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('638','浦北县','634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('639','梧州','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('640','万秀区','639','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('641','蝶山区','639','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('642','长洲区','639','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('643','岑溪市','639','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('644','苍梧县','639','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('645','藤县','639','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('646','蒙山县','639','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('647','玉林','530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('648','玉州区','647','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('649','北流市','647','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('650','容县','647','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('651','陆川县','647','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('652','博白县','647','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('653','兴业县','647','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('654','贵州','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('655','贵阳','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('656','南明区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('657','云岩区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('658','花溪区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('659','乌当区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('660','白云区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('661','小河区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('662','金阳新区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('663','新天园区','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('664','清镇市','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('665','开阳县','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('666','修文县','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('667','息烽县','655','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('668','安顺','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('669','西秀区','668','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('670','关岭','668','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('671','镇宁','668','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('672','紫云','668','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('673','平坝县','668','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('674','普定县','668','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('675','毕节','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('676','毕节市','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('677','大方县','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('678','黔西县','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('679','金沙县','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('680','织金县','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('681','纳雍县','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('682','赫章县','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('683','威宁','675','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('684','六盘水','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('685','钟山区','684','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('686','六枝特区','684','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('687','水城县','684','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('688','盘县','684','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('689','黔东南','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('690','凯里市','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('691','黄平县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('692','施秉县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('693','三穗县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('694','镇远县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('695','岑巩县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('696','天柱县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('697','锦屏县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('698','剑河县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('699','台江县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('700','黎平县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('701','榕江县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('702','从江县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('703','雷山县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('704','麻江县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('705','丹寨县','689','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('706','黔南','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('707','都匀市','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('708','福泉市','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('709','荔波县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('710','贵定县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('711','瓮安县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('712','独山县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('713','平塘县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('714','罗甸县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('715','长顺县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('716','龙里县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('717','惠水县','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('718','三都','706','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('719','黔西南','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('720','兴义市','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('721','兴仁县','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('722','普安县','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('723','晴隆县','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('724','贞丰县','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('725','望谟县','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('726','册亨县','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('727','安龙县','719','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('728','铜仁','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('729','铜仁市','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('730','江口县','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('731','石阡县','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('732','思南县','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('733','德江县','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('734','玉屏','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('735','印江','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('736','沿河','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('737','松桃','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('738','万山特区','728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('739','遵义','654','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('740','红花岗区','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('741','务川县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('742','道真县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('743','汇川区','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('744','赤水市','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('745','仁怀市','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('746','遵义县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('747','桐梓县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('748','绥阳县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('749','正安县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('750','凤冈县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('751','湄潭县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('752','余庆县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('753','习水县','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('754','道真','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('755','务川','739','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('756','海南','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('757','海口','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('758','秀英区','757','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('759','龙华区','757','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('760','琼山区','757','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('761','美兰区','757','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('762','三亚','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('763','白沙','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('764','保亭','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('765','昌江','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('766','澄迈县','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('767','定安县','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('768','东方','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('769','乐东','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('770','临高县','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('771','陵水','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('772','琼海','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('773','琼中','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('774','屯昌县','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('775','万宁','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('776','文昌','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('777','五指山','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('778','儋州','756','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('779','市区','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('780','洋浦开发区','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('781','那大镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('782','王五镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('783','雅星镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('784','大成镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('785','中和镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('786','峨蔓镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('787','南丰镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('788','白马井镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('789','兰洋镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('790','和庆镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('791','海头镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('792','排浦镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('793','东成镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('794','光村镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('795','木棠镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('796','新州镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('797','三都镇','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('798','其他','778','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('799','河北','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('800','石家庄','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('801','长安区','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('802','桥东区','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('803','桥西区','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('804','新华区','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('805','裕华区','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('806','井陉矿区','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('807','高新区','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('808','辛集市','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('809','藁城市','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('810','晋州市','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('811','新乐市','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('812','鹿泉市','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('813','井陉县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('814','正定县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('815','栾城县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('816','行唐县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('817','灵寿县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('818','高邑县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('819','深泽县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('820','赞皇县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('821','无极县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('822','平山县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('823','元氏县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('824','赵县','800','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('825','保定','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('826','新市区','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('827','南市区','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('828','北市区','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('829','涿州市','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('830','定州市','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('831','安国市','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('832','高碑店市','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('833','满城县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('834','清苑县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('835','涞水县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('836','阜平县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('837','徐水县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('838','定兴县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('839','唐县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('840','高阳县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('841','容城县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('842','涞源县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('843','望都县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('844','安新县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('845','易县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('846','曲阳县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('847','蠡县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('848','顺平县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('849','博野县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('850','雄县','825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('851','沧州','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('852','运河区','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('853','新华区','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('854','泊头市','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('855','任丘市','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('856','黄骅市','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('857','河间市','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('858','沧县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('859','青县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('860','东光县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('861','海兴县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('862','盐山县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('863','肃宁县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('864','南皮县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('865','吴桥县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('866','献县','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('867','孟村','851','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('868','承德','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('869','双桥区','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('870','双滦区','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('871','鹰手营子矿区','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('872','承德县','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('873','兴隆县','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('874','平泉县','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('875','滦平县','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('876','隆化县','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('877','丰宁','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('878','宽城','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('879','围场','868','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('880','邯郸','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('881','从台区','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('882','复兴区','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('883','邯山区','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('884','峰峰矿区','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('885','武安市','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('886','邯郸县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('887','临漳县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('888','成安县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('889','大名县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('890','涉县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('891','磁县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('892','肥乡县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('893','永年县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('894','邱县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('895','鸡泽县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('896','广平县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('897','馆陶县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('898','魏县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('899','曲周县','880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('900','衡水','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('901','桃城区','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('902','冀州市','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('903','深州市','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('904','枣强县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('905','武邑县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('906','武强县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('907','饶阳县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('908','安平县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('909','故城县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('910','景县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('911','阜城县','900','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('912','廊坊','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('913','安次区','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('914','广阳区','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('915','霸州市','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('916','三河市','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('917','固安县','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('918','永清县','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('919','香河县','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('920','大城县','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('921','文安县','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('922','大厂','912','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('923','秦皇岛','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('924','海港区','923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('925','山海关区','923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('926','北戴河区','923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('927','昌黎县','923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('928','抚宁县','923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('929','卢龙县','923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('930','青龙','923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('931','唐山','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('932','路北区','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('933','路南区','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('934','古冶区','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('935','开平区','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('936','丰南区','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('937','丰润区','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('938','遵化市','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('939','迁安市','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('940','滦县','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('941','滦南县','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('942','乐亭县','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('943','迁西县','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('944','玉田县','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('945','唐海县','931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('946','邢台','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('947','桥东区','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('948','桥西区','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('949','南宫市','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('950','沙河市','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('951','邢台县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('952','临城县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('953','内丘县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('954','柏乡县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('955','隆尧县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('956','任县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('957','南和县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('958','宁晋县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('959','巨鹿县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('960','新河县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('961','广宗县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('962','平乡县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('963','威县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('964','清河县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('965','临西县','946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('966','张家口','799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('967','桥西区','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('968','桥东区','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('969','宣化区','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('970','下花园区','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('971','宣化县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('972','张北县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('973','康保县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('974','沽源县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('975','尚义县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('976','蔚县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('977','阳原县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('978','怀安县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('979','万全县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('980','怀来县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('981','涿鹿县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('982','赤城县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('983','崇礼县','966','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('984','河南','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('985','郑州','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('986','金水区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('987','邙山区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('988','二七区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('989','管城区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('990','中原区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('991','上街区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('992','惠济区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('993','郑东新区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('994','经济技术开发区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('995','高新开发区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('996','出口加工区','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('997','巩义市','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('998','荥阳市','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('999','新密市','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1000','新郑市','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1001','登封市','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1002','中牟县','985','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1003','洛阳','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1004','西工区','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1005','老城区','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1006','涧西区','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1007','瀍河回族区','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1008','洛龙区','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1009','吉利区','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1010','偃师市','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1011','孟津县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1012','新安县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1013','栾川县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1014','嵩县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1015','汝阳县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1016','宜阳县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1017','洛宁县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1018','伊川县','1003','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1019','开封','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1020','鼓楼区','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1021','龙亭区','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1022','顺河回族区','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1023','金明区','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1024','禹王台区','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1025','杞县','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1026','通许县','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1027','尉氏县','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1028','开封县','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1029','兰考县','1019','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1030','安阳','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1031','北关区','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1032','文峰区','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1033','殷都区','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1034','龙安区','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1035','林州市','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1036','安阳县','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1037','汤阴县','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1038','滑县','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1039','内黄县','1030','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1040','鹤壁','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1041','淇滨区','1040','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1042','山城区','1040','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1043','鹤山区','1040','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1044','浚县','1040','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1045','淇县','1040','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1046','济源','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1047','济源市','1046','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1048','焦作','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1049','解放区','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1050','中站区','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1051','马村区','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1052','山阳区','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1053','沁阳市','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1054','孟州市','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1055','修武县','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1056','博爱县','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1057','武陟县','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1058','温县','1048','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1059','南阳','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1060','卧龙区','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1061','宛城区','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1062','邓州市','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1063','南召县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1064','方城县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1065','西峡县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1066','镇平县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1067','内乡县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1068','淅川县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1069','社旗县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1070','唐河县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1071','新野县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1072','桐柏县','1059','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1073','平顶山','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1074','新华区','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1075','卫东区','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1076','湛河区','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1077','石龙区','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1078','舞钢市','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1079','汝州市','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1080','宝丰县','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1081','叶县','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1082','鲁山县','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1083','郏县','1073','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1084','三门峡','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1085','湖滨区','1084','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1086','义马市','1084','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1087','灵宝市','1084','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1088','渑池县','1084','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1089','陕县','1084','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1090','卢氏县','1084','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1091','商丘','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1092','梁园区','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1093','睢阳区','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1094','永城市','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1095','民权县','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1096','睢县','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1097','宁陵县','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1098','虞城县','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1099','柘城县','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1100','夏邑县','1091','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1101','新乡','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1102','卫滨区','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1103','红旗区','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1104','凤泉区','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1105','牧野区','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1106','卫辉市','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1107','辉县市','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1108','新乡县','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1109','获嘉县','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1110','原阳县','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1111','延津县','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1112','封丘县','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1113','长垣县','1101','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1114','信阳','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1115','浉河区','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1116','平桥区','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1117','罗山县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1118','光山县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1119','新县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1120','商城县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1121','固始县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1122','潢川县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1123','淮滨县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1124','息县','1114','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1125','许昌','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1126','魏都区','1125','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1127','禹州市','1125','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1128','长葛市','1125','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1129','许昌县','1125','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1130','鄢陵县','1125','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1131','襄城县','1125','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1132','周口','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1133','川汇区','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1134','项城市','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1135','扶沟县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1136','西华县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1137','商水县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1138','沈丘县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1139','郸城县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1140','淮阳县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1141','太康县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1142','鹿邑县','1132','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1143','驻马店','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1144','驿城区','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1145','西平县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1146','上蔡县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1147','平舆县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1148','正阳县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1149','确山县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1150','泌阳县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1151','汝南县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1152','遂平县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1153','新蔡县','1143','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1154','漯河','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1155','郾城区','1154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1156','源汇区','1154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1157','召陵区','1154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1158','舞阳县','1154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1159','临颍县','1154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1160','濮阳','984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1161','华龙区','1160','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1162','清丰县','1160','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1163','南乐县','1160','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1164','范县','1160','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1165','台前县','1160','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1166','濮阳县','1160','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1167','黑龙江','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1168','哈尔滨','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1169','道里区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1170','南岗区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1171','动力区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1172','平房区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1173','香坊区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1174','太平区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1175','道外区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1176','阿城区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1177','呼兰区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1178','松北区','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1179','尚志市','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1180','双城市','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1181','五常市','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1182','方正县','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1183','宾县','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1184','依兰县','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1185','巴彦县','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1186','通河县','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1187','木兰县','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1188','延寿县','1168','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1189','大庆','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1190','萨尔图区','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1191','红岗区','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1192','龙凤区','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1193','让胡路区','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1194','大同区','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1195','肇州县','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1196','肇源县','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1197','林甸县','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1198','杜尔伯特','1189','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1199','大兴安岭','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1200','呼玛县','1199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1201','漠河县','1199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1202','塔河县','1199','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1203','鹤岗','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1204','兴山区','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1205','工农区','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1206','南山区','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1207','兴安区','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1208','向阳区','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1209','东山区','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1210','萝北县','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1211','绥滨县','1203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1212','黑河','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1213','爱辉区','1212','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1214','五大连池市','1212','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1215','北安市','1212','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1216','嫩江县','1212','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1217','逊克县','1212','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1218','孙吴县','1212','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1219','鸡西','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1220','鸡冠区','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1221','恒山区','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1222','城子河区','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1223','滴道区','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1224','梨树区','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1225','虎林市','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1226','密山市','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1227','鸡东县','1219','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1228','佳木斯','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1229','前进区','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1230','郊区','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1231','向阳区','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1232','东风区','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1233','同江市','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1234','富锦市','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1235','桦南县','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1236','桦川县','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1237','汤原县','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1238','抚远县','1228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1239','牡丹江','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1240','爱民区','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1241','东安区','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1242','阳明区','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1243','西安区','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1244','绥芬河市','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1245','海林市','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1246','宁安市','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1247','穆棱市','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1248','东宁县','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1249','林口县','1239','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1250','七台河','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1251','桃山区','1250','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1252','新兴区','1250','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1253','茄子河区','1250','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1254','勃利县','1250','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1255','齐齐哈尔','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1256','龙沙区','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1257','昂昂溪区','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1258','铁峰区','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1259','建华区','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1260','富拉尔基区','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1261','碾子山区','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1262','梅里斯达斡尔区','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1263','讷河市','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1264','龙江县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1265','依安县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1266','泰来县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1267','甘南县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1268','富裕县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1269','克山县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1270','克东县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1271','拜泉县','1255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1272','双鸭山','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1273','尖山区','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1274','岭东区','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1275','四方台区','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1276','宝山区','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1277','集贤县','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1278','友谊县','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1279','宝清县','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1280','饶河县','1272','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1281','绥化','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1282','北林区','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1283','安达市','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1284','肇东市','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1285','海伦市','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1286','望奎县','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1287','兰西县','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1288','青冈县','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1289','庆安县','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1290','明水县','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1291','绥棱县','1281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1292','伊春','1167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1293','伊春区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1294','带岭区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1295','南岔区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1296','金山屯区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1297','西林区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1298','美溪区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1299','乌马河区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1300','翠峦区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1301','友好区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1302','上甘岭区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1303','五营区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1304','红星区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1305','新青区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1306','汤旺河区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1307','乌伊岭区','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1308','铁力市','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1309','嘉荫县','1292','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1310','湖北','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1311','武汉','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1312','江岸区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1313','武昌区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1314','江汉区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1315','硚口区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1316','汉阳区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1317','青山区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1318','洪山区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1319','东西湖区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1320','汉南区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1321','蔡甸区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1322','江夏区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1323','黄陂区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1324','新洲区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1325','经济开发区','1311','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1326','仙桃','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1327','仙桃市','1326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1328','鄂州','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1329','鄂城区','1328','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1330','华容区','1328','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1331','梁子湖区','1328','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1332','黄冈','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1333','黄州区','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1334','麻城市','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1335','武穴市','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1336','团风县','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1337','红安县','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1338','罗田县','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1339','英山县','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1340','浠水县','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1341','蕲春县','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1342','黄梅县','1332','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1343','黄石','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1344','黄石港区','1343','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1345','西塞山区','1343','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1346','下陆区','1343','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1347','铁山区','1343','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1348','大冶市','1343','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1349','阳新县','1343','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1350','荆门','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1351','东宝区','1350','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1352','掇刀区','1350','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1353','钟祥市','1350','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1354','京山县','1350','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1355','沙洋县','1350','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1356','荆州','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1357','沙市区','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1358','荆州区','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1359','石首市','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1360','洪湖市','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1361','松滋市','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1362','公安县','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1363','监利县','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1364','江陵县','1356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1365','潜江','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1366','潜江市','1365','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1367','神农架林区','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1368','神农架林区','1367','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1369','十堰','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1370','张湾区','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1371','茅箭区','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1372','丹江口市','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1373','郧县','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1374','郧西县','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1375','竹山县','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1376','竹溪县','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1377','房县','1369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1378','随州','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1379','曾都区','1378','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1380','广水市','1378','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1381','天门','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1382','天门市','1381','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1383','咸宁','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1384','咸安区','1383','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1385','赤壁市','1383','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1386','嘉鱼县','1383','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1387','通城县','1383','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1388','崇阳县','1383','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1389','通山县','1383','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1390','襄樊','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1391','襄城区','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1392','樊城区','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1393','襄阳区','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1394','老河口市','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1395','枣阳市','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1396','宜城市','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1397','南漳县','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1398','谷城县','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1399','保康县','1390','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1400','孝感','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1401','孝南区','1400','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1402','应城市','1400','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1403','安陆市','1400','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1404','汉川市','1400','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1405','孝昌县','1400','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1406','大悟县','1400','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1407','云梦县','1400','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1408','宜昌','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1409','长阳','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1410','五峰','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1411','西陵区','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1412','伍家岗区','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1413','点军区','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1414','猇亭区','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1415','夷陵区','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1416','宜都市','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1417','当阳市','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1418','枝江市','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1419','远安县','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1420','兴山县','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1421','秭归县','1408','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1422','恩施','1310','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1423','恩施市','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1424','利川市','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1425','建始县','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1426','巴东县','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1427','宣恩县','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1428','咸丰县','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1429','来凤县','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1430','鹤峰县','1422','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1431','湖南','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1432','长沙','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1433','岳麓区','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1434','芙蓉区','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1435','天心区','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1436','开福区','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1437','雨花区','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1438','开发区','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1439','浏阳市','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1440','长沙县','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1441','望城县','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1442','宁乡县','1432','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1443','张家界','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1444','永定区','1443','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1445','武陵源区','1443','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1446','慈利县','1443','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1447','桑植县','1443','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1448','常德','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1449','武陵区','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1450','鼎城区','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1451','津市市','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1452','安乡县','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1453','汉寿县','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1454','澧县','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1455','临澧县','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1456','桃源县','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1457','石门县','1448','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1458','郴州','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1459','北湖区','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1460','苏仙区','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1461','资兴市','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1462','桂阳县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1463','宜章县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1464','永兴县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1465','嘉禾县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1466','临武县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1467','汝城县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1468','桂东县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1469','安仁县','1458','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1470','衡阳','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1471','雁峰区','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1472','珠晖区','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1473','石鼓区','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1474','蒸湘区','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1475','南岳区','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1476','耒阳市','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1477','常宁市','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1478','衡阳县','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1479','衡南县','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1480','衡山县','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1481','衡东县','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1482','祁东县','1470','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1483','怀化','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1484','鹤城区','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1485','靖州','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1486','麻阳','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1487','通道','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1488','新晃','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1489','芷江','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1490','沅陵县','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1491','辰溪县','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1492','溆浦县','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1493','中方县','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1494','会同县','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1495','洪江市','1483','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1496','娄底','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1497','娄星区','1496','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1498','冷水江市','1496','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1499','涟源市','1496','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1500','双峰县','1496','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1501','新化县','1496','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1502','邵阳','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1503','城步','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1504','双清区','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1505','大祥区','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1506','北塔区','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1507','武冈市','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1508','邵东县','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1509','新邵县','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1510','邵阳县','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1511','隆回县','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1512','洞口县','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1513','绥宁县','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1514','新宁县','1502','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1515','湘潭','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1516','岳塘区','1515','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1517','雨湖区','1515','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1518','湘乡市','1515','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1519','韶山市','1515','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1520','湘潭县','1515','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1521','湘西','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1522','吉首市','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1523','泸溪县','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1524','凤凰县','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1525','花垣县','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1526','保靖县','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1527','古丈县','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1528','永顺县','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1529','龙山县','1521','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1530','益阳','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1531','赫山区','1530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1532','资阳区','1530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1533','沅江市','1530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1534','南县','1530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1535','桃江县','1530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1536','安化县','1530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1537','永州','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1538','江华','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1539','冷水滩区','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1540','零陵区','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1541','祁阳县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1542','东安县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1543','双牌县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1544','道县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1545','江永县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1546','宁远县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1547','蓝山县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1548','新田县','1537','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1549','岳阳','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1550','岳阳楼区','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1551','君山区','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1552','云溪区','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1553','汨罗市','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1554','临湘市','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1555','岳阳县','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1556','华容县','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1557','湘阴县','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1558','平江县','1549','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1559','株洲','1431','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1560','天元区','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1561','荷塘区','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1562','芦淞区','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1563','石峰区','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1564','醴陵市','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1565','株洲县','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1566','攸县','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1567','茶陵县','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1568','炎陵县','1559','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1569','吉林','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1570','长春','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1571','朝阳区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1572','宽城区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1573','二道区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1574','南关区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1575','绿园区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1576','双阳区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1577','净月潭开发区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1578','高新技术开发区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1579','经济技术开发区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1580','汽车产业开发区','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1581','德惠市','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1582','九台市','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1583','榆树市','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1584','农安县','1570','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1585','吉林','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1586','船营区','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1587','昌邑区','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1588','龙潭区','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1589','丰满区','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1590','蛟河市','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1591','桦甸市','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1592','舒兰市','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1593','磐石市','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1594','永吉县','1585','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1595','白城','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1596','洮北区','1595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1597','洮南市','1595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1598','大安市','1595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1599','镇赉县','1595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1600','通榆县','1595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1601','白山','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1602','江源区','1601','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1603','八道江区','1601','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1604','长白','1601','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1605','临江市','1601','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1606','抚松县','1601','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1607','靖宇县','1601','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1608','辽源','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1609','龙山区','1608','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1610','西安区','1608','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1611','东丰县','1608','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1612','东辽县','1608','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1613','四平','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1614','铁西区','1613','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1615','铁东区','1613','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1616','伊通','1613','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1617','公主岭市','1613','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1618','双辽市','1613','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1619','梨树县','1613','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1620','松原','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1621','前郭尔罗斯','1620','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1622','宁江区','1620','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1623','长岭县','1620','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1624','乾安县','1620','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1625','扶余县','1620','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1626','通化','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1627','东昌区','1626','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1628','二道江区','1626','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1629','梅河口市','1626','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1630','集安市','1626','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1631','通化县','1626','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1632','辉南县','1626','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1633','柳河县','1626','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1634','延边','1569','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1635','延吉市','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1636','图们市','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1637','敦化市','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1638','珲春市','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1639','龙井市','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1640','和龙市','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1641','安图县','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1642','汪清县','1634','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1643','江苏','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1644','南京','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1645','玄武区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1646','鼓楼区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1647','白下区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1648','建邺区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1649','秦淮区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1650','雨花台区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1651','下关区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1652','栖霞区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1653','浦口区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1654','江宁区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1655','六合区','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1656','溧水县','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1657','高淳县','1644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1658','苏州','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1659','沧浪区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1660','金阊区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1661','平江区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1662','虎丘区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1663','吴中区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1664','相城区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1665','园区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1666','新区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1667','常熟市','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1668','张家港市','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1669','玉山镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1670','巴城镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1671','周市镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1672','陆家镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1673','花桥镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1674','淀山湖镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1675','张浦镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1676','周庄镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1677','千灯镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1678','锦溪镇','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1679','开发区','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1680','吴江市','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1681','太仓市','1658','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1682','无锡','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1683','崇安区','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1684','北塘区','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1685','南长区','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1686','锡山区','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1687','惠山区','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1688','滨湖区','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1689','新区','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1690','江阴市','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1691','宜兴市','1682','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1692','常州','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1693','天宁区','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1694','钟楼区','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1695','戚墅堰区','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1696','郊区','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1697','新北区','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1698','武进区','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1699','溧阳市','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1700','金坛市','1692','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1701','淮安','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1702','清河区','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1703','清浦区','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1704','楚州区','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1705','淮阴区','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1706','涟水县','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1707','洪泽县','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1708','盱眙县','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1709','金湖县','1701','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1710','连云港','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1711','新浦区','1710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1712','连云区','1710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1713','海州区','1710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1714','赣榆县','1710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1715','东海县','1710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1716','灌云县','1710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1717','灌南县','1710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1718','南通','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1719','崇川区','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1720','港闸区','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1721','经济开发区','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1722','启东市','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1723','如皋市','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1724','通州市','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1725','海门市','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1726','海安县','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1727','如东县','1718','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1728','宿迁','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1729','宿城区','1728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1730','宿豫区','1728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1731','宿豫县','1728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1732','沭阳县','1728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1733','泗阳县','1728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1734','泗洪县','1728','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1735','泰州','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1736','海陵区','1735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1737','高港区','1735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1738','兴化市','1735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1739','靖江市','1735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1740','泰兴市','1735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1741','姜堰市','1735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1742','徐州','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1743','云龙区','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1744','鼓楼区','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1745','九里区','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1746','贾汪区','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1747','泉山区','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1748','新沂市','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1749','邳州市','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1750','丰县','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1751','沛县','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1752','铜山县','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1753','睢宁县','1742','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1754','盐城','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1755','城区','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1756','亭湖区','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1757','盐都区','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1758','盐都县','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1759','东台市','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1760','大丰市','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1761','响水县','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1762','滨海县','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1763','阜宁县','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1764','射阳县','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1765','建湖县','1754','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1766','扬州','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1767','广陵区','1766','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1768','维扬区','1766','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1769','邗江区','1766','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1770','仪征市','1766','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1771','高邮市','1766','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1772','江都市','1766','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1773','宝应县','1766','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1774','镇江','1643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1775','京口区','1774','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1776','润州区','1774','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1777','丹徒区','1774','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1778','丹阳市','1774','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1779','扬中市','1774','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1780','句容市','1774','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1781','江西','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1782','南昌','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1783','东湖区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1784','西湖区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1785','青云谱区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1786','湾里区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1787','青山湖区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1788','红谷滩新区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1789','昌北区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1790','高新区','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1791','南昌县','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1792','新建县','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1793','安义县','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1794','进贤县','1782','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1795','抚州','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1796','临川区','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1797','南城县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1798','黎川县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1799','南丰县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1800','崇仁县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1801','乐安县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1802','宜黄县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1803','金溪县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1804','资溪县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1805','东乡县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1806','广昌县','1795','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1807','赣州','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1808','章贡区','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1809','于都县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1810','瑞金市','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1811','南康市','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1812','赣县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1813','信丰县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1814','大余县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1815','上犹县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1816','崇义县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1817','安远县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1818','龙南县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1819','定南县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1820','全南县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1821','宁都县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1822','兴国县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1823','会昌县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1824','寻乌县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1825','石城县','1807','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1826','吉安','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1827','安福县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1828','吉州区','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1829','青原区','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1830','井冈山市','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1831','吉安县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1832','吉水县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1833','峡江县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1834','新干县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1835','永丰县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1836','泰和县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1837','遂川县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1838','万安县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1839','永新县','1826','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1840','景德镇','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1841','珠山区','1840','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1842','昌江区','1840','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1843','乐平市','1840','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1844','浮梁县','1840','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1845','九江','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1846','浔阳区','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1847','庐山区','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1848','瑞昌市','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1849','九江县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1850','武宁县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1851','修水县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1852','永修县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1853','德安县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1854','星子县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1855','都昌县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1856','湖口县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1857','彭泽县','1845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1858','萍乡','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1859','安源区','1858','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1860','湘东区','1858','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1861','莲花县','1858','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1862','芦溪县','1858','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1863','上栗县','1858','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1864','上饶','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1865','信州区','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1866','德兴市','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1867','上饶县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1868','广丰县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1869','玉山县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1870','铅山县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1871','横峰县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1872','弋阳县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1873','余干县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1874','波阳县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1875','万年县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1876','婺源县','1864','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1877','新余','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1878','渝水区','1877','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1879','分宜县','1877','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1880','宜春','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1881','袁州区','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1882','丰城市','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1883','樟树市','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1884','高安市','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1885','奉新县','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1886','万载县','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1887','上高县','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1888','宜丰县','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1889','靖安县','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1890','铜鼓县','1880','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1891','鹰潭','1781','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1892','月湖区','1891','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1893','贵溪市','1891','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1894','余江县','1891','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1895','辽宁','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1896','沈阳','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1897','沈河区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1898','皇姑区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1899','和平区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1900','大东区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1901','铁西区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1902','苏家屯区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1903','东陵区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1904','沈北新区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1905','于洪区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1906','浑南新区','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1907','新民市','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1908','辽中县','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1909','康平县','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1910','法库县','1896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1911','大连','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1912','西岗区','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1913','中山区','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1914','沙河口区','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1915','甘井子区','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1916','旅顺口区','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1917','金州区','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1918','开发区','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1919','瓦房店市','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1920','普兰店市','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1921','庄河市','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1922','长海县','1911','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1923','鞍山','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1924','铁东区','1923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1925','铁西区','1923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1926','立山区','1923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1927','千山区','1923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1928','岫岩','1923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1929','海城市','1923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1930','台安县','1923','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1931','本溪','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1932','本溪','1931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1933','平山区','1931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1934','明山区','1931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1935','溪湖区','1931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1936','南芬区','1931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1937','桓仁','1931','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1938','朝阳','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1939','双塔区','1938','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1940','龙城区','1938','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1941','喀喇沁左翼蒙古族自治县','1938','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1942','北票市','1938','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1943','凌源市','1938','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1944','朝阳县','1938','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1945','建平县','1938','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1946','丹东','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1947','振兴区','1946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1948','元宝区','1946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1949','振安区','1946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1950','宽甸','1946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1951','东港市','1946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1952','凤城市','1946','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1953','抚顺','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1954','顺城区','1953','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1955','新抚区','1953','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1956','东洲区','1953','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1957','望花区','1953','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1958','清原','1953','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1959','新宾','1953','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1960','抚顺县','1953','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1961','阜新','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1962','阜新','1961','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1963','海州区','1961','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1964','新邱区','1961','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1965','太平区','1961','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1966','清河门区','1961','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1967','细河区','1961','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1968','彰武县','1961','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1969','葫芦岛','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1970','龙港区','1969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1971','南票区','1969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1972','连山区','1969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1973','兴城市','1969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1974','绥中县','1969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1975','建昌县','1969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1976','锦州','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1977','太和区','1976','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1978','古塔区','1976','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1979','凌河区','1976','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1980','凌海市','1976','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1981','北镇市','1976','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1982','黑山县','1976','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1983','义县','1976','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1984','辽阳','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1985','白塔区','1984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1986','文圣区','1984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1987','宏伟区','1984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1988','太子河区','1984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1989','弓长岭区','1984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1990','灯塔市','1984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1991','辽阳县','1984','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1992','盘锦','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1993','双台子区','1992','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1994','兴隆台区','1992','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1995','大洼县','1992','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1996','盘山县','1992','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1997','铁岭','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1998','银州区','1997','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1999','清河区','1997','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2000','调兵山市','1997','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2001','开原市','1997','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2002','铁岭县','1997','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2003','西丰县','1997','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2004','昌图县','1997','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2005','营口','1895','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2006','站前区','2005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2007','西市区','2005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2008','鲅鱼圈区','2005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2009','老边区','2005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2010','盖州市','2005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2011','大石桥市','2005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2012','内蒙古','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2013','呼和浩特','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2014','回民区','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2015','玉泉区','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2016','新城区','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2017','赛罕区','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2018','清水河县','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2019','土默特左旗','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2020','托克托县','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2021','和林格尔县','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2022','武川县','2013','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2023','阿拉善盟','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2024','阿拉善左旗','2023','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2025','阿拉善右旗','2023','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2026','额济纳旗','2023','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2027','巴彦淖尔盟','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2028','临河区','2027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2029','五原县','2027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2030','磴口县','2027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2031','乌拉特前旗','2027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2032','乌拉特中旗','2027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2033','乌拉特后旗','2027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2034','杭锦后旗','2027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2035','包头','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2036','昆都仑区','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2037','青山区','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2038','东河区','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2039','九原区','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2040','石拐区','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2041','白云矿区','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2042','土默特右旗','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2043','固阳县','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2044','达尔罕茂明安联合旗','2035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2045','赤峰','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2046','红山区','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2047','元宝山区','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2048','松山区','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2049','阿鲁科尔沁旗','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2050','巴林左旗','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2051','巴林右旗','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2052','林西县','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2053','克什克腾旗','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2054','翁牛特旗','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2055','喀喇沁旗','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2056','宁城县','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2057','敖汉旗','2045','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2058','鄂尔多斯','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2059','东胜区','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2060','达拉特旗','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2061','准格尔旗','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2062','鄂托克前旗','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2063','鄂托克旗','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2064','杭锦旗','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2065','乌审旗','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2066','伊金霍洛旗','2058','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2067','呼伦贝尔','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2068','海拉尔区','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2069','莫力达瓦','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2070','满洲里市','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2071','牙克石市','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2072','扎兰屯市','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2073','额尔古纳市','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2074','根河市','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2075','阿荣旗','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2076','鄂伦春自治旗','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2077','鄂温克族自治旗','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2078','陈巴尔虎旗','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2079','新巴尔虎左旗','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2080','新巴尔虎右旗','2067','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2081','通辽','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2082','科尔沁区','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2083','霍林郭勒市','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2084','科尔沁左翼中旗','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2085','科尔沁左翼后旗','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2086','开鲁县','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2087','库伦旗','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2088','奈曼旗','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2089','扎鲁特旗','2081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2090','乌海','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2091','海勃湾区','2090','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2092','乌达区','2090','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2093','海南区','2090','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2094','乌兰察布市','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2095','化德县','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2096','集宁区','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2097','丰镇市','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2098','卓资县','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2099','商都县','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2100','兴和县','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2101','凉城县','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2102','察哈尔右翼前旗','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2103','察哈尔右翼中旗','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2104','察哈尔右翼后旗','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2105','四子王旗','2094','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2106','锡林郭勒盟','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2107','二连浩特市','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2108','锡林浩特市','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2109','阿巴嘎旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2110','苏尼特左旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2111','苏尼特右旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2112','东乌珠穆沁旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2113','西乌珠穆沁旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2114','太仆寺旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2115','镶黄旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2116','正镶白旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2117','正蓝旗','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2118','多伦县','2106','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2119','兴安盟','2012','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2120','乌兰浩特市','2119','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2121','阿尔山市','2119','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2122','科尔沁右翼前旗','2119','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2123','科尔沁右翼中旗','2119','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2124','扎赉特旗','2119','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2125','突泉县','2119','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2126','宁夏','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2127','银川','2126','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2128','西夏区','2127','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2129','金凤区','2127','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2130','兴庆区','2127','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2131','灵武市','2127','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2132','永宁县','2127','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2133','贺兰县','2127','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2134','固原','2126','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2135','原州区','2134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2136','海原县','2134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2137','西吉县','2134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2138','隆德县','2134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2139','泾源县','2134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2140','彭阳县','2134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2141','石嘴山','2126','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2142','惠农县','2141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2143','大武口区','2141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2144','惠农区','2141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2145','陶乐县','2141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2146','平罗县','2141','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2147','吴忠','2126','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2148','利通区','2147','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2149','中卫县','2147','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2150','青铜峡市','2147','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2151','中宁县','2147','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2152','盐池县','2147','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2153','同心县','2147','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2154','中卫','2126','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2155','沙坡头区','2154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2156','海原县','2154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2157','中宁县','2154','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2158','青海','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2159','西宁','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2160','城中区','2159','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2161','城东区','2159','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2162','城西区','2159','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2163','城北区','2159','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2164','湟中县','2159','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2165','湟源县','2159','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2166','大通','2159','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2167','果洛','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2168','玛沁县','2167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2169','班玛县','2167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2170','甘德县','2167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2171','达日县','2167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2172','久治县','2167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2173','玛多县','2167','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2174','海北','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2175','海晏县','2174','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2176','祁连县','2174','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2177','刚察县','2174','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2178','门源','2174','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2179','海东','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2180','平安县','2179','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2181','乐都县','2179','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2182','民和','2179','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2183','互助','2179','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2184','化隆','2179','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2185','循化','2179','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2186','海南','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2187','共和县','2186','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2188','同德县','2186','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2189','贵德县','2186','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2190','兴海县','2186','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2191','贵南县','2186','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2192','海西','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2193','德令哈市','2192','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2194','格尔木市','2192','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2195','乌兰县','2192','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2196','都兰县','2192','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2197','天峻县','2192','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2198','黄南','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2199','同仁县','2198','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2200','尖扎县','2198','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2201','泽库县','2198','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2202','河南蒙古族自治县','2198','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2203','玉树','2158','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2204','玉树县','2203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2205','杂多县','2203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2206','称多县','2203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2207','治多县','2203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2208','囊谦县','2203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2209','曲麻莱县','2203','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2210','山东','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2211','济南','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2212','市中区','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2213','历下区','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2214','天桥区','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2215','槐荫区','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2216','历城区','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2217','长清区','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2218','章丘市','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2219','平阴县','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2220','济阳县','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2221','商河县','2211','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2222','青岛','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2223','市南区','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2224','市北区','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2225','城阳区','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2226','四方区','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2227','李沧区','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2228','黄岛区','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2229','崂山区','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2230','胶州市','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2231','即墨市','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2232','平度市','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2233','胶南市','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2234','莱西市','2222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2235','滨州','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2236','滨城区','2235','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2237','惠民县','2235','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2238','阳信县','2235','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2239','无棣县','2235','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2240','沾化县','2235','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2241','博兴县','2235','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2242','邹平县','2235','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2243','德州','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2244','德城区','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2245','陵县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2246','乐陵市','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2247','禹城市','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2248','宁津县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2249','庆云县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2250','临邑县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2251','齐河县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2252','平原县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2253','夏津县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2254','武城县','2243','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2255','东营','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2256','东营区','2255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2257','河口区','2255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2258','垦利县','2255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2259','利津县','2255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2260','广饶县','2255','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2261','菏泽','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2262','牡丹区','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2263','曹县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2264','单县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2265','成武县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2266','巨野县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2267','郓城县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2268','鄄城县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2269','定陶县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2270','东明县','2261','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2271','济宁','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2272','市中区','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2273','任城区','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2274','曲阜市','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2275','兖州市','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2276','邹城市','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2277','微山县','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2278','鱼台县','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2279','金乡县','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2280','嘉祥县','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2281','汶上县','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2282','泗水县','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2283','梁山县','2271','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2284','莱芜','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2285','莱城区','2284','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2286','钢城区','2284','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2287','聊城','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2288','东昌府区','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2289','临清市','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2290','阳谷县','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2291','莘县','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2292','茌平县','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2293','东阿县','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2294','冠县','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2295','高唐县','2287','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2296','临沂','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2297','兰山区','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2298','罗庄区','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2299','河东区','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2300','沂南县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2301','郯城县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2302','沂水县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2303','苍山县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2304','费县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2305','平邑县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2306','莒南县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2307','蒙阴县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2308','临沭县','2296','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2309','日照','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2310','东港区','2309','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2311','岚山区','2309','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2312','五莲县','2309','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2313','莒县','2309','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2314','泰安','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2315','泰山区','2314','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2316','岱岳区','2314','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2317','新泰市','2314','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2318','肥城市','2314','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2319','宁阳县','2314','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2320','东平县','2314','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2321','威海','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2322','荣成市','2321','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2323','乳山市','2321','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2324','环翠区','2321','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2325','文登市','2321','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2326','潍坊','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2327','潍城区','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2328','寒亭区','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2329','坊子区','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2330','奎文区','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2331','青州市','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2332','诸城市','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2333','寿光市','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2334','安丘市','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2335','高密市','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2336','昌邑市','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2337','临朐县','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2338','昌乐县','2326','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2339','烟台','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2340','芝罘区','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2341','福山区','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2342','牟平区','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2343','莱山区','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2344','开发区','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2345','龙口市','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2346','莱阳市','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2347','莱州市','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2348','蓬莱市','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2349','招远市','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2350','栖霞市','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2351','海阳市','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2352','长岛县','2339','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2353','枣庄','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2354','市中区','2353','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2355','山亭区','2353','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2356','峄城区','2353','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2357','台儿庄区','2353','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2358','薛城区','2353','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2359','滕州市','2353','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2360','淄博','2210','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2361','张店区','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2362','临淄区','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2363','淄川区','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2364','博山区','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2365','周村区','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2366','桓台县','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2367','高青县','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2368','沂源县','2360','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2369','山西','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2370','太原','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2371','杏花岭区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2372','小店区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2373','迎泽区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2374','尖草坪区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2375','万柏林区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2376','晋源区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2377','高新开发区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2378','民营经济开发区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2379','经济技术开发区','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2380','清徐县','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2381','阳曲县','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2382','娄烦县','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2383','古交市','2370','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2384','长治','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2385','城区','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2386','郊区','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2387','沁县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2388','潞城市','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2389','长治县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2390','襄垣县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2391','屯留县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2392','平顺县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2393','黎城县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2394','壶关县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2395','长子县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2396','武乡县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2397','沁源县','2384','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2398','大同','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2399','城区','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2400','矿区','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2401','南郊区','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2402','新荣区','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2403','阳高县','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2404','天镇县','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2405','广灵县','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2406','灵丘县','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2407','浑源县','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2408','左云县','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2409','大同县','2398','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2410','晋城','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2411','城区','2410','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2412','高平市','2410','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2413','沁水县','2410','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2414','阳城县','2410','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2415','陵川县','2410','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2416','泽州县','2410','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2417','晋中','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2418','榆次区','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2419','介休市','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2420','榆社县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2421','左权县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2422','和顺县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2423','昔阳县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2424','寿阳县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2425','太谷县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2426','祁县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2427','平遥县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2428','灵石县','2417','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2429','临汾','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2430','尧都区','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2431','侯马市','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2432','霍州市','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2433','曲沃县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2434','翼城县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2435','襄汾县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2436','洪洞县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2437','吉县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2438','安泽县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2439','浮山县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2440','古县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2441','乡宁县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2442','大宁县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2443','隰县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2444','永和县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2445','蒲县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2446','汾西县','2429','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2447','吕梁','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2448','离石市','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2449','离石区','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2450','孝义市','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2451','汾阳市','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2452','文水县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2453','交城县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2454','兴县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2455','临县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2456','柳林县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2457','石楼县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2458','岚县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2459','方山县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2460','中阳县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2461','交口县','2447','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2462','朔州','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2463','朔城区','2462','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2464','平鲁区','2462','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2465','山阴县','2462','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2466','应县','2462','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2467','右玉县','2462','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2468','怀仁县','2462','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2469','忻州','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2470','忻府区','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2471','原平市','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2472','定襄县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2473','五台县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2474','代县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2475','繁峙县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2476','宁武县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2477','静乐县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2478','神池县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2479','五寨县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2480','岢岚县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2481','河曲县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2482','保德县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2483','偏关县','2469','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2484','阳泉','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2485','城区','2484','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2486','矿区','2484','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2487','郊区','2484','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2488','平定县','2484','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2489','盂县','2484','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2490','运城','2369','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2491','盐湖区','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2492','永济市','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2493','河津市','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2494','临猗县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2495','万荣县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2496','闻喜县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2497','稷山县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2498','新绛县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2499','绛县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2500','垣曲县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2501','夏县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2502','平陆县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2503','芮城县','2490','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2504','陕西','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2505','西安','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2506','莲湖区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2507','新城区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2508','碑林区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2509','雁塔区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2510','灞桥区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2511','未央区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2512','阎良区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2513','临潼区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2514','长安区','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2515','蓝田县','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2516','周至县','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2517','户县','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2518','高陵县','2505','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2519','安康','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2520','汉滨区','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2521','汉阴县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2522','石泉县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2523','宁陕县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2524','紫阳县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2525','岚皋县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2526','平利县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2527','镇坪县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2528','旬阳县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2529','白河县','2519','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2530','宝鸡','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2531','陈仓区','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2532','渭滨区','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2533','金台区','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2534','凤翔县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2535','岐山县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2536','扶风县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2537','眉县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2538','陇县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2539','千阳县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2540','麟游县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2541','凤县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2542','太白县','2530','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2543','汉中','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2544','汉台区','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2545','南郑县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2546','城固县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2547','洋县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2548','西乡县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2549','勉县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2550','宁强县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2551','略阳县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2552','镇巴县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2553','留坝县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2554','佛坪县','2543','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2555','商洛','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2556','商州区','2555','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2557','洛南县','2555','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2558','丹凤县','2555','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2559','商南县','2555','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2560','山阳县','2555','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2561','镇安县','2555','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2562','柞水县','2555','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2563','铜川','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2564','耀州区','2563','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2565','王益区','2563','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2566','印台区','2563','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2567','宜君县','2563','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2568','渭南','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2569','临渭区','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2570','韩城市','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2571','华阴市','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2572','华县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2573','潼关县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2574','大荔县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2575','合阳县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2576','澄城县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2577','蒲城县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2578','白水县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2579','富平县','2568','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2580','咸阳','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2581','秦都区','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2582','渭城区','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2583','杨陵区','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2584','兴平市','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2585','三原县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2586','泾阳县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2587','乾县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2588','礼泉县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2589','永寿县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2590','彬县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2591','长武县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2592','旬邑县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2593','淳化县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2594','武功县','2580','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2595','延安','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2596','吴起县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2597','宝塔区','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2598','延长县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2599','延川县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2600','子长县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2601','安塞县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2602','志丹县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2603','甘泉县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2604','富县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2605','洛川县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2606','宜川县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2607','黄龙县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2608','黄陵县','2595','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2609','榆林','2504','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2610','榆阳区','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2611','神木县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2612','府谷县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2613','横山县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2614','靖边县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2615','定边县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2616','绥德县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2617','米脂县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2618','佳县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2619','吴堡县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2620','清涧县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2621','子洲县','2609','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2622','上海','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2623','上海','2622','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2624','长宁区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2625','闸北区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2626','闵行区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2627','徐汇区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2628','浦东新区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2629','杨浦区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2630','普陀区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2631','静安区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2632','卢湾区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2633','虹口区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2634','黄浦区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2635','南汇区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2636','松江区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2637','嘉定区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2638','宝山区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2639','青浦区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2640','金山区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2641','奉贤区','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2642','崇明县','2623','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2643','四川','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2644','成都','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2645','青羊区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2646','锦江区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2647','金牛区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2648','武侯区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2649','成华区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2650','龙泉驿区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2651','青白江区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2652','新都区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2653','温江区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2654','高新区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2655','高新西区','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2656','都江堰市','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2657','彭州市','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2658','邛崃市','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2659','崇州市','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2660','金堂县','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2661','双流县','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2662','郫县','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2663','大邑县','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2664','蒲江县','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2665','新津县','2644','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2666','绵阳','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2667','涪城区','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2668','游仙区','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2669','江油市','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2670','盐亭县','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2671','三台县','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2672','平武县','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2673','安县','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2674','梓潼县','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2675','北川县','2666','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2676','阿坝','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2677','马尔康县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2678','汶川县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2679','理县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2680','茂县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2681','松潘县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2682','九寨沟县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2683','金川县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2684','小金县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2685','黑水县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2686','壤塘县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2687','阿坝县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2688','若尔盖县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2689','红原县','2676','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2690','巴中','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2691','巴州区','2690','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2692','通江县','2690','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2693','南江县','2690','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2694','平昌县','2690','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2695','达州','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2696','通川区','2695','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2697','万源市','2695','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2698','达县','2695','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2699','宣汉县','2695','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2700','开江县','2695','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2701','大竹县','2695','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2702','渠县','2695','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2703','德阳','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2704','旌阳区','2703','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2705','广汉市','2703','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2706','什邡市','2703','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2707','绵竹市','2703','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2708','罗江县','2703','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2709','中江县','2703','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2710','甘孜','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2711','康定县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2712','丹巴县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2713','泸定县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2714','炉霍县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2715','九龙县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2716','甘孜县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2717','雅江县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2718','新龙县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2719','道孚县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2720','白玉县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2721','理塘县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2722','德格县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2723','乡城县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2724','石渠县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2725','稻城县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2726','色达县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2727','巴塘县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2728','得荣县','2710','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2729','广安','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2730','广安区','2729','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2731','华蓥市','2729','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2732','岳池县','2729','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2733','武胜县','2729','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2734','邻水县','2729','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2735','广元','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2736','利州区','2735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2737','元坝区','2735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2738','朝天区','2735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2739','旺苍县','2735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2740','青川县','2735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2741','剑阁县','2735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2742','苍溪县','2735','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2743','乐山','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2744','峨眉山市','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2745','乐山市','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2746','犍为县','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2747','井研县','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2748','夹江县','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2749','沐川县','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2750','峨边','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2751','马边','2743','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2752','凉山','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2753','西昌市','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2754','盐源县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2755','德昌县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2756','会理县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2757','会东县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2758','宁南县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2759','普格县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2760','布拖县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2761','金阳县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2762','昭觉县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2763','喜德县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2764','冕宁县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2765','越西县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2766','甘洛县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2767','美姑县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2768','雷波县','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2769','木里','2752','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2770','眉山','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2771','东坡区','2770','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2772','仁寿县','2770','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2773','彭山县','2770','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2774','洪雅县','2770','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2775','丹棱县','2770','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2776','青神县','2770','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2777','南充','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2778','阆中市','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2779','南部县','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2780','营山县','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2781','蓬安县','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2782','仪陇县','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2783','顺庆区','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2784','高坪区','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2785','嘉陵区','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2786','西充县','2777','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2787','内江','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2788','市中区','2787','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2789','东兴区','2787','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2790','威远县','2787','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2791','资中县','2787','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2792','隆昌县','2787','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2793','攀枝花','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2794','东 区','2793','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2795','西 区','2793','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2796','仁和区','2793','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2797','米易县','2793','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2798','盐边县','2793','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2799','遂宁','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2800','船山区','2799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2801','安居区','2799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2802','蓬溪县','2799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2803','射洪县','2799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2804','大英县','2799','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2805','雅安','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2806','雨城区','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2807','名山县','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2808','荥经县','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2809','汉源县','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2810','石棉县','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2811','天全县','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2812','芦山县','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2813','宝兴县','2805','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2814','宜宾','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2815','翠屏区','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2816','宜宾县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2817','南溪县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2818','江安县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2819','长宁县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2820','高县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2821','珙县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2822','筠连县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2823','兴文县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2824','屏山县','2814','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2825','资阳','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2826','雁江区','2825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2827','简阳市','2825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2828','安岳县','2825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2829','乐至县','2825','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2830','自贡','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2831','大安区','2830','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2832','自流井区','2830','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2833','贡井区','2830','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2834','沿滩区','2830','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2835','荣县','2830','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2836','富顺县','2830','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2837','泸州','2643','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2838','江阳区','2837','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2839','纳溪区','2837','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2840','龙马潭区','2837','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2841','泸县','2837','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2842','合江县','2837','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2843','叙永县','2837','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2844','古蔺县','2837','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2845','天津','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2846','天津','2845','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2847','和平区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2848','河西区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2849','南开区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2850','河北区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2851','河东区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2852','红桥区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2853','东丽区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2854','津南区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2855','西青区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2856','北辰区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2857','塘沽区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2858','汉沽区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2859','大港区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2860','武清区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2861','宝坻区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2862','经济开发区','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2863','宁河县','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2864','静海县','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2865','蓟县','2846','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2866','西藏','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2867','拉萨','2866','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2868','城关区','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2869','林周县','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2870','当雄县','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2871','尼木县','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2872','曲水县','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2873','堆龙德庆县','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2874','达孜县','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2875','墨竹工卡县','2867','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2876','阿里','2866','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2877','噶尔县','2876','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2878','普兰县','2876','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2879','札达县','2876','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2880','日土县','2876','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2881','革吉县','2876','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2882','改则县','2876','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2883','措勤县','2876','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2884','昌都','2866','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2885','昌都县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2886','江达县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2887','贡觉县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2888','类乌齐县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2889','丁青县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2890','察雅县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2891','八宿县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2892','左贡县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2893','芒康县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2894','洛隆县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2895','边坝县','2884','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2896','林芝','2866','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2897','林芝县','2896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2898','工布江达县','2896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2899','米林县','2896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2900','墨脱县','2896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2901','波密县','2896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2902','察隅县','2896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2903','朗县','2896','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2904','那曲','2866','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2905','那曲县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2906','嘉黎县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2907','比如县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2908','聂荣县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2909','安多县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2910','申扎县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2911','索县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2912','班戈县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2913','巴青县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2914','尼玛县','2904','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2915','日喀则','2866','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2916','日喀则市','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2917','南木林县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2918','江孜县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2919','定日县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2920','萨迦县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2921','拉孜县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2922','昂仁县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2923','谢通门县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2924','白朗县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2925','仁布县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2926','康马县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2927','定结县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2928','仲巴县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2929','亚东县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2930','吉隆县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2931','聂拉木县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2932','萨嘎县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2933','岗巴县','2915','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2934','山南','2866','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2935','乃东县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2936','扎囊县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2937','贡嘎县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2938','桑日县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2939','琼结县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2940','曲松县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2941','措美县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2942','洛扎县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2943','加查县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2944','隆子县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2945','错那县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2946','浪卡子县','2934','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2947','新疆','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2948','乌鲁木齐','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2949','天山区','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2950','沙依巴克区','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2951','新市区','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2952','水磨沟区','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2953','头屯河区','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2954','达坂城区','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2955','米东区','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2956','乌鲁木齐县','2948','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2957','阿克苏','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2958','阿克苏市','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2959','温宿县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2960','库车县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2961','沙雅县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2962','新和县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2963','拜城县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2964','乌什县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2965','阿瓦提县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2966','柯坪县','2957','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2967','阿拉尔','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2968','阿拉尔市','2967','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2969','巴音郭楞','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2970','库尔勒市','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2971','轮台县','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2972','尉犁县','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2973','若羌县','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2974','且末县','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2975','焉耆','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2976','和静县','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2977','和硕县','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2978','博湖县','2969','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2979','博尔塔拉','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2980','博乐市','2979','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2981','精河县','2979','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2982','温泉县','2979','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2983','昌吉','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2984','呼图壁县','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2985','米泉市','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2986','昌吉市','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2987','阜康市','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2988','玛纳斯县','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2989','奇台县','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2990','吉木萨尔县','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2991','木垒','2983','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2992','哈密','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2993','哈密市','2992','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2994','伊吾县','2992','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2995','巴里坤','2992','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2996','和田','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2997','和田市','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2998','和田县','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('2999','墨玉县','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3000','皮山县','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3001','洛浦县','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3002','策勒县','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3003','于田县','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3004','民丰县','2996','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3005','喀什','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3006','喀什市','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3007','疏附县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3008','疏勒县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3009','英吉沙县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3010','泽普县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3011','莎车县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3012','叶城县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3013','麦盖提县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3014','岳普湖县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3015','伽师县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3016','巴楚县','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3017','塔什库尔干','3005','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3018','克拉玛依','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3019','克拉玛依市','3018','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3020','克孜勒苏','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3021','阿图什市','3020','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3022','阿克陶县','3020','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3023','阿合奇县','3020','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3024','乌恰县','3020','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3025','石河子','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3026','石河子市','3025','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3027','图木舒克','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3028','图木舒克市','3027','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3029','吐鲁番','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3030','吐鲁番市','3029','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3031','鄯善县','3029','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3032','托克逊县','3029','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3033','五家渠','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3034','五家渠市','3033','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3035','伊犁','2947','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3036','阿勒泰市','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3037','布克赛尔','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3038','伊宁市','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3039','布尔津县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3040','奎屯市','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3041','乌苏市','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3042','额敏县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3043','富蕴县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3044','伊宁县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3045','福海县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3046','霍城县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3047','沙湾县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3048','巩留县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3049','哈巴河县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3050','托里县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3051','青河县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3052','新源县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3053','裕民县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3054','和布克赛尔','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3055','吉木乃县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3056','昭苏县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3057','特克斯县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3058','尼勒克县','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3059','察布查尔','3035','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3060','云南','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3061','昆明','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3062','盘龙区','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3063','五华区','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3064','官渡区','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3065','西山区','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3066','东川区','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3067','安宁市','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3068','呈贡县','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3069','晋宁县','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3070','富民县','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3071','宜良县','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3072','嵩明县','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3073','石林县','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3074','禄劝','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3075','寻甸','3061','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3076','怒江','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3077','兰坪','3076','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3078','泸水县','3076','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3079','福贡县','3076','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3080','贡山','3076','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3081','普洱','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3082','宁洱','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3083','思茅区','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3084','墨江','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3085','景东','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3086','景谷','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3087','镇沅','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3088','江城','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3089','孟连','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3090','澜沧','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3091','西盟','3081','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3092','丽江','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3093','古城区','3092','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3094','宁蒗','3092','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3095','玉龙','3092','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3096','永胜县','3092','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3097','华坪县','3092','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3098','保山','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3099','隆阳区','3098','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3100','施甸县','3098','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3101','腾冲县','3098','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3102','龙陵县','3098','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3103','昌宁县','3098','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3104','楚雄','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3105','楚雄市','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3106','双柏县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3107','牟定县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3108','南华县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3109','姚安县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3110','大姚县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3111','永仁县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3112','元谋县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3113','武定县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3114','禄丰县','3104','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3115','大理','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3116','大理市','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3117','祥云县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3118','宾川县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3119','弥渡县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3120','永平县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3121','云龙县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3122','洱源县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3123','剑川县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3124','鹤庆县','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3125','漾濞','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3126','南涧','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3127','巍山','3115','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3128','德宏','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3129','潞西市','3128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3130','瑞丽市','3128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3131','梁河县','3128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3132','盈江县','3128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3133','陇川县','3128','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3134','迪庆','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3135','香格里拉县','3134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3136','德钦县','3134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3137','维西','3134','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3138','红河','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3139','泸西县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3140','蒙自县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3141','个旧市','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3142','开远市','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3143','绿春县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3144','建水县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3145','石屏县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3146','弥勒县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3147','元阳县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3148','红河县','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3149','金平','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3150','河口','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3151','屏边','3138','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3152','临沧','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3153','临翔区','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3154','凤庆县','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3155','云县','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3156','永德县','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3157','镇康县','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3158','双江','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3159','耿马','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3160','沧源','3152','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3161','曲靖','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3162','麒麟区','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3163','宣威市','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3164','马龙县','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3165','陆良县','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3166','师宗县','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3167','罗平县','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3168','富源县','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3169','会泽县','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3170','沾益县','3161','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3171','文山','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3172','文山县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3173','砚山县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3174','西畴县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3175','麻栗坡县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3176','马关县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3177','丘北县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3178','广南县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3179','富宁县','3171','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3180','西双版纳','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3181','景洪市','3180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3182','勐海县','3180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3183','勐腊县','3180','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3184','玉溪','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3185','红塔区','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3186','江川县','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3187','澄江县','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3188','通海县','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3189','华宁县','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3190','易门县','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3191','峨山','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3192','新平','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3193','元江','3184','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3194','昭通','3060','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3195','昭阳区','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3196','鲁甸县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3197','巧家县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3198','盐津县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3199','大关县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3200','永善县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3201','绥江县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3202','镇雄县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3203','彝良县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3204','威信县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3205','水富县','3194','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3206','浙江','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3207','杭州','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3208','西湖区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3209','上城区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3210','下城区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3211','拱墅区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3212','滨江区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3213','江干区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3214','萧山区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3215','余杭区','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3216','市郊','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3217','建德市','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3218','富阳市','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3219','临安市','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3220','桐庐县','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3221','淳安县','3207','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3222','湖州','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3223','吴兴区','3222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3224','南浔区','3222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3225','德清县','3222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3226','长兴县','3222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3227','安吉县','3222','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3228','嘉兴','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3229','南湖区','3228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3230','秀洲区','3228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3231','海宁市','3228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3232','嘉善县','3228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3233','平湖市','3228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3234','桐乡市','3228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3235','海盐县','3228','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3236','金华','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3237','婺城区','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3238','金东区','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3239','兰溪市','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3240','市区','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3241','佛堂镇','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3242','上溪镇','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3243','义亭镇','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3244','大陈镇','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3245','苏溪镇','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3246','赤岸镇','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3247','东阳市','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3248','永康市','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3249','武义县','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3250','浦江县','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3251','磐安县','3236','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3252','丽水','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3253','莲都区','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3254','龙泉市','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3255','青田县','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3256','缙云县','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3257','遂昌县','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3258','松阳县','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3259','云和县','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3260','庆元县','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3261','景宁','3252','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3262','宁波','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3263','海曙区','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3264','江东区','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3265','江北区','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3266','镇海区','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3267','北仑区','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3268','鄞州区','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3269','余姚市','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3270','慈溪市','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3271','奉化市','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3272','象山县','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3273','宁海县','3262','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3274','绍兴','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3275','越城区','3274','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3276','上虞市','3274','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3277','嵊州市','3274','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3278','绍兴县','3274','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3279','新昌县','3274','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3280','诸暨市','3274','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3281','台州','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3282','椒江区','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3283','黄岩区','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3284','路桥区','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3285','温岭市','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3286','临海市','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3287','玉环县','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3288','三门县','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3289','天台县','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3290','仙居县','3281','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3291','温州','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3292','鹿城区','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3293','龙湾区','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3294','瓯海区','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3295','瑞安市','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3296','乐清市','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3297','洞头县','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3298','永嘉县','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3299','平阳县','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3300','苍南县','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3301','文成县','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3302','泰顺县','3291','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3303','舟山','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3304','定海区','3303','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3305','普陀区','3303','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3306','岱山县','3303','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3307','嵊泗县','3303','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3308','衢州','3206','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3309','衢州市','3308','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3310','江山市','3308','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3311','常山县','3308','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3312','开化县','3308','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3313','龙游县','3308','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3314','重庆','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3315','重庆','3314','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3316','合川区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3317','江津区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3318','南川区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3319','永川区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3320','南岸区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3321','渝北区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3322','万盛区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3323','大渡口区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3324','万州区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3325','北碚区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3326','沙坪坝区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3327','巴南区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3328','涪陵区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3329','江北区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3330','九龙坡区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3331','渝中区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3332','黔江开发区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3333','长寿区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3334','双桥区','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3335','綦江县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3336','潼南县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3337','铜梁县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3338','大足县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3339','荣昌县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3340','璧山县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3341','垫江县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3342','武隆县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3343','丰都县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3344','城口县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3345','梁平县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3346','开县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3347','巫溪县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3348','巫山县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3349','奉节县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3350','云阳县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3351','忠县','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3352','石柱','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3353','彭水','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3354','酉阳','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3355','秀山','3315','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3356','香港','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3357','香港','3356','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3358','沙田区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3359','东区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3360','观塘区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3361','黄大仙区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3362','九龙城区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3363','屯门区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3364','葵青区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3365','元朗区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3366','深水埗区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3367','西贡区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3368','大埔区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3369','湾仔区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3370','油尖旺区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3371','北区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3372','南区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3373','荃湾区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3374','中西区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3375','离岛区','3357','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3376','澳门','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3377','澳门','3376','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3378','澳门','3377','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3379','台湾','1','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3380','台湾','3379','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3381','台北','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3382','高雄','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3383','基隆','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3384','台中','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3385','台南','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3386','新竹','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3387','嘉义','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3388','宜兰县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3389','桃园县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3390','苗栗县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3391','彰化县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3392','南投县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3393','云林县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3394','屏东县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3395','台东县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3396','花莲县','3380','255');
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('3397','澎湖县','3380','255');
DROP TABLE IF EXISTS ecm_scategory;
CREATE TABLE ecm_scategory (
  cate_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  cate_name varchar(100) NOT NULL DEFAULT '',
  parent_id int(10) unsigned NOT NULL DEFAULT '0',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (cate_id),
  KEY parent_id (parent_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_sessions;
CREATE TABLE ecm_sessions (
  sesskey char(32) NOT NULL DEFAULT '',
  expiry int(11) NOT NULL DEFAULT '0',
  userid int(11) NOT NULL DEFAULT '0',
  adminid int(11) NOT NULL DEFAULT '0',
  ip char(15) NOT NULL DEFAULT '',
  `data` char(255) NOT NULL DEFAULT '',
  is_overflow tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (sesskey),
  KEY expiry (expiry)
) TYPE=MyISAM;
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d367a12e816e733488d79e51b4e5375a','1419637016','0','0','140.207.55.80','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('652d71e7183d8911a2e8c93d2fe9ce9f','1419637016','0','0','112.64.199.29','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ce9527bc642582278e2af2913fd69780','1419637016','0','0','140.207.55.79','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b7695962a73b95686a51daa0fe19095f','1419638477','0','0','58.58.192.132','user_info|a:5:{s:7:\"user_id\";s:1:\"3\";s:9:\"user_name\";s:5:\"buyer\";s:8:\"reg_time\";s:10:\"1388031042\";s:10:\"last_login\";s:10:\"1419635792\";s:7:\"last_ip\";s:13:\"58.58.192.132\";}ASYNC_SENDMAIL|b:1;','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('77f1ccd9cede3bb902757b75659c5616','1419636465','0','0','182.136.231.178','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2e15421f25239b39a2da258e104c2d4e','1419634675','0','0','220.181.108.184','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d599b4dd076e4571b10142575388bb78','1419634637','0','0','123.125.71.117','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f015dcca4e79b80b740f532c6bd692c6','1419632494','0','0','182.136.231.178','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d7825a01579ef66e21adf768ea990fe7','1419632487','0','0','110.75.105.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fce01dcd74a5248e33d39b6b8c85b13a','1419632478','0','0','182.136.231.178','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5499cf0d113e922b71e5c1263669874a','1419632450','0','0','182.136.231.178','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8200d780712cbd587623e52435630833','1419632427','0','0','110.75.105.73','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('06a97cbaf970fef8d9fb1a7217a99846','1419632387','0','0','182.136.231.178','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0cf0bbcf570bca158fc8fc452884899f','1419632355','0','0','182.136.231.178','user_info|a:5:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:6:\"seller\";s:8:\"reg_time\";s:10:\"1388031020\";s:10:\"last_login\";s:10:\"1419630756\";s:7:\"last_ip\";s:15:\"182.136.231.178\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ae7b0e726bd336ef221df945d37e36e5','1419632146','0','0','182.136.231.178','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('95efe226aa120bfeca1278ad462183eb','1419638448','0','0','58.58.192.132','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9de8da09471955029ffe31743af1bd5a','1419632901','0','0','111.164.168.84','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('78f650800bfa9fcfdfd98c002e1ca7a7','1419625056','0','0','27.129.130.103','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1419287891\";s:7:\"last_ip\";s:14:\"118.124.159.62\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3ddd8eaa56d6bc701f31d1627682b93f','1419622852','0','0','220.181.108.165','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d94da95b1b7b01086fb554fbbe499eaa','1419622826','0','0','123.125.71.111','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1beff6adc4b6bdcbf2436d8e8a65b880','1419460274','0','0','111.30.141.47','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a8cfb36b2fa730f5865e708234bbc937','1419460274','0','0','111.30.132.176','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8a9fe75e02c53149ce68582351b9d6a0','1419460274','0','0','111.30.132.195','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d73bf2b754c8066c2b405b365610087e','1419460273','0','0','111.30.132.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8f5ae6a9b3dec8d4f78bd2b72e836f3c','1419460273','0','0','111.30.132.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('35560fa0510f603f3a70251d093c2bf5','1419460272','0','0','111.30.131.199','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('69e6defa0d375512cd6577e96d231559','1419460272','0','0','111.30.132.194','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2d6bd1b5e960794ba7f1b583b5e1400b','1419460272','0','0','111.30.132.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c0c184093d6a3025b65065500e2b18e6','1419460271','0','0','111.30.132.194','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6659bcde42055e11e4963e84bb4faab8','1419460270','0','0','111.30.132.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('430b58012a205b1cdb054b403a0cba9a','1419460270','0','0','111.30.132.158','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5310b2a7f35c7f1b4b30c148f895c566','1419460270','0','0','111.30.132.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('12a9dc294fa59b7a4fd3fa2f2f3ac3ff','1419460270','0','0','111.30.132.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8ca4aeef0a664f73d72e310b1b46827a','1419460269','0','0','111.30.141.47','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1548266482699916d932c507e9ba39d7','1419460268','0','0','111.30.132.158','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8b8740124b78261d4820f3f1670fd494','1419460268','0','0','111.30.132.158','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1c4d6af55f3b2ae2bb57889e10cac677','1419460267','0','0','111.30.132.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('cc0fd99ae7b33a32b96d654b74d61915','1419460267','0','0','111.30.132.176','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7fa496fc66d1c66ae5dbf7df20d39ac0','1419460266','0','0','111.30.132.195','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('24391fb1f89b847eea3c5a4674ca2aea','1419460266','0','0','111.30.132.148','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('98ed9fba75804f803361644b3e923767','1419460265','0','0','111.30.132.146','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8633a85371272d617370dc3fafeea7b3','1419460264','0','0','111.30.132.148','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bd2dcaae677f93b27209430e689b597f','1419460264','0','0','111.30.132.158','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9cadae250d4005a30b9634f6599aa860','1419460264','0','0','111.30.131.199','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a44395a4aae3b652309be0016d2c78ac','1419460264','0','0','111.30.132.195','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c751adbade92cb76fadd5c21bb367e3c','1419460264','0','0','111.161.52.27','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8d879f3703a9d5cc55fc4609480867af','1419460263','0','0','111.161.59.193','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('00561187aa4411548e52c1768360d2b2','1419460263','0','0','111.161.52.27','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('02160dd1b30821a4c48a8c490087df69','1419460262','0','0','111.161.59.193','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3b1dddeca044c54d6ce5603440e7b391','1419460262','0','0','111.30.131.199','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f6989d550b3b8fc48734ebc3e6d18670','1419460262','0','0','61.49.56.48','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5a621376e2608df027c79a1523ed00e0','1419460262','0','0','111.161.59.195','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('35ceff0b2ab41cf6c912304957bfc681','1419460260','0','0','111.30.132.176','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('814711e756ea4c15eda708a6c2bdaf58','1419460260','0','0','111.161.59.195','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bc425f960f62d5270a656ba59ff41e2d','1419460260','0','0','111.30.132.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b4450d758d2ba7e2a7415998167e4724','1419460259','0','0','111.30.132.190','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3df8651f3d7e2dc80969193334292cc5','1419460259','0','0','111.30.131.199','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6a7f8562fa1129f746ccddf79de8f994','1419460258','0','0','111.30.132.195','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f0635b6f2af734bc7bcb459bb37094f9','1419460258','0','0','111.30.132.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('dbab13f94d543daaacf12f6c8bb2b0ae','1419460258','0','0','111.30.132.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('cf1b6420275998c62696fe841e17d90a','1419460257','0','0','111.30.132.194','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('130d324300eff292498ee6c42296baed','1419460256','0','0','111.30.132.212','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('758234b1fb310ee33598248e76f33f0d','1419460256','0','0','111.161.57.163','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('686fe4432e40688f487ad0ae963191f0','1419460256','0','0','61.49.56.47','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a70edbb1302df14a362cac4a5ac6065f','1419460256','0','0','111.30.132.148','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('568aa2c868360bc95f6f9fc90c65ad4f','1419460255','0','0','61.134.187.224','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9577246d752cf3d988a0e96fab089625','1419460622','0','0','61.134.187.224','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c615d7b6cca8402ed28dc57a878384bf','1419460210','0','0','180.153.205.253','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3733137c3ecbe7e6686a5cc5c958e7cc','1419459801','0','0','180.153.205.253','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9178726ef412bfb2a06dec806b4dae23','1419460236','0','0','61.134.187.224','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('94d82ef2b07f6daaaf77a89d3f01dea3','1419612532','0','0','180.153.236.149','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('de65dbec6958fb3af501b5b47c5eb8c3','1419604932','0','0','182.118.20.173','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('33204c2ef2980e50d191baa9a804fd4a','1419604929','0','0','182.118.25.231','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('299136a3ca06d6da3687b31b6f5b2a24','1419604893','0','0','182.118.21.207','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b254b67671526e252cb4b737f7f025af','1419603294','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8c6a1b9c2a535bec7aa8528f4500608c','1419603122','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5706fce24a74a36e74e4c7eeebf13c09','1419599701','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('120ee886f0478a3e2a4bf484439c1862','1419599540','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b23c7cb8efb801df0f8aea04499a1549','1419467686','0','0','58.58.192.132','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6d1e176ca70ef31edbd0528b3b81f20e','1419596044','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ea0103f0be67b206505157ff6a5b17ea','1419596039','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3ce1bab6dd75882f505073d5f8b0c88a','1419592867','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3ec1e130b4b26858ae5d4fee761b17f3','1419592585','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d3d4c1ac1b1dc6f193db265c6ba9d0ec','1419589934','0','0','124.163.144.69','user_openid|s:28:\"oVSK1jiL4Q1yWKkAHDVzwXIPSJSk\";store_openid|s:15:\"gh_c07bc52e0860\";wx_store_id|s:1:\"2\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7e90f385cccd55a8792607246b4aee6b','1419589205','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1a4950fdfc9e7a22d94d8ed5f7bb0a3e','1419586053','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4841583cc904da29e0d4a3fbd18e10c4','1419585866','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a7bd62cf213dac5c0450853a9c9b3647','1419585571','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('03a2e9053ef30101fa5f7355fb190209','1419583135','0','0','220.181.108.177','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f2089247a4b10ec58b423cf20001df70','1419583042','0','0','123.125.71.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a16143c6e91c794949610eb02326f771','1419581940','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5cdb50160975c6b0c8f7d4d46291cb7c','1419578732','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4711f556d29a05879fd77a67d3556768','1419578690','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('89affb20f39689e462ef796a2e63fe53','1419578368','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d783cf470c2f6931fb04c924e6065f9c','1419572784','0','0','123.125.71.109','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('586b606933550db0dc8c38d38a2646ca','1419572515','0','0','220.181.108.158','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ab174fd01e75fb18a35c529c3fde1cbc','1419571580','0','0','124.161.193.178','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c645b5b0220be9593499c026e22b96f3','1419571532','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b24448b68c2fa4fc3224e38ec93c6813','1419571511','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2f8246a4b091fda8bd64a12d9d01ebc2','1419571282','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5ab50e92e3e366157816bb8ba2ad1f9c','1419568020','0','0','220.181.132.196','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('635645d89dee7b8bfded0f90edb1499c','1419568005','0','0','220.181.132.219','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0a4de2d5ca3ab7efc0dd590b482eea38','1419567996','0','0','183.52.47.232','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8c5f4ef11685c885ad707cc615ab1b88','1419567930','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('dbedd57b323bb590523d99e3ff155ae9','1419567907','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d30ea3a94e494e1a4367c60949dcae99','1419565191','0','0','220.181.108.160','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e8405d399a26d522849f6c7e1c18930d','1419565095','0','0','123.125.71.96','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2c59fd4804e4ffd94d3c192d49c8fa21','1419564620','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('70028e42a40c05cf561829b3d638cd08','1419564598','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3c06fb739493871f52e64b6d17a2cd8f','1419564573','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9cc4d893937abab6d65dd0b51a30529d','1419560805','0','0','10.111.0.121','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2f62e423c90c50f82357112d294fca75','1419557982','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('857102834669f434c4a7ae44c91be0e6','1419557919','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5cb2b3665659e6b705352b4755fc2cc5','1419557896','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2cc6a890b153f7be2176d759a658a9fd','1419557882','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a2e52cdb267435686de75602bb393fb1','1419557875','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('493400d3f6b75bbf68675bf9d20719e2','1419557873','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1e81270c2e6900172c1e91acfba14e15','1419557481','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('77cfc0318efbe1683a07777e6125c316','1419557460','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5d92c60330cbd3fdf42432dfa3843672','1419557417','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('af4f548d82943d7f71290b0a1d6a22e9','1419557409','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c08b4bf854f8c33c4675ccd4fbf6ffa2','1419558019','0','0','218.89.46.183','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('28f3e620a71703666a9077b7a278256e','1419554455','0','0','10.111.0.121','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('47ebd48fa7001ed38fef9017854370b1','1419554455','0','0','10.111.0.121','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7c7e51e72a9a5726decf6ad58bade90e','1419553218','0','0','10.111.0.121','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4378cc55953d26798401869d4fc529ac','1419550975','0','0','119.147.146.189','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('125c2117d029235b48b9e5d10ddc81e0','1419550973','0','0','119.147.146.189','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('587fbf09850d9130abca8ca197e745d6','1419547078','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f056ae784bdf2158e0e1c7ee5e710fde','1419546903','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4e482f7adbc4df385cab6c454f74e6ad','1419544289','0','0','171.41.124.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8238f7d16927cb8496921b05e4e61dd5','1419543681','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('cfb6130d504646e8f11bd8e5da022d90','1419541804','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('644e1ca1c2a1dcf1f035c0d759992f60','1419540821','0','0','10.111.0.121','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a1d594b69a4667acd5785b3cc2367438','1419538644','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2c71d33cd529535807e3bdc722890262','1419538622','0','0','66.249.65.142','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6b315f4aacb5e485bbbc86a95eaae456','1419533881','0','0','66.249.65.134','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f349e03958b2adaa0fe6bdc7d42ccca5','1419532805','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0fc6cafb239e1bae111d327aa44fb28a','1419530648','0','0','180.153.195.12','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('42b4d40ac7c57539364fa98cc6ff85b3','1419528549','0','0','218.89.46.183','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c9d562a4c1c935cb87aef2053538b1fb','1419501332','0','0','123.125.71.88','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('69890bd12500a2454d72552fae1b0b5a','1419498805','0','0','27.129.156.106','user_info|a:6:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:6:\"seller\";s:8:\"reg_time\";s:10:\"1388031020\";s:10:\"last_login\";s:10:\"1419393865\";s:7:\"last_ip\";s:13:\"115.49.123.93\";s:8:\"store_id\";s:1:\"2\";}member_role|s:12:\"seller_admin\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0eefa6717394f8f72b2c8927d12a7df7','1419489416','0','0','220.181.108.161','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('b1aeae60a1faa1c8a2011dd51fb34a86','1419489360','0','0','123.125.71.117','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('36e09bb449d584c8b2ea68cfb7ba2d33','1419483312','0','0','101.226.168.214','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('cd61e09979317c63ede2dd698552054a','1419482380','0','0','182.118.20.161','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('5d2fecbe159e9460d1c51edf4d807484','1419482147','0','0','101.226.167.234','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('38740ce9ed40b40f9da82c28139fa605','1419482074','0','0','101.226.166.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0047ea705b5e30743594e42dff543188','1419482052','0','0','182.118.21.246','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ce813b229f481308e9f4214887fedfaf','1419482038','0','0','101.226.166.248','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('393d4c73b4faff4bf7507eef91c029b4','1419482020','0','0','101.226.167.233','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('98e22128bd7769dacc3db267619ee094','1419481987','0','0','101.226.166.231','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('faabceed6cc96f436e394e0550710bed','1419481943','0','0','182.118.21.250','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a48a9cbf31c6af5b31ff6b732d030f4e','1419481908','0','0','182.118.22.229','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1a100df9e41c1593c558779008700d28','1419481815','0','0','101.226.168.228','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9e0ca147896dc629b71a4e4920d8c0c5','1419481760','0','0','182.118.25.231','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8c1ffb785fe3c128f757626adcc097fb','1419481372','0','0','101.226.167.223','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c59ff7b488689656550123abfe32b6f0','1419481303','0','0','101.226.166.239','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fde0a5e3a6e9eefe0d4d7fa912102ab8','1419481291','0','0','101.226.169.205','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3b163a0cc63d37a6295d55d85a44afc1','1419481258','0','0','182.118.22.224','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('ce91c5f1c25cacf875571335cf80dc58','1419481187','0','0','182.118.22.229','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('97e58ae57c7ee4ea4d73a37cb514995d','1419479805','0','0','139.205.200.240','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('eb41474ce4d3f697e05288ac8cdee1df','1419478071','0','0','101.199.112.55','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('339fa8356129252d1626e780f60d598e','1419478047','0','0','220.181.132.219','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8f841079cc230f181a48908168ce62fd','1419469224','0','0','101.26.48.99','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a725901de08edc980fceebf8020a2381','1419467659','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2af5b95437d784a026061ffd130f889b','1419466433','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('002910481bdbb15f10be3bcc78cc3fd8','1419466425','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a8cdf4c34c21b66e1976cf9fd4024003','1419465730','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7b67e783ad472ad23ed83d6a35261e43','1419465716','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c91e84bb5ee018f861072f2800ce0ea6','1419464371','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('457e5a88190b47fd7da7c005b2fe5653','1419462281','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('908eb6e22670d855551f37cd15acadd7','1419461322','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('46a35e1305782038f5e970dca3bc163d','1419460564','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('783a346b4fb6a3da307c5b0b869a47f1','1419460555','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('367dc113384c89f2c05d2af600b96d34','1419460317','0','0','211.149.204.105','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('955f5e201d11c38b04b737eef344e918','1419460278','0','0','111.30.132.194','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('adfca9237c1c98a949010b915f910924','1419460278','0','0','111.30.132.158','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('aa7f51907a8a5da5dd73c5ca8d63dcd8','1419460277','0','0','111.30.141.47','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2c6443b79aa88dac31c85b2d2e7c8760','1419460276','0','0','111.30.132.195','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d2df1ae42740219b9ebf6597d8223256','1419460276','0','0','111.30.132.146','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('faf3dc8bd2b65f06ebf3e01f1896eb81','1419460276','0','0','111.30.132.208','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('6d70c5d1e0035b0f3e4d2c0b300727d5','1419460275','0','0','111.30.132.176','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('26f3a7e78d0ab06fa4ffa862d5e2bd9e','1419637017','0','0','140.207.54.187','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('8763ffd8a249be1c7278968fb21e0f07','1419637018','0','0','140.207.54.187','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('31d75fdcf6bd792fcc58a68d8392fa40','1419637018','0','0','140.207.55.79','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7a102f77b201325fbdd1274448f33e4d','1419637019','0','0','140.207.55.80','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9e5d4349484d90356fb7b95b3f9aef6d','1419637019','0','0','117.135.170.67','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9cd75d0176b8a8558409cd312c33bc6a','1419637019','0','0','117.185.27.104','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3508b65c2f7791d6f166f780516e426a','1419637019','0','0','183.195.232.39','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0615a2f28bb54e90f773ad000226249b','1419637020','0','0','183.195.232.37','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bbd4b97778bbff3f4dd0d34a40d92b7f','1419637020','0','0','117.135.170.67','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3d08f3ad2c13b15d87179ebba2ff3cab','1419637021','0','0','117.185.27.103','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('13644448cf34f04f2f7e8ca5e80abde4','1419637021','0','0','117.185.27.103','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fd5a8b0fe412a77fb828bc665558bad2','1419638477','0','0','140.207.55.79','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c31540380ade672b1d4a2294efe8100b','1419638477','0','0','120.204.201.77','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('af8951898c1fa28e8d1d29a470560401','1419638619','0','0','66.249.65.138','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d03811b5f324f2dd271d6b551a94d480','1419662799','0','0','119.52.104.11','user_openid|s:28:\"oVSK1jsPKRhHv4fPIdODqKy_V4wk\";store_openid|s:15:\"gh_c07bc52e0860\";wx_store_id|s:1:\"2\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7f688dadc7be671c1b33530157270dac','1419685928','0','0','101.226.168.227','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('af4e07f26683b0b13da5c3e87dc0bf16','1419685998','0','0','101.226.166.233','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('084f606ac2ee918f82d3e9a21309fff4','1419686044','0','0','101.226.169.218','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('a7e80393991a3a7f5148a186341a8704','1419686090','0','0','101.226.168.198','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c9d5c9a802efd5bc9b1e5fbfede21b52','1419686177','0','0','101.226.167.211','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7d2c1242e26999469608f796c4a24242','1419686420','0','0','101.226.168.234','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('32d406da48606f0f44a7035721dfd2c4','1419686475','0','0','182.118.21.254','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f97d252f0588908c887be1113af3b55d','1419686475','0','0','182.118.25.234','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e72ec97cd4ce9f99658d8770c8ed1210','1419687006','0','0','182.118.25.220','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4689858f993e044b41231efdbce927ad','1419687033','0','0','182.118.20.236','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4ed0473b0134a1ca4b95caab45febef0','1419687175','0','0','182.118.22.201','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7c852e811c554b52b022929f12261783','1419687220','0','0','182.118.22.234','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('14a19f73bfae1ef93b219d6d6923497c','1419687532','0','0','182.118.20.164','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('bc141eae02a742f5b13b396d7168b18a','1419702769','0','0','101.226.62.80','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('f9471e64b0e47829d1711e992193f831','1419702826','0','0','140.207.54.73','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('40ce82a6eb2268679c6d4b15568ed766','1419702848','0','0','140.207.54.73','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('1f1d2d93f9eef412bf0af5d824dc4bd4','1419702848','0','0','112.65.193.16','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('164a26487a2e464be143aaa10b6e1873','1419702848','0','0','101.226.33.218','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4536444fbd33b52f4de7b00dfe36b402','1419702854','0','0','182.137.155.176','user_openid|s:28:\"oVSK1jhR6KIJYvkqsUBHLxOUAC78\";store_openid|s:15:\"gh_c07bc52e0860\";wx_store_id|s:1:\"2\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c431a50987d20bf6eded73a1588f9619','1419703002','0','0','110.75.105.140','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7f8fdc633028c7f2deea4de821e8e81a','1419703007','0','0','110.75.105.117','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('474dc7dccb333c93a7ca6a7ef888d800','1419703157','0','0','182.137.155.176','user_info|a:5:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:6:\"seller\";s:8:\"reg_time\";s:10:\"1388031020\";s:10:\"last_login\";s:10:\"1419701613\";s:7:\"last_ip\";s:15:\"182.137.155.176\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4200b3caa5dbd0c836dc2d01478c5ed5','1419703272','0','0','210.14.69.226','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('738d72e5460a58a5bb479894ac84b999','1419703345','0','0','182.137.155.176','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('916359d5df0531d4b8653065708612ce','1419704208','0','0','182.137.155.176','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1419630219\";s:7:\"last_ip\";s:13:\"58.58.192.132\";}','0');
DROP TABLE IF EXISTS ecm_sessions_data;
CREATE TABLE ecm_sessions_data (
  sesskey varchar(32) NOT NULL DEFAULT '',
  expiry int(11) NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (sesskey),
  KEY expiry (expiry)
) TYPE=MyISAM;
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('9de8da09471955029ffe31743af1bd5a','1419632901','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1419623449\";s:7:\"last_ip\";s:14:\"27.129.130.103\";}user_info|a:5:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:6:\"seller\";s:8:\"reg_time\";s:10:\"1388031020\";s:10:\"last_login\";s:10:\"1419628446\";s:7:\"last_ip\";s:14:\"111.164.168.84\";}');
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('95efe226aa120bfeca1278ad462183eb','1419638448','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1419628152\";s:7:\"last_ip\";s:14:\"111.164.168.84\";}user_info|a:5:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:6:\"seller\";s:8:\"reg_time\";s:10:\"1388031020\";s:10:\"last_login\";s:10:\"1419630766\";s:7:\"last_ip\";s:13:\"58.58.192.132\";}member_role|s:12:\"seller_admin\";');
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('b23c7cb8efb801df0f8aea04499a1549','1419467686','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1419394571\";s:7:\"last_ip\";s:13:\"115.49.123.93\";}user_info|a:6:{s:7:\"user_id\";s:1:\"7\";s:9:\"user_name\";s:3:\"wgs\";s:8:\"reg_time\";s:10:\"1419380136\";s:10:\"last_login\";s:10:\"1419380136\";s:7:\"last_ip\";s:13:\"58.58.192.132\";s:8:\"store_id\";s:1:\"7\";}captcha|s:8:\"NXl3cA==\";');
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('c08b4bf854f8c33c4675ccd4fbf6ffa2','1419558019','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1419556097\";s:10:\"last_login\";N;s:7:\"last_ip\";N;}user_info|a:6:{s:7:\"user_id\";s:1:\"3\";s:9:\"user_name\";s:5:\"buyer\";s:8:\"reg_time\";s:10:\"1388031042\";s:10:\"last_login\";s:10:\"1419233450\";s:7:\"last_ip\";s:15:\"139.205.200.240\";s:8:\"store_id\";N;}');
DROP TABLE IF EXISTS ecm_sgrade;
CREATE TABLE ecm_sgrade (
  grade_id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  grade_name varchar(60) NOT NULL DEFAULT '',
  goods_limit int(10) unsigned NOT NULL DEFAULT '0',
  space_limit int(10) unsigned NOT NULL DEFAULT '0',
  skin_limit int(10) unsigned NOT NULL DEFAULT '0',
  charge varchar(100) NOT NULL DEFAULT '',
  need_confirm tinyint(3) unsigned NOT NULL DEFAULT '0',
  description varchar(255) NOT NULL DEFAULT '',
  functions varchar(255) DEFAULT NULL,
  skins text NOT NULL,
  sort_order tinyint(4) unsigned NOT NULL DEFAULT '0',
  wapskin_limit int(10) unsigned NOT NULL DEFAULT '0',
  wapskins text NOT NULL,
  PRIMARY KEY (grade_id)
) TYPE=MyISAM;
INSERT INTO ecm_sgrade ( `grade_id`, `grade_name`, `goods_limit`, `space_limit`, `skin_limit`, `charge`, `need_confirm`, `description`, `functions`, `skins`, `sort_order`, `wapskin_limit`, `wapskins` ) VALUES  ('1','系统默认','0','0','10','100元/年','0','测试用户请选择“默认等级”，可以立即开通。','editor_multimedia,coupon,groupbuy,enable_radar','default|default,default|style1,default|style2,default|style3,default|style4,default|style5,default|style6,default|style7,default|style8,moolau|default','255','25','default|default,default1|default,default10|default,default11|default,default12|default,default13|default,default14|default,default15|default,default16|default,default17|default,default18|default,default19|default,default2|default,default20|default,default21|default,default22|default,default23|default,default24|default,default3|default,default4|default,default5|default,default6|default,default7|default,default8|default,default9|default');
INSERT INTO ecm_sgrade ( `grade_id`, `grade_name`, `goods_limit`, `space_limit`, `skin_limit`, `charge`, `need_confirm`, `description`, `functions`, `skins`, `sort_order`, `wapskin_limit`, `wapskins` ) VALUES  ('2','旗舰店','0','0','10','','1','','editor_multimedia,coupon,groupbuy,enable_radar','default|default,default|style1,default|style2,default|style3,default|style4,default|style5,default|style6,default|style7,default|style8,moolau|default','255','25','default|default,default1|default,default10|default,default11|default,default12|default,default13|default,default14|default,default15|default,default16|default,default17|default,default18|default,default19|default,default2|default,default20|default,default21|default,default22|default,default23|default,default24|default,default3|default,default4|default,default5|default,default6|default,default7|default,default8|default,default9|default');
DROP TABLE IF EXISTS ecm_shipping;
CREATE TABLE ecm_shipping (
  shipping_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  shipping_name varchar(100) NOT NULL DEFAULT '',
  shipping_desc varchar(255) DEFAULT NULL,
  first_price decimal(10,2) NOT NULL DEFAULT '0.00',
  step_price decimal(10,2) NOT NULL DEFAULT '0.00',
  cod_regions text,
  enabled tinyint(3) unsigned NOT NULL DEFAULT '1',
  sort_order tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (shipping_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_shipping ( `shipping_id`, `store_id`, `shipping_name`, `shipping_desc`, `first_price`, `step_price`, `cod_regions`, `enabled`, `sort_order` ) VALUES  ('1','2','包邮','','0.00','0.00','a:1:{i:1;s:6:\"中国\";}','1','255');
DROP TABLE IF EXISTS ecm_store;
CREATE TABLE ecm_store (
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  store_name varchar(100) NOT NULL DEFAULT '',
  owner_name varchar(60) NOT NULL DEFAULT '',
  owner_card varchar(60) NOT NULL DEFAULT '',
  region_id int(10) unsigned DEFAULT NULL,
  region_name varchar(100) DEFAULT NULL,
  address varchar(255) NOT NULL DEFAULT '',
  zipcode varchar(20) NOT NULL DEFAULT '',
  tel varchar(60) NOT NULL DEFAULT '',
  sgrade tinyint(3) unsigned NOT NULL DEFAULT '0',
  apply_remark varchar(255) NOT NULL DEFAULT '',
  credit_value int(10) NOT NULL DEFAULT '0',
  praise_rate decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  domain varchar(60) DEFAULT NULL,
  state tinyint(3) unsigned NOT NULL DEFAULT '0',
  close_reason varchar(255) NOT NULL DEFAULT '',
  add_time int(10) unsigned DEFAULT NULL,
  end_time int(10) unsigned NOT NULL DEFAULT '0',
  certification varchar(255) DEFAULT NULL,
  sort_order smallint(5) unsigned NOT NULL DEFAULT '0',
  recommended tinyint(4) NOT NULL DEFAULT '0',
  theme varchar(60) NOT NULL DEFAULT '',
  store_banner varchar(255) DEFAULT NULL,
  store_logo varchar(255) DEFAULT NULL,
  description text,
  image_1 varchar(255) NOT NULL DEFAULT '',
  image_2 varchar(255) NOT NULL DEFAULT '',
  image_3 varchar(255) NOT NULL DEFAULT '',
  im_qq varchar(60) NOT NULL DEFAULT '',
  im_ww varchar(60) NOT NULL DEFAULT '',
  im_msn varchar(60) NOT NULL DEFAULT '',
  hot_search varchar(255) NOT NULL,
  business_scope varchar(50) NOT NULL,
  online_service varchar(255) NOT NULL,
  hotline varchar(255) NOT NULL,
  pic_slides text NOT NULL,
  pic_slides_wap text NOT NULL,
  enable_groupbuy tinyint(1) unsigned NOT NULL DEFAULT '0',
  enable_radar tinyint(1) unsigned NOT NULL DEFAULT '1',
  waptheme varchar(60) NOT NULL DEFAULT '',
  is_open_pay tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (store_id),
  KEY store_name (store_name),
  KEY owner_name (owner_name),
  KEY region_id (region_id),
  KEY domain (domain)
) TYPE=MyISAM;
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `pic_slides_wap`, `enable_groupbuy`, `enable_radar`, `waptheme`, `is_open_pay` ) VALUES  ('2','超级店铺','超级店家','','0','','','','88888888','2','','0','0.00','','1','','1388031275','0','','65535','0','moolau|default',null,null,'','','','','540616918','阿哩木','','','','','','','{\"1\":{\"url\":\"data/files/store_2/pic_slides_wap/pic_slides_wap_1.jpg\",\"link\":\"#\"},\"2\":{\"url\":\"data/files/store_2/pic_slides_wap/pic_slides_wap_2.jpg\",\"link\":\"#\"},\"3\":{\"url\":\"data/files/store_2/pic_slides_wap/pic_slides_wap_3.jpg\",\"link\":\"#\"}}','0','0','default12|default','1');
DROP TABLE IF EXISTS ecm_ultimate_store;
CREATE TABLE ecm_ultimate_store (
  ultimate_id int(255) NOT NULL AUTO_INCREMENT,
  brand_id int(50) NOT NULL,
  keyword varchar(20) NOT NULL,
  cate_id int(50) NOT NULL,
  store_id int(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  description varchar(255) DEFAULT NULL,
  PRIMARY KEY (ultimate_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_uploaded_file;
CREATE TABLE ecm_uploaded_file (
  file_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  file_type varchar(60) NOT NULL DEFAULT '',
  file_size int(10) unsigned NOT NULL DEFAULT '0',
  file_name varchar(255) NOT NULL DEFAULT '',
  file_path varchar(255) NOT NULL DEFAULT '',
  add_time int(10) unsigned NOT NULL DEFAULT '0',
  belong tinyint(3) unsigned NOT NULL DEFAULT '0',
  item_id int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (file_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('1','2','image/jpeg','24997','11.jpg','data/files/store_2/goods_110/201312262048304586.jpg','1388033310','2','1');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('2','2','image/jpeg','20215','1.jpg','data/files/store_2/goods_198/201312262049586818.jpg','1388033398','2','2');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('3','2','image/jpeg','10477','2.jpg','data/files/store_2/goods_148/201312262052284448.jpg','1388033548','2','3');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('4','2','image/jpeg','30595','17.jpg','data/files/store_2/goods_57/201312262054174988.jpg','1388033657','2','4');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('5','2','image/jpeg','26733','4.jpg','data/files/store_2/goods_99/201312262054594117.jpg','1388033699','2','5');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('6','2','image/jpeg','23051','5.jpg','data/files/store_2/goods_136/201312262055366831.jpg','1388033736','2','6');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('7','2','image/jpeg','19535','6.jpg','data/files/store_2/goods_180/201312262056209107.jpg','1388033780','2','7');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('8','2','image/jpeg','23943','18.jpg','data/files/store_2/goods_63/201312262057435880.jpg','1388033863','2','8');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('9','2','image/jpeg','28884','19.jpg','data/files/store_2/goods_120/201312262058402887.jpg','1388033920','2','9');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('10','2','image/jpeg','27780','20.jpg','data/files/store_2/goods_31/201312262100319871.jpg','1388034031','2','10');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('11','2','image/jpeg','23463','21.jpg','data/files/store_2/goods_75/201312262101158858.jpg','1388034075','2','11');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('12','2','image/jpeg','34652','22.jpg','data/files/store_2/goods_144/201312262102246687.jpg','1388034144','2','12');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('13','2','image/jpeg','36655','23.jpg','data/files/store_2/goods_2/201312262103227833.jpg','1388034202','2','13');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('14','2','image/jpeg','45682','24.jpg','data/files/store_2/goods_77/201312262104371080.jpg','1388034277','2','14');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('15','2','image/jpeg','22513','25.jpg','data/files/store_2/goods_153/201312262105539118.jpg','1388034353','2','15');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('16','2','image/jpeg','7528','11.jpg','data/files/store_2/goods_69/201312262107499378.jpg','1388034469','2','16');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('17','2','image/jpeg','8244','7.jpg','data/files/store_2/goods_129/201312262108507192.jpg','1388034530','2','17');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('18','2','image/jpeg','8244','12.jpg','data/files/store_2/goods_130/201312262108508363.jpg','1388034530','2','17');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('19','2','image/jpeg','3882','1.jpg','data/files/store_2/goods_166/201312262109269656.jpg','1388034566','2','18');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('20','2','image/jpeg','5181','13.jpg','data/files/store_2/goods_28/201312262110282113.jpg','1388034628','2','19');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('21','2','image/jpeg','5409','10.jpg','data/files/store_2/goods_51/201312262110515808.jpg','1388034651','2','20');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('22','2','image/jpeg','12915','4.jpg','data/files/store_2/goods_124/201312262112041198.jpg','1388034724','2','21');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('23','2','image/jpeg','3722','14.jpg','data/files/store_2/goods_6/201312262113269791.jpg','1388034806','2','22');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('24','2','image/jpeg','4298','15.jpg','data/files/store_2/goods_71/201312262114315846.jpg','1388034871','2','23');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('25','2','image/jpeg','4214','16.jpg','data/files/store_2/goods_141/201312262115417011.jpg','1388034941','2','24');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('26','2','image/jpeg','3175','17.jpg','data/files/store_2/goods_3/201312262116433996.jpg','1388035003','2','25');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('27','2','image/jpeg','3183','18.jpg','data/files/store_2/goods_86/201312262118061068.jpg','1388035086','2','26');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('28','2','image/jpeg','3738','20.jpg','data/files/store_2/goods_160/201312262119204138.jpg','1388035160','2','27');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('29','2','image/jpeg','22614','1.jpg','data/files/store_2/goods_92/201312262134527551.jpg','1388036092','2','28');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('30','2','image/jpeg','4651','2.jpg','data/files/store_2/goods_192/201312262136326387.jpg','1388036192','2','29');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('31','2','image/jpeg','5193','3.jpg','data/files/store_2/goods_111/201312262138315559.jpg','1388036311','2','30');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('32','2','image/jpeg','7813','4.jpg','data/files/store_2/goods_189/201312262139497936.jpg','1388036389','2','31');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('33','2','image/jpeg','7482','5.jpg','data/files/store_2/goods_62/201312262141025440.jpg','1388036462','2','32');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('34','2','image/jpeg','8243','6.jpg','data/files/store_2/goods_125/201312262142056946.jpg','1388036525','2','33');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('35','2','image/jpeg','3963','7.jpg','data/files/store_2/goods_185/201312262143054186.jpg','1388036585','2','34');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('36','2','image/jpeg','5256','8.jpg','data/files/store_2/goods_42/201312262144021189.jpg','1388036642','2','35');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('37','2','image/jpeg','6068','9.jpg','data/files/store_2/goods_113/201312262145134866.jpg','1388036713','2','36');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('38','2','image/jpeg','8551','10.jpg','data/files/store_2/goods_7/201312262146474624.jpg','1388036807','2','37');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('39','2','image/jpeg','7321','11.jpg','data/files/store_2/goods_80/201312262148001815.jpg','1388036880','2','38');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('40','2','image/jpeg','7458','12.jpg','data/files/store_2/goods_139/201312262148598688.jpg','1388036939','2','39');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('41','2','image/jpeg','6194','1.jpg','data/files/store_2/goods_95/201312262151359791.jpg','1388037095','2','40');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('42','2','image/jpeg','6490','2.jpg','data/files/store_2/goods_130/201312262152104798.jpg','1388037130','2','41');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('43','2','image/jpeg','5413','10.jpg','data/files/store_2/goods_47/201312262154079508.jpg','1388037247','2','42');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('44','2','image/jpeg','3838','9.jpg','data/files/store_2/goods_93/201312262154537504.jpg','1388037293','2','43');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('45','2','image/jpeg','6404','8.jpg','data/files/store_2/goods_144/201312262155447040.jpg','1388037344','2','44');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('46','2','image/jpeg','4834','7.jpg','data/files/store_2/goods_178/201312262156186146.jpg','1388037378','2','45');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('47','2','image/jpeg','3554','6.jpg','data/files/store_2/goods_11/201312262156516537.jpg','1388037411','2','46');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('48','2','image/jpeg','4718','5.jpg','data/files/store_2/goods_76/201312262157569987.jpg','1388037476','2','47');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('49','2','image/jpeg','7169','4.jpg','data/files/store_2/goods_111/201312262158319438.jpg','1388037511','2','48');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('50','2','image/jpeg','7562','3.jpg','data/files/store_2/goods_162/201312262159227323.jpg','1388037562','2','49');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('51','2','image/jpeg','3459','1.jpg','data/files/store_2/goods_127/201312262205276887.jpg','1388037927','2','50');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('52','2','image/jpeg','4313','2.jpg','data/files/store_2/goods_173/201312262206139520.jpg','1388037973','2','51');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('53','2','image/jpeg','5663','10.jpg','data/files/store_2/goods_72/201312262207528762.jpg','1388038072','2','52');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('54','2','image/jpeg','3133','8.jpg','data/files/store_2/goods_102/201312262208227300.jpg','1388038102','2','53');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('55','2','image/jpeg','4162','7.jpg','data/files/store_2/goods_135/201312262208557042.jpg','1388038135','2','54');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('56','2','image/jpeg','4026','6.jpg','data/files/store_2/goods_176/201312262209361435.jpg','1388038176','2','55');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('57','2','image/jpeg','3616','5.jpg','data/files/store_2/goods_16/201312262210162177.jpg','1388038216','2','56');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('58','2','image/jpeg','3215','4.jpg','data/files/store_2/goods_57/201312262210575290.jpg','1388038257','2','57');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('59','2','image/jpeg','4460','3.jpg','data/files/store_2/goods_106/201312262211467126.jpg','1388038306','2','58');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('60','2','image/jpeg','4313','2.jpg','data/files/store_2/goods_152/201312262212327144.jpg','1388038352','2','59');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('61','2','image/jpeg','2805','13.jpg','data/files/store_2/goods_90/201312262218109004.jpg','1388038690','2','60');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('62','2','image/jpeg','3275','12.jpg','data/files/store_2/goods_114/201312262218342575.jpg','1388038714','2','61');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('63','2','image/jpeg','3669','11.jpg','data/files/store_2/goods_153/201312262219138421.jpg','1388038753','2','62');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('64','2','image/jpeg','4071','10.jpg','data/files/store_2/goods_6/201312262220067431.jpg','1388038806','2','63');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('65','2','image/jpeg','5055','9.jpg','data/files/store_2/goods_41/201312262220415407.jpg','1388038841','2','64');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('66','2','image/jpeg','5600','8.jpg','data/files/store_2/goods_143/201312262222237668.jpg','1388038943','2','65');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('67','2','image/jpeg','6940','7.jpg','data/files/store_2/goods_186/201312262223061143.jpg','1388038986','2','66');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('68','2','image/jpeg','2975','4.jpg','data/files/store_2/goods_26/201312262223464846.jpg','1388039026','2','67');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('70','2','image/jpeg','7663','2.jpg','data/files/store_2/goods_91/201312262224518849.jpg','1388039091','2','68');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('71','2','image/jpeg','20600','1.jpg','data/files/store_2/goods_131/201312262225311490.jpg','1388039131','2','69');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('72','2','image/jpeg','5494','14.jpg','data/files/store_2/goods_195/201312262233156335.jpg','1388039595','2','70');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('73','2','image/jpeg','4568','13.jpg','data/files/store_2/goods_44/201312262234045839.jpg','1388039644','2','71');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('74','2','image/jpeg','4815','15.jpg','data/files/store_2/goods_113/201312262235137180.jpg','1388039713','2','72');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('75','2','image/jpeg','7724','12.jpg','data/files/store_2/goods_142/201312262235429182.jpg','1388039742','2','73');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('76','2','image/jpeg','5780','11.jpg','data/files/store_2/goods_189/201312262236298305.jpg','1388039789','2','74');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('77','2','image/jpeg','4531','10.jpg','data/files/store_2/goods_38/201312262237189780.jpg','1388039838','2','75');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('78','2','image/jpeg','5618','9.jpg','data/files/store_2/goods_98/201312262238182827.jpg','1388039898','2','76');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('79','2','image/jpeg','5837','8.jpg','data/files/store_2/goods_179/201312262239393163.jpg','1388039979','2','77');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('80','2','image/jpeg','6297','7.jpg','data/files/store_2/goods_54/201312262240547284.jpg','1388040054','2','78');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('81','2','image/jpeg','8033','5.jpg','data/files/store_2/goods_97/201312262241379970.jpg','1388040097','2','79');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('82','2','image/jpeg','18566','3.jpg','data/files/store_2/goods_156/201312262242365477.jpg','1388040156','2','80');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('83','2','image/jpeg','4161','1.jpg','data/files/store_2/goods_111/201312262251512164.jpg','1388040711','2','81');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('84','2','image/jpeg','3634','2.jpg','data/files/store_2/goods_9/201312262253293800.jpg','1388040809','2','82');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('85','2','image/jpeg','4660','3.jpg','data/files/store_2/goods_80/201312262254404774.jpg','1388040880','2','83');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('86','2','image/jpeg','3408','4.jpg','data/files/store_2/goods_155/201312262255558436.jpg','1388040955','2','84');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('87','2','image/jpeg','3648','6.jpg','data/files/store_2/goods_6/201312262256466045.jpg','1388041006','2','85');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('88','2','image/jpeg','5751','5.jpg','data/files/store_2/goods_49/201312262257294186.jpg','1388041049','2','86');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('89','2','image/jpeg','5358','7.jpg','data/files/store_2/goods_86/201312262258066317.jpg','1388041086','2','87');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('90','2','image/jpeg','3272','8.jpg','data/files/store_2/goods_124/201312262258442397.jpg','1388041124','2','88');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('91','2','image/jpeg','4355','9.jpg','data/files/store_2/goods_180/201312262259401924.jpg','1388041180','2','89');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('92','2','image/jpeg','5002','19.jpg','data/files/store_2/goods_60/201312262301006712.jpg','1388041260','2','90');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('93','2','image/jpeg','4741','11.jpg','data/files/store_2/goods_155/201312262302356953.jpg','1388041355','2','91');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('94','2','image/jpeg','3574','12.jpg','data/files/store_2/goods_3/201312262303231812.jpg','1388041403','2','92');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('95','2','image/jpeg','4538','13.jpg','data/files/store_2/goods_48/201312262304085587.jpg','1388041448','2','93');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('96','2','image/jpeg','4219','14.jpg','data/files/store_2/goods_93/201312262304537590.jpg','1388041493','2','94');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('97','2','image/jpeg','5472','15.jpg','data/files/store_2/goods_134/201312262305341913.jpg','1388041534','2','95');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('98','2','image/jpeg','4271','16.jpg','data/files/store_2/goods_170/201312262306104597.jpg','1388041570','2','96');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('99','2','image/jpeg','4039','17.jpg','data/files/store_2/goods_27/201312262307078496.jpg','1388041627','2','97');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('101','2','image/jpeg','4000','20.jpg','data/files/store_2/goods_107/201312262308271759.jpg','1388041707','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('102','2','image/jpeg','3351','18.jpg','data/files/store_2/goods_113/201312262308337745.jpg','1388041713','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('103','2','image/jpeg','4201','21.jpg','data/files/store_2/goods_154/201312262309145699.jpg','1388041754','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('107','2','image/jpeg','118578','3a1990acfc68aba230b72d5a6520136.jpeg','data/files/store_2/goods_156/201412231442366697.jpeg','1419288156','2','112');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('106','2','image/jpeg','94112','1f26f4a1dac07fcdcd5ae4b8acddc99.jpeg','data/files/store_2/goods_156/201412231442368870.jpeg','1419288156','2','115');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('108','2','image/jpeg','135268','3db5fcfee0b446069889afb28cb06e9.jpeg','data/files/store_2/goods_157/201412231442379228.jpeg','1419288157','2','112');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('109','2','image/jpeg','156258','3fb412ef6885375107eb087dfbac533.jpeg','data/files/store_2/goods_158/201412231442381696.jpeg','1419288158','2','105');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('110','2','image/jpeg','230260','4bb8c2b56457e092e699d6bd10fffcc.jpeg','data/files/store_2/goods_158/201412231442386714.jpeg','1419288158','2','113');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('111','2','image/jpeg','73701','4ed2ab6b50a581a06fe4877eb67b609.jpeg','data/files/store_2/goods_159/201412231442391438.jpeg','1419288159','2','114');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('112','2','image/jpeg','83956','6eec404c63b4a93a145d34d2dfd1598.jpeg','data/files/store_2/goods_160/201412231442408228.jpeg','1419288160','2','104');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('113','2','image/jpeg','174788','6f289a7e2eba3ac124aa0e1e6068056.jpeg','data/files/store_2/goods_160/201412231442409702.jpeg','1419288160','2','108');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('114','2','image/jpeg','124849','8a31f7eff056ea36557b8d46b567ca1.jpeg','data/files/store_2/goods_161/201412231442415044.jpeg','1419288161','2','105');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('115','2','image/jpeg','178983','8abeaa88e127802563af43e29b7aa14.jpeg','data/files/store_2/goods_162/201412231442429934.jpeg','1419288162','2','116');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('116','2','image/jpeg','288953','8e29c2779ad648fee7ef2922cc29aec.jpeg','data/files/store_2/goods_162/201412231442436049.jpeg','1419288163','2','113');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('117','2','image/jpeg','128168','9bd74cab85f5ff4d8d8e04dff7c4828.jpeg','data/files/store_2/goods_163/201412231442434682.jpeg','1419288163','2','101');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('118','2','image/jpeg','125629','10e523dd4785f33de5076c4d920dcc2.jpeg','data/files/store_2/goods_164/201412231442443839.jpeg','1419288164','2','107');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('119','2','image/jpeg','108673','11a8e47ac7b32dbd9c88f675d63d3b1.jpeg','data/files/store_2/goods_164/201412231442448485.jpeg','1419288164','2','100');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('120','2','image/jpeg','164524','17e0b275adb80f1978b6cef15966c13.jpeg','data/files/store_2/goods_165/201412231442452740.jpeg','1419288165','2','116');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('121','2','image/jpeg','54537','28ceeb0d82d4ae523069da3c09fb926.jpeg','data/files/store_2/goods_166/201412231442468363.jpeg','1419288166','2','114');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('122','2','image/jpeg','94783','31ffd7b67c97d8f78d15cdeec273ba5.jpeg','data/files/store_2/goods_166/201412231442462245.jpeg','1419288166','2','104');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('123','2','image/jpeg','132436','44ec8559a5591b8f166e9b16653e36d.jpeg','data/files/store_2/goods_167/201412231442479494.jpeg','1419288167','2','115');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('124','2','image/jpeg','104091','62d9a569f65b1fddf02099f24a134a9.jpeg','data/files/store_2/goods_168/201412231442481783.jpeg','1419288168','2','104');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('125','2','image/jpeg','243219','159ee9e9f4e65bd57bebe6997dbf2ff.jpeg','data/files/store_2/goods_168/201412231442482790.jpeg','1419288168','2','110');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('126','2','image/jpeg','160092','460e5d1ff276c94605799af64d34a37.jpeg','data/files/store_2/goods_169/201412231442499694.jpeg','1419288169','2','106');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('127','2','image/jpeg','39399','760c1481b43a2380e75f0ad3252c4ac.jpeg','data/files/store_2/goods_169/201412231442502821.jpeg','1419288170','2','109');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('128','2','image/jpeg','172913','884f92d82a75e3b6f64184e7429b73c.jpeg','data/files/store_2/goods_170/201412231442502861.jpeg','1419288170','2','116');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('129','2','image/jpeg','40766','887ce7dfdd44d0058e782e454c75165.jpeg','data/files/store_2/goods_171/201412231442515421.jpeg','1419288171','2','109');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('130','2','image/jpeg','119099','1660f6ae669b2657745efa9337e8386.jpeg','data/files/store_2/goods_172/201412231442521904.jpeg','1419288172','2','106');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('131','2','image/jpeg','139781','4404bc564a45ac739af8e01b308b830.jpeg','data/files/store_2/goods_172/201412231442524989.jpeg','1419288172','2','101');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('132','2','image/jpeg','24247','6694de4a9581ff24400f38a82790d4b.jpeg','data/files/store_2/goods_173/201412231442533148.jpeg','1419288173','2','103');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('133','2','image/jpeg','289115','8820c181ccf840080d0f41de17235fb.jpeg','data/files/store_2/goods_173/201412231442532327.jpeg','1419288173','2','111');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('134','2','image/jpeg','310395','8884c42052f88d8325a4dc5af74e4e6.jpeg','data/files/store_2/goods_174/201412231442548787.jpeg','1419288174','2','110');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('135','2','image/jpeg','158094','67630dbfb199a8cabe8d6bbd9f8e59d.jpeg','data/files/store_2/goods_175/201412231442552495.jpeg','1419288175','2','112');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('136','2','image/jpeg','115849','90697a8e7752f40f473b52e60407c98.jpeg','data/files/store_2/goods_176/201412231442562379.jpeg','1419288176','2','101');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('137','2','image/jpeg','79970','62616584178de334cae5ead42d31ff6.jpeg','data/files/store_2/goods_176/201412231442566236.jpeg','1419288176','2','115');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('138','2','image/jpeg','125695','466262961781af919f42c2a646bf2dd.jpeg','data/files/store_2/goods_177/201412231442573059.jpeg','1419288177','2','108');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('139','2','image/jpeg','160007','a89a8d41cd0a11a2cfbe736370d55b2.jpeg','data/files/store_2/goods_177/201412231442574317.jpeg','1419288177','2','105');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('140','2','image/jpeg','160143','a687601f6d3d2269ca697b477a58a41.jpeg','data/files/store_2/goods_178/201412231442583885.jpeg','1419288178','2','102');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('141','2','image/jpeg','37674','b374888337838b2ec28bdc3a5570d75.jpeg','data/files/store_2/goods_179/201412231442592293.jpeg','1419288179','2','103');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('142','2','image/jpeg','183849','bde3c3b07fc5e1edcf708abcdcad0d5.jpeg','data/files/store_2/goods_179/201412231442595441.jpeg','1419288179','2','106');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('143','2','image/jpeg','140050','cd4a64ae58f93a4e68813aee4553eb6.jpeg','data/files/store_2/goods_180/201412231443007160.jpeg','1419288180','2','107');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('144','2','image/jpeg','147544','cda429d11e899f726e198fc12165d88.jpeg','data/files/store_2/goods_181/201412231443019225.jpeg','1419288181','2','102');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('145','2','image/jpeg','121817','d60a9013330c83308e025c75d3aa5fe.jpeg','data/files/store_2/goods_181/201412231443011303.jpeg','1419288181','2','100');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('146','2','image/jpeg','314244','d77aafec07e3e93286753b9aea4fd96.jpeg','data/files/store_2/goods_182/201412231443022756.jpeg','1419288182','2','110');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('147','2','image/jpeg','88287','d31706ef4995f9a841ee9f2db999d75.jpeg','data/files/store_2/goods_183/201412231443036489.jpeg','1419288183','2','108');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('148','2','image/jpeg','79122','de4ecb8e75dd3a2e920ffcd5e3b71ab.jpeg','data/files/store_2/goods_184/201412231443047733.jpeg','1419288184','2','102');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('149','2','image/jpeg','150989','e5d9a3c3784b1f331017408dfea0dc4.jpeg','data/files/store_2/goods_184/201412231443046230.jpeg','1419288184','2','100');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('150','2','image/jpeg','36068','e9b3fa4317b08b48f8163f9dbe84bdc.jpeg','data/files/store_2/goods_185/201412231443056225.jpeg','1419288185','2','103');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('151','2','image/jpeg','369253','e87edb052ff7e918625cd68f804ab0a.jpeg','data/files/store_2/goods_185/201412231443057327.jpeg','1419288185','2','113');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('152','2','image/jpeg','287597','ea22390d756be34058082c6d5ccc1ba.jpeg','data/files/store_2/goods_186/201412231443067701.jpeg','1419288186','2','111');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('153','2','image/jpeg','306010','eb84d1a6c248e6ea488b5fe2776b3a6.jpeg','data/files/store_2/goods_187/201412231443077777.jpeg','1419288187','2','111');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('154','2','image/jpeg','45354','f2dbfa75116a4706d685a1de0e61688.jpeg','data/files/store_2/goods_187/201412231443086049.jpeg','1419288188','2','114');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('155','2','image/jpeg','130855','fa1bf7f4aaaa701be1c3956eecbf954.jpeg','data/files/store_2/goods_188/201412231443084479.jpeg','1419288188','2','107');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('156','2','image/jpeg','41382','fbd3c21ad94aca503833f6a6de585f8.jpeg','data/files/store_2/goods_189/201412231443097557.jpeg','1419288189','2','109');
DROP TABLE IF EXISTS ecm_user_coupon;
CREATE TABLE ecm_user_coupon (
  user_id int(10) unsigned NOT NULL,
  coupon_sn varchar(20) NOT NULL,
  PRIMARY KEY (user_id,coupon_sn)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_user_priv;
CREATE TABLE ecm_user_priv (
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  store_id int(10) unsigned NOT NULL DEFAULT '0',
  privs text NOT NULL,
  PRIMARY KEY (user_id,store_id)
) TYPE=MyISAM;
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('1','0','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('2','2','all');
DROP TABLE IF EXISTS ecm_wxconfig;
CREATE TABLE ecm_wxconfig (
  w_id int(11) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  url varchar(255) NOT NULL,
  token varchar(255) NOT NULL,
  appid varchar(255) DEFAULT NULL,
  appsecret varchar(255) DEFAULT NULL,
  PRIMARY KEY (w_id)
) TYPE=MyISAM;
INSERT INTO ecm_wxconfig ( `w_id`, `user_id`, `url`, `token`, `appid`, `appsecret` ) VALUES  ('1','2','http://192.168.1.101/all_ecmall/test/weixin/index.php?app=weixin&id=2','R58XBq30',null,null);
DROP TABLE IF EXISTS ecm_wxfile;
CREATE TABLE ecm_wxfile (
  file_id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  file_type varchar(60) NOT NULL,
  file_size int(10) NOT NULL DEFAULT '0',
  file_name varchar(255) NOT NULL,
  file_path varchar(255) NOT NULL,
  PRIMARY KEY (file_id)
) TYPE=MyISAM;
INSERT INTO ecm_wxfile ( `file_id`, `user_id`, `file_type`, `file_size`, `file_name`, `file_path` ) VALUES  ('1','2','image/jpeg','81999','slider.jpg','data/files/mall/weixin/201406260253518453.jpg');
INSERT INTO ecm_wxfile ( `file_id`, `user_id`, `file_type`, `file_size`, `file_name`, `file_path` ) VALUES  ('2','2','image/jpeg','2895','icon.jpg','data/files/mall/weixin/201406260255406158.jpg');
INSERT INTO ecm_wxfile ( `file_id`, `user_id`, `file_type`, `file_size`, `file_name`, `file_path` ) VALUES  ('3','2','image/jpeg','224818','pic_slides_wap_1.jpg','data/files/mall/weixin/201412221031006393.jpg');
DROP TABLE IF EXISTS ecm_wxkeyword;
CREATE TABLE ecm_wxkeyword (
  kid int(11) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  kename varchar(300) DEFAULT NULL,
  kecontent varchar(500) DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1:文本 2：图文',
  kyword varchar(255) DEFAULT NULL,
  titles varchar(1000) DEFAULT NULL,
  imageinfo varchar(1000) DEFAULT NULL,
  linkinfo varchar(1000) DEFAULT NULL,
  ismess tinyint(1) DEFAULT NULL,
  isfollow tinyint(1) DEFAULT NULL,
  iskey tinyint(1) DEFAULT NULL,
  PRIMARY KEY (kid)
) TYPE=MyISAM;
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('1','2',null,'','2',null,'a:1:{i:0;s:33:\"欢迎来到阿哩木微信商城\";}','a:1:{i:0;s:70:\"http://ecmall.jyds95.com/data/files/mall/weixin/201412221031006393.jpg\";}','a:1:{i:0;s:49:\"http://ecmall.jyds95.com/index.php?app=store&id=2\";}',null,'1',null);
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('5','2','店铺','','2','店铺','a:1:{i:0;s:33:\"欢迎来到阿哩木微信商城\";}','a:1:{i:0;s:70:\"http://ecmall.jyds95.com/data/files/mall/weixin/201412221031006393.jpg\";}','a:1:{i:0;s:49:\"http://ecmall.jyds95.com/index.php?app=store&id=2\";}',null,null,'1');
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('4','2',null,'','2',null,'a:1:{i:0;s:33:\"欢迎来到阿哩木微信商城\";}','a:1:{i:0;s:70:\"http://ecmall.jyds95.com/data/files/mall/weixin/201412221031006393.jpg\";}','a:1:{i:0;s:49:\"http://ecmall.jyds95.com/index.php?app=store&id=2\";}','1',null,null);
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('6','2','商城','','2','商城','a:1:{i:0;s:21:\"阿哩木微信商城\";}','a:1:{i:0;s:70:\"http://ecmall.jyds95.com/data/files/mall/weixin/201412221031006393.jpg\";}','a:1:{i:0;s:24:\"http://ecmall.jyds95.com\";}',null,null,'1');
DROP TABLE IF EXISTS ecm_wxmenu;
CREATE TABLE ecm_wxmenu (
  id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  tags varchar(50) DEFAULT NULL,
  pid smallint(4) unsigned NOT NULL DEFAULT '0',
  spid varchar(50) DEFAULT NULL,
  add_time int(10) NOT NULL DEFAULT '0',
  items int(10) unsigned NOT NULL DEFAULT '0',
  likes varchar(100) DEFAULT NULL,
  weixin_type tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:click 1:viwe',
  ordid tinyint(3) unsigned NOT NULL DEFAULT '255',
  weixin_status tinyint(1) NOT NULL DEFAULT '0',
  weixin_keyword varchar(255) DEFAULT NULL COMMENT '关键词',
  weixin_key varchar(255) DEFAULT NULL COMMENT 'key值',
  PRIMARY KEY (id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_wxrelation;
CREATE TABLE ecm_wxrelation (
  relation_id int(11) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned NOT NULL,
  user_openid varchar(65) NOT NULL,
  store_id int(10) unsigned NOT NULL,
  store_openid varchar(65) NOT NULL,
  creat_time int(10) unsigned NOT NULL DEFAULT '0',
  update_time int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (relation_id)
) TYPE=MyISAM;
INSERT INTO ecm_wxrelation ( `relation_id`, `user_id`, `user_openid`, `store_id`, `store_openid`, `creat_time`, `update_time` ) VALUES  ('1','3','o3FGxjmOSHUwwPaXPa-EsbnX7PMM','2','gh_efff069fcce6','0','0');
-- END ECMall 2.0 SQL Dump Program 