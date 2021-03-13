## VBACを使用してVBAを管理する

エクセル自体はバイナリファイルなのでdiffが取れない  
そこでVBACを使用してVBAのソースコード部分だけを抜きとって管理を行う。  
またインポートもできるので、自分の好きなテキストエディタを使用して反映させることも可能です。  

VBAC本体はGitHubに公開されています。  
https://github.com/vbaidiot/ariawase

構成は以下のようになります
```
 親ディレクトリ
  ├── .git
  │   └── ...       # gitでバージョン管理  
  ├── ariawase
  │   └── ...       # VBAC本体
  ├── bin
  │   └── ...       # ここにエクセルファイルを置く
  ├── src 
  │   └── ...       # ここにソースコードが保存させる
  ├── .gitattributes    # 改行コードの指定
  ├── .gitignore    # gitで管理したくないファイルを指定する
  ├── .gitmodules    # ariawaseの参照設定
  ├── CHANGELOG.md     # ユーザ向けの更新履歴を記載する
  ├── export.bat    # エクセルにあるソースコードをsrcフォルダにエクスポートする
  ├── import.bat    # srcフォルダにあるソースコードをエクセルにインポートする
  ├── README.md     # このファイル 
  └── workspace.code-workspace     # VScodeのワークスペース
```

**注意**  
これを使用する場合はマクロの設定の`VBAプロジェクト オブジェクト モデルへのアクセスを信頼する`にチェックをいれる必要があります。  
