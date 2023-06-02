sudo apt update
sudo apt install apache2
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
sudo systemctl status apache2
sudo tar -czvf akash-http-log-$(date '+%d%m%Y-%H%M%S') /var/log/apache2/
aws s3 cp "akash-httpd-log-02062023-161341" s3://upgrad-akashdeep
echo "httpd-log $(date) tar $(size)" >> /var/www/my_domain/index.html

