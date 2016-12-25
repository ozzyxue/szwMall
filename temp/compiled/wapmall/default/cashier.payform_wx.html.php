<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <?php echo $this->_var['page_seo']; ?>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7 charset=<?php echo $this->_var['charset']; ?>" />
        <meta http-equiv="Content-Type" content="text/html; charset=<?php echo $this->_var['charset']; ?>" />
        <link href="<?php echo $this->res_base . "/" . 'css/common.css'; ?>" type="text/css" rel="stylesheet" />
    </head>

    <body>
        <style>
            .w_info{background:#f3f3f3; padding:15px 10px; border-bottom:#eee solid 1px; margin-top:50px;}
            .w_info h2{padding-bottom:5px;}
            .w_tit{color:#555; font-weight:bold; padding:0 10px; font-size:16px;}
            .w_tit i{color:#777; font-weight:normal;font-size:14px; font-style:normal; margin-left:5px;}
            .w_info span{display:block; border-top:#ddd solid 1px;padding-top:5px;}
            .w_sbtn{width:100%; padding:10px 0;}
            .info_table textarea{border:#bbb solid 1px; width:100%;}
            .info_table td{padding:5px 10px;}
        </style>
        <div class="w320">
            <div class="w_info">
                <div class="fixed">
                    
                    <div class="header header2">
                        <a href="<?php echo url('app=buyer_order&act=index'); ?>" class="back2_pre"></a>
                        微信支付
                    </div>  
                </div>
                <h2>微信支付</h2>
                <?php echo $this->_var['payform']; ?>
            </div>

            
        </div>
    </body>
</html>

