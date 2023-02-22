<?php
class ErrorHandler{
    public static function handleException(Throwable $exception){
        http_response_code(500);

        echo json_encode(array(
            "message"=>$exception->getMessage(),
            "file"=>$exception->getFile(),
            "line"=>$exception->getLine(),
            "code"=>$exception->getCode()
        ));
    }
}
?>