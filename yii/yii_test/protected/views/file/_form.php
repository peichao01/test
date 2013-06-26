<?php
/* @var $this FileController */
/* @var $model File */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'file-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'Package'); ?>
		<?php echo $form->textField($model,'Package',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'Package'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'PiiFile'); ?>
		<?php echo $form->textField($model,'PiiFile',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'PiiFile'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'FileInServer'); ?>
		<?php echo $form->textField($model,'FileInServer',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'FileInServer'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Comment'); ?>
		<?php echo $form->textField($model,'Comment',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'Comment'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->