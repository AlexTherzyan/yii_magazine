<?php
/**
 * Created by PhpStorm.
 * User: a_terzjan
 * Date: 19.07.2018
 * Time: 15:21
 */

namespace app\models;
use yii\db\ActiveRecord;

class Product extends  ActiveRecord
{
    public static function tableName()
    {
        return 'product';
    }

    public function getCategory()
    {
        return $this->hasMany(Product::className(), ['category_id' =>'id']);
    }
}