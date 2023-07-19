apt-get update -y
apt-get install wget -y
wget https://github.com/pivotal-cf/pivnet-cli/releases/download/v3.0.1/pivnet-linux-amd64-3.0.1
install pivnet-linux-amd64-3.0.1 /usr/local/bin/pivnet
pivnet login --api-token "$PIVNET_TOKEN"
cd $HOME
pivnet download-product-files --product-slug='tanzu-application-platform' --release-version='1.4.0' --product-file-id=1404618
export VERSION=v0.25.4
mkdir -p $HOME/tanzu
tar -xvf $HOME/tanzu-framework-linux-amd64-*.tar -C $HOME/tanzu
cd $HOME/tanzu
export TANZU_CLI_NO_INIT=true
install cli/core/$VERSION/tanzu-core-linux_amd64 /usr/local/bin/tanzu
tanzu plugin install --local cli all
install cli/core/$VERSION/tanzu-core-linux_amd64 /usr/local/bin/tanzu
tanzu plugin install --local cli all
tanzu plugin list
echo 'source <(tanzu completion bash)' >> $HOME/.bashrc
