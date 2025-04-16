# 🔐 PostgreSQL Configuration Notes (Ubuntu)

This doc summarizes the core PostgreSQL config files I modified during the setup process, along with why I did it.

---

## 🔧 `postgresql.conf`
Located at: `/etc/postgresql/14/main/postgresql.conf`

- Changed `listen_addresses`:
  ```conf
  listen_addresses = '*'
  ```
  > Allows the DB to accept remote connections (useful when testing client apps or remote psql).

- Optional: tune memory and logging for testing
  ```conf
  shared_buffers = 256MB
  logging_collector = on
  log_directory = 'log'
  log_filename = 'postgresql-%a.log'
  ```

---

## 🔐 `pg_hba.conf`
Located at: `/etc/postgresql/14/main/pg_hba.conf`

- I added this line for trusted local access (for testing):
  ```conf
  local   all             postgres                                trust
  ```
  > This lets me connect as the `postgres` user without a password temporarily.

- For remote connections (if needed):
  ```conf
  host    all             all             0.0.0.0/0               md5
  ```
  > Allows external IPs with password (don't use in prod without firewalls!).

---

## 🔥 UFW (Firewall)
- Enabled UFW and allowed PostgreSQL port:
  ```bash
  sudo ufw enable
  sudo ufw allow 5432/tcp
  ```
  > Ensures only port 5432 is open externally.

---

## 📸 Screenshot Placeholder:
```
/assets/screenshots/firewall_pg_hba_configured.png
```

---

## 💬 Notes to Self:
I liked seeing how everything in PostgreSQL is file-driven. It helped me understand what config means under the hood. Next time, I want to automate these tweaks using a shell script or Ansible.
```

---

