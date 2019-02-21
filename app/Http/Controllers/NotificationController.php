<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\NotificationResource;

class NotificationController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('jwt');
    }
    public function index(){

        return [
            'read' => NotificationResource::collection(\Auth::user()->readNotifications),
            'unread' => NotificationResource::collection(\Auth::user()->unreadNotifications)
        ];

    }

    public function markRead(Request $request){

        \Auth::user()->unreadNotifications()->find($request->id)->MarkAsRead();
    }
}
