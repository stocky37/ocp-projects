# OCP Tenant Configuration

This repository contains configuration for cluster tenants.
The [Namespace Configuration Operator](https://github.com/redhat-cop/namespace-configuration-operator) is used to provision namespaces based on OpenShift Groups.

## Group Configuration

Different labels attached to groups will configure different resources using the GroupConfig feature of the Namespace Configuration Operator.

This is configured as follows:

### Tenant Group

**Label:** `type: tenant`

Creates the following resources:

- `${tenant}-cicd` namespace
- `${tenant}-dev` namespace
- `${tenant}-stage` namespace
- `${tenant}-prod` namespace
- Group `admin` access to `cicd` and `dev` namespaces
- Group `edit` access to `stage` and `prod` namespace

### Tenant Admin Group

**Label:** `type: tenant-admins`

Creates the following resources:

- Group `admin` access to all namespaces configured by the *Tenant Group*

## Tenants
### demo-gitops-cicd

The *demo-gitops-cicd* tenant contains the necessary setup for an OpenShift GitOps & OpenShift Pipelines demo.


Note: directories in clusters/*/ only there for ApplicationSet purposes
