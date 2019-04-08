<?php

namespace App\Listerners;

use App\Events\DeleteEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class DeleteEventListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  DeleteEvent  $event
     * @return void
     */
    public function handle(DeleteEvent $event)
    {
        //
    }
}
