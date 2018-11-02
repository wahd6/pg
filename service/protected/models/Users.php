<?php

/**
 * This is the model class for table "users".
 *
 * The followings are the available columns in table 'users':
 * @property integer $id
 * @property string $firstName
 * @property string $lastName
 * @property string $userName
 * @property string $email
 * @property string $password
 * @property string $activationCode
 * @property string $createdOn
 * @property string $updatedOn
 * @property integer $status
 * @property string $activationCodeAddedDate
 */
class Users extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'users';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('firstName, lastName, userName, email, password, activationCode, createdOn, status', 'required'),
			array('status', 'numerical', 'integerOnly'=>true),
			array('firstName, lastName, userName, activationCode', 'length', 'max'=>45),
			array('email', 'length', 'max'=>50),
			array('password', 'length', 'max'=>255),
			array('updatedOn, activationCodeAddedDate', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, firstName, lastName, userName, email, password, activationCode, createdOn, updatedOn, status, activationCodeAddedDate', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'firstName' => 'First Name',
			'lastName' => 'Last Name',
			'userName' => 'User Name',
			'email' => 'Email',
			'password' => 'Password',
			'activationCode' => 'Activation Code',
			'createdOn' => 'Created On',
			'updatedOn' => 'Updated On',
			'status' => 'Status',
			'activationCodeAddedDate' => 'Activation Code Added Date',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('firstName',$this->firstName,true);
		$criteria->compare('lastName',$this->lastName,true);
		$criteria->compare('userName',$this->userName,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('activationCode',$this->activationCode,true);
		$criteria->compare('createdOn',$this->createdOn,true);
		$criteria->compare('updatedOn',$this->updatedOn,true);
		$criteria->compare('status',$this->status);
		$criteria->compare('activationCodeAddedDate',$this->activationCodeAddedDate,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Users the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
