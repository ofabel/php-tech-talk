<?php
$fiber = new Fiber(function () {
    try {
        $fp = popen('sleep 5 && date', 'r');

        stream_set_blocking($fp, false);

        do {
            Fiber::suspend();
        } while (!$char = fgetc($fp));

        return $char . fgets($fp);
    } finally {
        pclose($fp);
    }
});

$fiber->start();

for ($i = 1; !$fiber->isTerminated(); $i++) {
    echo $i . PHP_EOL;

    usleep(500);

    $fiber->resume();
}

echo $fiber->getReturn();
