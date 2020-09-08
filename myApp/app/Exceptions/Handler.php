<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Throwable  $exception
     * @return void
     *
     * @throws \Exception
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $exception
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws \Throwable
     */
    public function render($request, Throwable $exception)
    {
        if($exception instanceof \Illuminate\Auth\AuthenticationException)
        {
            return response(["status" => 'error', "message"=> 'Unauthenticated'], 422);    
        }

        if ($exception instanceof \Illuminate\Session\TokenMismatchException) { 
            return response()->view('errors.tokenMisMatch', ['exception'=>$exception]);
        }

        if ($exception instanceof \Symfony\Component\HttpKernel\Exception\HttpException) { 
            return response(['status'=> 'error', 'message' => '404 Not Found'], 400 );
        }
        if($exception instanceof \Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException){
            return abort('404');
        }      

        if ($exception instanceof \Illuminate\Validation\ValidationException) {            
            return response(["status" => 'error', "message"=> 'The given data was invalid.', 'errors' => $exception->errors()], 422); 
        }
        return parent::render($request, $exception);
    }
}
