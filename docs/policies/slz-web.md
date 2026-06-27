# SLZ Web Policies

Documents 14 local policy definition file(s) in `SLZ/Web`.

| Policy | Default effect | Severity | Target |
| --- | --- | --- | --- |
| [SLZ-261-AppServiceAuthentication](#slz-261-appserviceauthentication) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-262-AppServiceSlotsHTTPtoHTTPSRedirection](#slz-262-appserviceslotshttptohttpsredirection) | `Audit` | Medium | App Service deployment slots |
| [SLZ-262-AppServiceHTTPtoHTTPSRedirection](#slz-262-appservicehttptohttpsredirection) | `Audit` | Medium | App Service apps |
| [SLZ-265-AppServiceAADRegistration](#slz-265-appserviceaadregistration) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-267-AppServiceSlotsLatestPythonVersion](#slz-267-appserviceslotslatestpythonversion) | `AuditIfNotExists` | Medium | App Service deployment slots |
| [SLZ-267-AppServiceLatestPythonVersion](#slz-267-appservicelatestpythonversion) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-268-AppServiceSlotsLatestJavaVersion](#slz-268-appserviceslotslatestjavaversion) | `AuditIfNotExists` | Medium | App Service deployment slots |
| [SLZ-268-AppServiceLatestJavaVersion](#slz-268-appservicelatestjavaversion) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-269-AppServiceSlotsLatestHTTPVersion](#slz-269-appserviceslotslatesthttpversion) | `AuditIfNotExists` | Medium | App Service deployment slots |
| [SLZ-269-AppServiceLatestHTTPVersionWebApp](#slz-269-appservicelatesthttpversionwebapp) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-269-AppServiceLatestHTTPVersion](#slz-269-appservicelatesthttpversion) | `AuditIfNotExists` | Medium | App Service apps |
| [SLZ-270-AppServiceFTPDeploymentsWebApp](#slz-270-appserviceftpdeploymentswebapp) | `AuditIfNotExists` | High | App Service apps |
| [SLZ-270-AppServiceSlotsFTPDeployments](#slz-270-appserviceslotsftpdeployments) | `AuditIfNotExists` | High | App Service deployment slots |
| [SLZ-270-AppServiceFTPDeployments](#slz-270-appserviceftpdeployments) | `AuditIfNotExists` | High | App Service apps |

## SLZ-261-AppServiceAuthentication

**Display name:** SLZ - 261 - Ensure App Service Authentication is set up for apps in Azure App Service

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID261/slz-261-ensure-app-service-authentication-is-set-up-for-apps-in-azure-app-service.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID261/slz-261-ensure-app-service-authentication-is-set-up-for-apps-in-azure-app-service.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`

**What it does:** This policy ensures that App Service Authentication is enabled on all App Services.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Entra authentication requirements can break anonymous/public applications or apps using external identity flows if not onboarded deliberately.

**Recommended action:** Define allowed public app patterns, Entra app registration ownership, and slot behavior before enforcing.

## SLZ-262-AppServiceSlotsHTTPtoHTTPSRedirection

**Display name:** SLZ - 262 - Ensure Web App Redirects All HTTP traffic to HTTPS in Azure App Service Slots

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service-slots.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service-slots.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Target:** App Service deployment slots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`

**What it does:** Policy will audit does HTTP is redirected for App Service, if not, it allows to redirect HTTP to HTTPS only for App Service Slots.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Transport restrictions are appropriate, but deployment pipelines or legacy clients may still rely on FTP, HTTP, or older TLS versions.

**Recommended action:** Move deployments to managed identities, Zip Deploy, or CI/CD service connections and validate client protocol support.

## SLZ-262-AppServiceHTTPtoHTTPSRedirection

**Display name:** SLZ - 262 - Ensure Web App Redirects All HTTP traffic to HTTPS in Azure App Service

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID262/slz-262-ensure-web-app-redirects-all-http-traffic-to-https-in-azure-app-service.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `Audit`
- **Allowed effects:** `Audit`, `Modify`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`

**What it does:** Policy will audit does HTTP is redirected for App Service, if not, it allows to redirect HTTP to HTTPS only for App Service.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Transport restrictions are appropriate, but deployment pipelines or legacy clients may still rely on FTP, HTTP, or older TLS versions.

**Recommended action:** Move deployments to managed identities, Zip Deploy, or CI/CD service connections and validate client protocol support.

## SLZ-265-AppServiceAADRegistration

**Display name:** SLZ - 265 - Ensure that Register with Azure Active Directory is enabled on App Service

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID265/slz-265-ensure-that-register-with-azure-active-directory-is-enabled-on-app-service.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID265/slz-265-ensure-that-register-with-azure-active-directory-is-enabled-on-app-service.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`

**What it does:** This policy checks does Web App have system or user assigned identitym if not, it will deploy System-Assigned identity.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Entra authentication requirements can break anonymous/public applications or apps using external identity flows if not onboarded deliberately.

**Recommended action:** Define allowed public app patterns, Entra app registration ownership, and slot behavior before enforcing.

## SLZ-267-AppServiceSlotsLatestPythonVersion

**Display name:** SLZ - 267 - Ensure that 'Python version' is the Latest Stable Version, if Used to Run the Web App Slots

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app-slots.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app-slots.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** App Service deployment slots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`, `pythonVersion`, `pythonVersion2`, `pythonPrefix`

**What it does:** Ensure that 'Python version' is in expected, if Used to Run the Web App Slots.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Runtime version policies can become stale as Azure App Service supported versions change.

**Recommended action:** Review allowed versions quarterly and coordinate upgrades with application owners.

## SLZ-267-AppServiceLatestPythonVersion

**Display name:** SLZ - 267 - Ensure that 'Python version' is the Latest Stable Version, if Used to Run the Web App

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID267/slz-267-ensure-that-'python-version'-is-the-latest-stable-version,-if-used-to-run-the-web-app.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`, `pythonVersion`, `pythonVersion2`, `pythonPrefix`

**What it does:** Ensure that 'Python version' is in expected, if Used to Run the Web App.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Runtime version policies can become stale as Azure App Service supported versions change.

**Recommended action:** Review allowed versions quarterly and coordinate upgrades with application owners.

## SLZ-268-AppServiceSlotsLatestJavaVersion

**Display name:** SLZ - 268 - Ensure that 'Java version' is the latest, if used to run the Web App for Slots

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app-for-slots.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app-for-slots.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** App Service deployment slots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`, `javaVersion`

**What it does:** Ensure that expepted 'Java version' is used by the Web App Slots based Linux deployment.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Runtime version policies can become stale as Azure App Service supported versions change.

**Recommended action:** Review allowed versions quarterly and coordinate upgrades with application owners.

## SLZ-268-AppServiceLatestJavaVersion

**Display name:** SLZ - 268 - Ensure that 'Java version' is the latest, if used to run the Web App

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID268/slz-268-ensure-that-'java-version'-is-the-latest,-if-used-to-run-the-web-app.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`, `javaVersion`

**What it does:** Ensure that expepted 'Java version' is used by the Web App Slots based Linux deployment.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Runtime version policies can become stale as Azure App Service supported versions change.

**Recommended action:** Review allowed versions quarterly and coordinate upgrades with application owners.

## SLZ-269-AppServiceSlotsLatestHTTPVersion

**Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Web App for Slots

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-slots.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-slots.jsonc)

- **Category:** Web
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Target:** App Service deployment slots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for HTTP either due to security flaws or to include additional functionality. Using the latest HTTP version for web apps to take advantage of security fixes, if any, and/or new functionalities of the newer version.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Transport restrictions are appropriate, but deployment pipelines or legacy clients may still rely on FTP, HTTP, or older TLS versions.

**Recommended action:** Move deployments to managed identities, Zip Deploy, or CI/CD service connections and validate client protocol support.

## SLZ-269-AppServiceLatestHTTPVersionWebApp

**Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Web App

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use-webapp.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use-webapp.jsonc)

- **Category:** Web
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for HTTP either due to security flaws or to include additional functionality. Using the latest HTTP version for web apps to take advantage of security fixes, if any, and/or new functionalities of the newer version.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Transport restrictions are appropriate, but deployment pipelines or legacy clients may still rely on FTP, HTTP, or older TLS versions.

**Recommended action:** Move deployments to managed identities, Zip Deploy, or CI/CD service connections and validate client protocol support.

## SLZ-269-AppServiceLatestHTTPVersion

**Display name:** SLZ - 269 - Ensure that 'HTTP Version' is the Latest, if Used to Run the Function App

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID269/slz-269-latest-http-version-use.jsonc)

- **Category:** Web
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `AuditIfNotExists`, `Disabled`, `DeployIfNotExists`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`

**What it does:** Periodically, newer versions are released for HTTP either due to security flaws or to include additional functionality. Using the latest HTTP version for web apps to take advantage of security fixes, if any, and/or new functionalities of the newer version.

**Hub-spoke / identity fit:** Supports secure application hosting behind approved ingress paths; validate App Service private endpoints, access restrictions, Entra authentication flows, and slot behavior.

**Potential issues (Medium):** Transport restrictions are appropriate, but deployment pipelines or legacy clients may still rely on FTP, HTTP, or older TLS versions.

**Recommended action:** Move deployments to managed identities, Zip Deploy, or CI/CD service connections and validate client protocol support.

## SLZ-270-AppServiceFTPDeploymentsWebApp

**Display name:** SLZ - 270 - Ensure FTP deployments are Disabled

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-WebApp.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-WebApp.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`, `allowFTPS`

**What it does:** Policy will audit does FTP is disabled, if not, it allows to deploy FTPS only for App Service and Azure Functions.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-270-AppServiceSlotsFTPDeployments

**Display name:** SLZ - 270 - Ensure FTP deployments are Disabled for Slots

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-for-slots.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled-for-slots.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** App Service deployment slots
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`, `allowFTPS`

**What it does:** Policy will audit does FTP is disabled for App Service slots, if not, it allows to deploy FTPS only for App Service and Azure Functions.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.

## SLZ-270-AppServiceFTPDeployments

**Display name:** SLZ - 270 - Ensure FTP deployments are Disabled

**Source:** [`Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled.jsonc`](../../Definitions/policyDefinitions/SLZ/Web/ID270/slz-270-ensure-ftp-deployments-are-disabled.jsonc)

- **Category:** App Service
- **Mode:** `Indexed`
- **Default effect:** `AuditIfNotExists`
- **Allowed effects:** `DeployIfNotExists`, `AuditIfNotExists`, `Disabled`
- **Target:** App Service apps
- **Policy set coverage:** SLZ-ALZ-PolicySet; group: Web
- **Key parameters:** `effect`, `allowFTPS`

**What it does:** Policy will audit does FTP is disabled, if not, it allows to deploy FTPS only for App Service and Azure Functions.

**Hub-spoke / identity fit:** Strongly aligned to hub-spoke designs that centralize ingress and egress through Azure Firewall; validate exception patterns for approved edge services, private endpoints, and forced-tunnel routing.

**Potential issues (High):** Internet-exposed management or data ports conflict with the central-firewall model and can leave spokes reachable outside approved ingress paths.

**Recommended action:** Require JIT/Bastion/VPN/private endpoint access, route administration through approved controls, and use Deny once legacy exceptions are removed.
