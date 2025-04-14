#### 🔧 `install_postgresql.sh`
```bash
#!/bin/bash

# Update the system
sudo apt update && sudo apt upgrade -y

# Install PostgreSQL and contrib packages
sudo apt install -y postgresql postgresql-contrib

# Enable and start PostgreSQL service
sudo systemctl enable postgresql
sudo systemctl start postgresql

# Check status
sudo systemctl status postgresql
```
