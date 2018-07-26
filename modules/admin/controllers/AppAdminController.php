<?php
/**
 * Created by PhpStorm.
 * User: a_terzjan
 * Date: 23.07.2018
 * Time: 15:10
 */

namespace app\modules\admin\controllers;


use yii\filters\AccessControl;
use yii\web\Controller;

class AppAdminController extends Controller
{

    //поведение adminki
    public  function behaviors()
    {



        return [
            'access' => [
                'class' => AccessControl::className(),

                'rules' => [

                    // allow authenticated users
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    // everything else is denied
                ],
            ],
        ];


    }

}