# 🖥️ Bash System Health Checker

A simple Bash automation script that monitors the health of a Linux system by collecting key system metrics and checking the status of essential services.

---

## 📌 Features

- ✅ Displays Hostname
- ✅ CPU Usage
- ✅ Memory Usage
- ✅ Disk Usage
- ✅ System Uptime
- ✅ Internet Connectivity Check
- ✅ Service Status Monitoring
  - Nginx
  - Docker
  - SSH

---

## 🛠️ Technologies Used

- Bash Scripting
- Linux
- awk
- grep
- systemctl
- ping
- top
- free
- df
- uptime

---

## 📂 Project Structure

```
bash-system-health-checker/
│
├── health_check.sh
└── README.md
```

---

## 🚀 Getting Started

### Clone the Repository

```bash
git clone git@github.com:RaghavN6666/bash-system-health-checker.git
```

### Navigate to the Project

```bash
cd bash-system-health-checker
```

### Make the Script Executable

```bash
chmod +x health_check.sh
```

### Run the Script

```bash
./health_check.sh
```

---

## 📷 Sample Output

```text
HOSTNAME: ubuntu

CPU Usage: 12%

Memory Usage: 4.2Gi / 16Gi (26.25%)

Disk Usage: 38%

UPTIME: up 2 days, 5 hours

INTERNET CONNECTION: CONNECTED

nginx: Running
docker: Running
ssh: Running
```

---

## 📚 Concepts Demonstrated

This project demonstrates practical use of:

- Variables
- Command Substitution (`$(...)`)
- Functions
- Arrays
- Loops
- Conditional Statements
- Exit Codes
- Text Processing using `grep` and `awk`
- Linux System Monitoring
- Service Monitoring using `systemctl`

---

## 🎯 Learning Objectives

This project was built to strengthen my understanding of:

- Linux system administration
- Bash scripting fundamentals
- Linux command-line utilities
- Automation using shell scripting
- DevOps scripting practices

---

## 🔮 Future Improvements

- Add colored terminal output
- Log health reports to a file
- Add CPU, Memory, and Disk threshold warnings
- Generate timestamped reports
- Support custom service lists via command-line arguments
- Schedule automatic execution using Cron

---

## 👨‍💻 Author

**Raghav Nagraj**

GitHub: https://github.com/RaghavN6666

---

## ⭐ Project Status

**Completed – Project 1 of my DevOps Learning Roadmap**
