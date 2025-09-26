#!/bin/bash

# Create systemd service file for Tomcat
cat <<EOF | sudo tee /etc/systemd/system/tomcat.service
[Unit]
Description=Apache Tomcat 9 Application Server
After=network.target

[Service]
Type=forking
User=ubuntu
Group=ubuntu
WorkingDirectory=/opt/tomcat9

ExecStart=/opt/tomcat9/bin/startup.sh
ExecStop=/opt/tomcat9/bin/shutdown.sh

Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF

# Ensure ubuntu owns Tomcat installation
sudo chown -R ubuntu:ubuntu /opt/tomcat9
sudo chmod +x /opt/tomcat9/bin/*.sh

# Reload systemd to register new service
sudo systemctl daemon-reload
sudo systemctl enable tomcat
sudo systemctl start tomcat
