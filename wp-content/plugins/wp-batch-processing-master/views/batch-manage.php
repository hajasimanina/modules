<?php
/* @var mixed $id - The batch id */
$batch = WP_Batch_Processor::get_instance()->get_batch($id);
if(is_null($batch)) {
	echo 'Batch not found.';
	return;
}
$percentage = $batch->get_percentage();
?>

<h1><?php echo $batch->title; ?></a></h1>

<div class="batch-process">
	<div class="batch-process-main">
		<ul class="batch-process-stats">
			<li><strong>Total:</strong> <span id="batch-process-total"><?php echo $batch->get_items_count(); ?></span></li>
			<li><strong>Processed:</strong> <span id="batch-process-processed"><?php echo $batch->get_processed_count(); ?></span> <span id="batch-process-percentage">(<?php echo $percentage; ?>%)</span></li>
		</ul>
		<div class="batch-process-progress-bar">
			<?php
			$style = $percentage > 0 ? 'width:'.$percentage.'%' : '';
			?>
			<div class="batch-process-progress-bar-inner" style="<?php echo $style; ?>"></div>
		</div>
		<div class="batch-process-current-item">
            <?php echo apply_filters("message_batch_process_current_item", "",  $id);?>
		</div>
	</div>
	<div class="batch-process-actions">
		<?php if(!$batch->is_finished()): ?>
			<button class="button-primary" id="batch-process-start">Start</button>
			<button class="button" id="batch-process-stop">Stop</button>
		<?php else: ?>
			<button class="button-primary" id="batch-process-restart">Restart</button>
		<?php endif; ?>
	</div>
</div>

<div id="batch-errors" style="display: none;">
	<h3>List of errors</h3>
	<ol id="batch-errors-list">

	</ol>
</div>


<style type="text/css">
.batch-process-stats {
	text-align:center;
	list-style: none;
}
.batch-process-stats li {
	display: inline-block;
	min-width: 20%;
}
.batch-process-progress-bar-inner {
    position: absolute;
    background: #0073aa;
    width: 0;
    height: 100%;
    left: 0;
}
.batch-process-progress-bar {
    background: #f0f0f0;
    min-height: 20px;
    position: relative;
}
.batch-process-actions {
    padding: 10px;
    text-align:center;
}
.batch-process-current-item {
	text-align: center;
}
.batch-process-main {
    padding: 10px;
    border-bottom: 1px solid #f0f0f0;
}
.batch-process {
    width: 100%;
    background: #fff;
    margin-top: 15px;
}
.batch-process-current-item {
    padding-top: 5px;
    padding-bottom: 5px;
    min-height: 12px;
}
.batch-process-current-item{
    max-width: 100%;
    overflow: auto;
}
.batch-process-current-item table#result thead th{
    min-width: 100px;
}
.batch-process-current-item table#result{
    width: 100%;
    border-collapse: collapse;
    border: 2px solid #17938a;
}
.batch-process-current-item table#result thead{
    background-color: #f3ca29;
}
.batch-process-current-item table#result th, .batch-process-current-item table#result tr, .batch-process-current-item table#result td{
    border-collapse: collapse;
    border: 2px solid #17938a;
}

</style>