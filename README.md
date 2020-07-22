# terraform-aws-setup
AWSアカウントの実運用に必要な初期構成

## 構成
* AWSアカウントエイリアス
* AWSアカウントパスワードポリシー
* AWS SecurityHub
* AWS GuardDuty
* AWS Config
* AWS CloudTrail
* AWS ResourceGroup

## 動かすのに必要なもの

* Terraform 0.12.28

## セットアップ手順

~/.aws/credentials

```sh
[terraform-aws-iac]
region = ap-northeast-1
aws_access_key_id = AWS_ACCESS_KEY_ID
aws_secret_access_key = AWS_SECRET_ACCESS_KEY
```

```sh
cd terraform
terraform init
```

## 実行方法

```sh
terraform plan
terraform apply
```

## コードフォーマット

```sh
terraform fmt
```

### ドライラン

```sh
terraform fmt -check
echo $? # 0:差分なし or 3:差分あり
```

### 差分出力

```sh
terraform fmt -diff -check # -checkを付けないとフォーマットされるので注意
```

### 再帰的にフォーマット

```sh
cd terraform
terraform fmt -recursive
```

## バリデーション

```sh
terraform validate
```
