Grafana - The Open-Source Platform for Monitoring and Observability
===================================================================

[Grafana](https://grafana.com/) is an open-source platform for monitoring and observability. It allows you to query, visualize, alert on, and understand your metrics no matter where they are stored. Grafana provides a powerful and elegant way to create, explore, and share dashboards, making it a popular choice for monitoring infrastructure, applications, and business metrics. Python developers can extend its functionality by developing custom plugins, or choose from a variety of free open-source plugins provided by the Grafana community, as well as paid commercial plugins.

This appliance includes all the standard features in [TurnKey Core](https://www.turnkeylinux.org/core):

- Grafana configurations for TurnKey v18.x:

    - Grafana installed from the official Grafana repository.
    - Includes default plugins and the ability to install additional ones.

- **Security note**: As of 18.0, updates to Grafana **ARE NOT** configured to install automatically.

- SSL support out of the box.
- [Adminer](https://www.adminer.org/) administration frontend for PostgreSQL (listening on port 12322 - uses SSL).
- Webmin modules for configuring Apache2, PostgreSQL, and Postfix.

**To create a new Grafana Dashboard**

To create a new Grafana dashboard, you can use the Grafana web interface. Follow these steps:

1. Open your browser and navigate to the Grafana login page.
2. Log in with the admin credentials set at first boot.
3. Click on the "+" icon in the left-hand menu and select "Dashboard".
4. Customize your dashboard by adding panels and configuring data sources.

**Managing Grafana via Webmin**

Webmin provides a convenient interface for managing your Grafana instance:

1. **File Management**:
    - Browse to 'Tools' >> 'File Manager'.
    - Navigate to '/etc/grafana' to edit the 'grafana.ini' file if needed.
    - Save any changes you make.
2. **Service Management**:
    - Navigate to 'System' >> 'Bootup and Shutdown'.
    - Find the "grafana-server.service" in the list and select it via the checkbox.
    - Scroll to the bottom and select 'Restart' to apply changes.

**Managing Grafana via CLI**

1. **Edit Configuration**:
    - Edit `/etc/grafana/grafana.ini` as needed.
2. **Restart Grafana Service**:
    - Restart the Grafana service:

      ```bash
      systemctl restart grafana-server
      ```

**Installing Additional Plugins**

Grafana supports a variety of plugins. To install a new plugin:

1. Use the Grafana CLI tool:

    ```bash
    grafana-cli plugins install <plugin-name>
    ```

2. Restart the Grafana service:

    ```bash
    systemctl restart grafana-server
    ```

Credentials *(passwords set at first boot)*
-------------------------------------------

**Note**: The Grafana password set at first boot applies to the Grafana admin account. This can be changed individually after first boot.

-  Webmin, SSH: username **root**
-  PostgreSQL, Adminer: username **postgres**
-  Grafana Admin Account: **admin**

[Grafana]: https://grafana.com/
[TurnKey Core]: https://www.turnkeylinux.org/core
[Adminer]: https://www.adminer.org/
