<?php
/**
 * Created by PhpStorm.
 * User: Alex
 * Date: 19.07.2018
 * Time: 20:44
 */

namespace app\controllers;
use app\models\Category;
use app\models\Product;
use \yii;

class CategoryController extends AppController
{

    public function actionIndex()
    {

        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('KB_DISPLAY');

        return $this->render('index', compact('hits'));
    }

    public function actionView($id)
    {
//        $id = Yii::$app->request->get('id');

//        $products = Product::find()->where(['category_id' =>$id])->all();

        $category = Category::findOne($id);
        //-404
        if (empty($category))
        {
            throw new \yii\web\HttpException(404, 'Такой категории не существует');
        }



        //---pagination
        $query = Product::find()->where(['category_id' =>$id]);
        $pages = new yii\data\Pagination(['totalCount' => $query->count(), 'pageSize' => 3, 'forcePageParam' => false, 'pageSizeParam' => false]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();

        //----title

        $this->setMeta(' KB_DISPLAY | ' . $category->title, $category->keywords,$category->description);

        return $this->render('view', compact('products','category', 'pages'));
    }


    public function actionSearch(){

        $q = trim(Yii::$app->request->get('q'));
        if (!$q)
            return $this->render('search');


        $this->setMeta(' KB_DISPLAY | ' . $q );
        $query = Product::find()->where(['like', 'title' ,$q]);
        $pages = new yii\data\Pagination(['totalCount' => $query->count(), 'pageSize' => 3, 'forcePageParam' => false, 'pageSizeParam' => false]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        return $this->render('search',compact('products', 'pages', 'q'));
    }



}




























