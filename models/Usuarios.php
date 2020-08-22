<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "usuarios".
 *
 * @property int $id
 * @property string|null $nome
 * @property string|null $email
 * @property string|null $telefone
 * @property string|null $celular
 * @property string|null $foto
 * @property string|null $data_nascimento
 * @property string|null $estado_civil
 * @property int|null $status
 */
class Usuarios extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuarios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'status'], 'integer'],
            [['data_nascimento'], 'safe'],
            [['estado_civil'], 'string'],
            [['nome'], 'string', 'max' => 45],
            [['email'], 'string', 'max' => 130],
            [['telefone', 'celular'], 'string', 'max' => 15],
            [['foto'], 'string', 'max' => 100],
            [['email'], 'unique'],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'nome' => Yii::t('app', 'Nome'),
            'email' => Yii::t('app', 'Email'),
            'telefone' => Yii::t('app', 'Telefone'),
            'celular' => Yii::t('app', 'Celular'),
            'foto' => Yii::t('app', 'Foto'),
            'data_nascimento' => Yii::t('app', 'Data Nascimento'),
            'estado_civil' => Yii::t('app', 'Estado Civil'),
            'status' => Yii::t('app', 'Status'),
        ];
    }

    /**
     * {@inheritdoc}
     * @return \app\models\query\UsuariosQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\query\UsuariosQuery(get_called_class());
    }
}
