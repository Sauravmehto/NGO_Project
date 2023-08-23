<?php
if (isset($_GET['file'])) {
    $file = 'path/to/save/' . $_GET['file'];

    if (file_exists($file)) {
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="project_progress.xlsx"');
        header('Cache-Control: max-age=0');

        readfile($file);
        unlink($file);
    } else {
        echo "File not found.";
    }
} else {
    echo "Invalid request.";
}
?>
