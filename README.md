# OCP Tenant Configuration

This repository contains configuration for cluster tenants.

## Add a New Tenant

TODO

## Layout

TODO

## Typical Tenant

The following resources will be created for typical tenant.

### Groups

The following groups will all be prefixed by the tenant name.
For example, the `admins` namespace will become `tenant-name-admins`.

| Name       | Description                                                                           |
|------------|---------------------------------------------------------------------------------------|
| **admins** | Tenant admins. Has admin access to all tenant namespaces.                             |
| **team**   | Represents the entire tenant team. Has at least view access to all tenant namespaces. |

### Namespaces

The following namespaces will all be prefixed by the tenant name.
For example, the `dev` namespace will become `tenant-name-dev`.

| Name       | Team Access | Description                                                        |
|------------|-------------|--------------------------------------------------------------------|
| **gitops** | view        | Contains the tenant's Argo CD instance and associated Applications |
| **cicd**   | edit        | Contains the tenant's CICD pipelines and tasks                     |
| **dev**    | admin       | The development environment for the tenant's applications          |
| **stage**  | edit        | The staging environment for the tenant's applications              |
| **prod**   | view        | The production environment for the tenant's applications           |

## Tenants

* **[demo-gitops-cicd](./tenants/demo-gitops-cicd):** Standard tenant
