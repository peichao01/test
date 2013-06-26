<?php
/* @var $this FileController */
/* @var $data File */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('Package')); ?>:</b>
	<?php echo CHtml::encode($data->Package); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('PiiFile')); ?>:</b>
	<?php echo CHtml::encode($data->PiiFile); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('FileInServer')); ?>:</b>
	<?php echo CHtml::encode($data->FileInServer); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('Comment')); ?>:</b>
	<?php echo CHtml::encode($data->Comment); ?>
	<br />


</div>