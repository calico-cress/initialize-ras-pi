# initialize-ras-pi

ラズパイに ubuntu-server（21.10） を構築する時のスクリプト

## 使い方

1. `ubuntu-server 64bit` のイメージを準備する
1. 以下は手動で `cloud-init` の設定ファイルを編集する場合
   1. `cloud-init` の `user-data` を以下のとおり編集

      ```yaml
      # On first boot, set the (default) ubuntu user's password to "ubuntu" and
      # expire user passwords
      chpasswd:
        expire: true
        list:
        - aider:ubuntu

      system_info:
        default_user:
          name: aider
      ```

   1. `cloud-init` の `network-config` を以下のとおり編集

      ```yaml
      wifis:
        wlan0:
          dhcp4: true
          optional: true
          access-points:
            F660A-xxxx-G:
              password: "wifi-password"
      ```

1. ラズパイに ubuntu インストール後、本スクリプトを実行（以下例）

   ```bash
   curl https://raw.githubusercontent.com/calico-cress/initialize-ras-pi/main/provisioning.sh >init.sh && bash ./init.sh
   ```

