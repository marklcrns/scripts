# Cron Scripts

## Usage

Run

```
crontab -e
```

Then add the following in crontab file

```
*/15 * * * * $HOME/scripts/cron/15m_jobs
```

## Starting Cron Daemon

Run:

```
pgrep cron
```

If you see no number (i.e cron's main PID), then cron is not running.

For Ubuntu/Mint/Debian based distro

```bash
/etc/init.d/cron start

## or using service utility
sudo service cron start

## or using systemctl in modern Linux
sudo systemctl start cron
```


For RHEL/Fedora/CentOS/Scientific/Rocky/Alma distro

```bash
/etc/init.d/crond start

## or using service utility
service crond start

## or using systemctl in modern Linux
systemctl start crond.service
```

