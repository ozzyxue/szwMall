<?php echo $this->fetch('header.html'); ?>


<?php $_from = $this->_var['gcategorys']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'gcategory');if (count($_from)):
    foreach ($_from AS $this->_var['gcategory']):
?>
<div class="radius">
    <h3><a href='<?php echo url('app=search&cate_id=' . $this->_var['gcategory']['id']. ''); ?>'><?php echo htmlspecialchars($this->_var['gcategory']['value']); ?></a></h3>
    <?php $_from = $this->_var['gcategory']['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');if (count($_from)):
    foreach ($_from AS $this->_var['child']):
?>
    <a href='<?php echo url('app=search&cate_id=' . $this->_var['child']['id']. ''); ?>' style="display: inline-table;width: 30%;padding: 10px 0;text-align: center;color: #546280;font-size: .75em;"><?php echo htmlspecialchars($this->_var['child']['value']); ?></a> 
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
<?php endforeach; else: ?>
<div class="radius">
    暂无分类
</div>
<?php endif; unset($_from); ?><?php $this->pop_vars();; ?>


<?php echo $this->fetch('footer.html'); ?>

</div>
</body>
</html>




