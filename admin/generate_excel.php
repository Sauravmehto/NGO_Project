<?php
require 'db_connect.php';
require 'PhpSpreadsheet-X.Y.Z/src/Bootstrap.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// ... (Your existing code for generating the Excel file)

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
$sheet->setTitle('Project Progress');

// ... (Write headers and loop through data to populate the sheet)

$writer = new Xlsx($spreadsheet);
$filename = uniqid('project_progress_', true) . '.xlsx';
$outputFilePath = 'path/to/save/' . $filename;

$writer->save($outputFilePath);

echo $filename;
?>
