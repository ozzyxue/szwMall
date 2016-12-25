<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <?php echo $this->_var['page_seo']; ?>
        <link href="<?php echo $this->res_base . "/" . 'css/common.css'; ?>" type="text/css" rel="stylesheet" />
        <link href="<?php echo $this->res_base . "/" . 'css/user.css'; ?>" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="<?php echo $this->res_base . "/" . 'js/jquery-1.8.0.min.js'; ?>"></script>
    </head>
    <body class="gray" style="overflow-x:hidden;">
        <div class="w320">
            <div class="fixed">
                
                <div class="header header2">
                    <a href="<?php echo url('app=default'); ?>" class="back2_index"></a>
                    个人中心
                    <a href="<?php echo url('app=my_favorite'); ?>" class="bookmark"></a>
                </div>
            </div>
            
            <div class="user_header">
                <div class="user_photo">
                    <a href="<?php echo url('app=member'); ?>"><img src="<?php echo $this->res_base . "/" . 'images/user.jpg'; ?>" /></a>
                </div>
                <span class="user_name">
                    您好,欢迎<?php echo htmlspecialchars($this->_var['visitor']['user_name']); ?>。<a href="index.php?app=member&act=logout" style="color:#999;margin-left:5px;">退出</a>
                </span>
            </div>
            <style>
                .wapmember{margin:1%;padding: 10px;overflow: hidden;background: #fff;border-radius: 5px;box-shadow: rgba(0,0,0,0.3) 0 0 3px;margin-bottom: 10px;position: relative;}
                .wapmember a{padding: 5px 2%;margin: 10px 2% 0 0;width:96%;text-align: center;display: inline-block;cursor: pointer;}
            </style>
            <div class="wapmember" style="margin-top:50px;">
                <h2>买家中心</h2>
                <a class="white_btn" href="<?php echo url('app=cart'); ?>">我的购物车</a>
                <a class="white_btn" href="<?php echo url('app=my_favorite'); ?>">我的收藏</a>
                <a class="white_btn" href="<?php echo url('app=my_address'); ?>">收货地址</a>
                <a class="white_btn" href="<?php echo url('app=buyer_order'); ?>">我的订单</a>
            </div>
            <?php if ($this->_var['store']): ?>
            <div class="wapmember">
                <h2>卖家中心</h2>
                <a class="white_btn" href="<?php echo url('app=my_goods'); ?>">商品管理</a>
                <a class="white_btn" href="<?php echo url('app=seller_order'); ?>">订单管理</a>
                <a class="white_btn" href="<?php echo url('app=my_payment'); ?>">支付方式管理</a>
                <a class="white_btn" href="<?php echo url('app=my_shipping'); ?>">配送方式管理</a>
				<a class="white_btn" href="<?php echo url('app=store&id=' . $this->_var['store']['store_id']. ''); ?>">我的店铺</a>
            </div>
            <?php else: ?>
            <div class="wapmember">
                <a class="white_btn" href="<?php echo url('app=apply'); ?>">申请开店</a>
            </div>
            <?php endif; ?>
        </div>
        <?php echo $this->fetch('member.footer.html'); ?>
    </body>
</html>
