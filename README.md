HEAD
# PostgreSQL-DBA-Playground

# 🧰 PostgreSQL DBA Portfolio Project

## 🎯 Objective
Build and manage a PostgreSQL database from scratch on a Linux system to gain hands-on DBA experience. Showcase all configurations, tools, scripts, and documentation in a professional GitHub portfolio.

---

## 📁 Project Structure
```
PostgreSQL-DBA-Playground/
├── 01_linux_setup/
│   ├── install_postgresql.sh
│   ├── system_config_notes.md
│   └── firewall_pg_hba.conf_example
├── 02_db_basics/
│   ├── create_schema.sql
│   ├── sample_data.sql
│   └── role_permissions.sql
├── 03_backup_restore/
│   ├── backup_script.sh
│   ├── restore_guide.md
│   └── pg_dump_options_cheatsheet.md
├── 04_monitoring_security/
│   ├── pg_stat_queries.sql
│   ├── crontab_backup.sh
│   └── pgbadger_setup.md
├── assets/
│   ├── screenshots/
│   └── diagrams/
├── README.md
└── LICENSE
```


## ✅ Phase 1: Environment Setup (Linux)

### 🔹 Tasks:
- [ ] Choose Linux distro (Ubuntu 22.04 LTS recommended)
- [ ] Install PostgreSQL via package manager & from source (for learning)
- [ ] Set up PostgreSQL as a service (`systemctl`, `pg_ctl`)
- [ ] Configure firewall and access (`ufw`, `pg_hba.conf`, `postgresql.conf`)


### 📝 Dev Journal: Setup & First Steps

#### 📌 Date: _(Add the date you complete this step)_

Today I started building my PostgreSQL DBA playground from scratch. I chose Ubuntu 22.04 LTS as my base because it's stable, clean, and works well for PostgreSQL. I installed PostgreSQL using the official APT repository to make sure I'm using a maintained version.

Here’s the script I created for a clean install:

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

> 🗒️ _Inline note: This installs PostgreSQL and starts it automatically on boot._

#### 📸 Screenshot Placeholder:
```
/assets/screenshots/postgres_installed_successfully.png
```

### 💭 Personal Reflections:
This step was straightforward, but I reminded myself why I’m doing this: not just to set up a DB, but to **become fluent in the full PostgreSQL ecosystem** like a pro DBA. I noted how clean the service management via `systemctl` is on Ubuntu.


## ✅ Phase 2: Core PostgreSQL DBA Tasks

### 🔹 Tasks:
- [ ] Create and manage schemas, tables, indexes
- [ ] Create and manage users, roles, and permissions
- [ ] Load and transform sample data using SQL scripts


## ✅ Phase 3: Backup, Restore & Scripting

### 🔹 Tasks:
- [ ] Perform full and partial backups with `pg_dump`
- [ ] Automate backups using shell + crontab
- [ ] Document recovery procedures and test restoration


## ✅ Phase 4: Monitoring, Logs & Performance

### 🔹 Tasks:
- [ ] Use `pg_stat_activity`, `pg_stat_statements`, and logs
- [ ] Set up and visualize performance with `pgBadger`
- [ ] Track slow queries and optimize


## 📊 GitHub Portfolio Checklist
- [ ] Clear folder structure for each section
- [ ] All scripts well-commented
- [ ] Markdown docs for explanations
- [ ] Sample outputs/screenshots where helpful
- [ ] `README.md` as a project guide


## 🔗 Next Steps
Once this local PostgreSQL DBA project is complete, move to:
1. Azure SQL Database hands-on build
2. Legacy project migration to Azure
3. Unified portfolio structure

