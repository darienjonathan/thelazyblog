#API

##作品を取得

###URL
  /api/v1/pictures/index.json?comment=:comment&lang=:lang

###METHOD
  GET

###URL Params
  * Optional:
    * comment=[tinyint]. 例えば: comment=1/comment=0
      * もし、commentパラメータはなかったら、comment=0になります
    * lang=[string]. 例えば: lang=jp/lang=en<br>もし、langパラメータは：
      * jpじゃありません
      * なし<br>
      lang=enになります

###Success Response
  Code: 200

###Content:
```
{
  "carousel":
  [
    {
      "id":1,
      "title_jp=":"ブッククリエーター・カー",
      "concept_jp=":"未来では、人がクルマを運転するとき、クルマが同時に木から葉っぱを集めます。集められた葉っぱは車内の特別なプログラムで処理されて、いろんなジャンルの本になります。それらの本は子供たちが読めるように学校の図書館に届けられます。",
      "age=":7,
      "image=":"/gallery_image/1.jpg",
      "my_comment=":"1-Canada-1",
      "country_of_my_comment=":"CA"
    },
      {
      "id":5,
      "title_jp=":"エコドライブ",
      "concept_jp=":"私の夢のクルマは大変な公害に苦しむ人々を助けます。汚染された土、空気、水を浄化します。こうして、より多くの人々と動物が幸せに長生きすることができます。",
      "age=":10,
      "image=":"/gallery_image/5.jpg",
      "my_comment=":"5-Canada-1",
      "country_of_my_comment=":"CA"
    },
  ]
}
```
###Sample Call
  curl localhost:3000/api/v1/pictures/index.json?comment=1&lang=en


##コメントの保存

###URL
  /api/v1/comments

###METHOD
  POST

###Data Params
```  
  {
    comment: 
    {
      id: [integer]
      country_id: [string] #仕組み: [country.id:country.iso]
      original_text: [string]
    }
  }

  例えば：
  {
    comment: 
    {
      id: 1
      country_id: "81:JP"
      original_text: "天才！"
    }
  }  
```

###Success Response
  Code: 200
