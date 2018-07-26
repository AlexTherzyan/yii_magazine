<?php
/**
 * Created by PhpStorm.
 * User: a_terzjan
 * Date: 20.07.2018
 * Time: 10:29
 */

namespace app\controllers;


use yii\web\Controller;

class AppController extends Controller
{

    protected function setMeta($title = null, $keywords = null, $description = null)
    {
        $this->view->title = $title;
        $this->view->registerMetaTag(
            [
                'name' => 'keywords',
                'content' => "$keywords",

            ]);

        $this->view->registerMetaTag(
            [
                'name' => 'description',
                'content' => "$description",

            ]);


    }

}