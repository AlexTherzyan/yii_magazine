<?php
/**
 * Created by PhpStorm.
 * User: a_terzjan
 * Date: 19.07.2018
 * Time: 15:15
 */

namespace app\models;

use yii\db\ActiveRecord;

class Category extends ActiveRecord
{

    public static function tableName()
    {
      return 'category';
    }

    public function getProducts()
    {
        return $this->hasOne(Product::className(), ['id' =>'category_id']);
    }

}