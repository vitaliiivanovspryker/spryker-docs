---
title: Connect the Spryker CI to a GitLab managed project
description: Learn how to connect Spryker CI to a GitLab managed project
template: howto-guide-template
redirect_from:
  - /docs/paas-plus/dev/onboard-to-spryker-code-upgrader/connect-spryker-ci-to-a-gitlab-managed-project.html
---

There are two options for connecting Spryker CI to your repository: using Spryker CI's native integration or using an access token.

## Connect using Spryker CI native integration

1. In Spryker CI, go to **Projects**.
2. On the **Projects** page, select the **Spryker Upgrade Service** project.

![Spryker CI Projects](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/spryker_ci_projects.png)

3. Go to **Code**.

![Spryker CI Code](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/spryker_ci_code_page.png)

4. In the **Connect Git repository** pane, for **GIT HOSTING PROVIDER**, select **GitLab**.

5. For **ADD GITLAB INTEGRATION** select **+**.
    This opens GitLab in a new window.

![Spryker CI Code GitLab](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/gitlab_code_add.png)

6. To authorize Buddy CI to access your account, click **Authorize**.
    Your account should have administrator rights in the repository you want to connect.

![Spryker CI GitLab](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/spryker_ci_gitlab.png)

7. For **GROUP**, select the GitLab group that has access to the repository you want to connect.

8. For **REPOSITORY**, select the repository you want to connect.
    This displays a success message. The Upgrader is now connected to your repository.

![Spryker CI GitLab Repository Selection](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/gitlab_code_select_repository.png)

## Connect Spryker Code Upgrader using GitLab access token

To connect the Upgrader manually using a GitLab access token, follow the steps.

## Prerequisites

[Create a GitLab access token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#create-a-personal-access-token)

GitLab access token should have the following repository permissions:

* **api** for Spryker CI: grants complete read and write access to the scoped project API, including the Package Registry

* **write_repository** for Spryker Upgrader Service: grants read and write access to the repository to enable the Upgrader to analyze the project and create PRs.


## Configure the connection in Spryker CI

1. In Spryker CI, go to **Projects**.
2. On the **Projects** page, select the **Spryker Upgrade Service** project.

![Spryker CI Projects](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/spryker_ci_projects.png)

3. Go to **Integrations**.
4. On the **Integrations** page, click **New integration**.


![Spryker CI Integration](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/spryker_ci_integration.png)

5. On the **New integration** page, click the **Git** tab.
6. Select **GitLab**.

![Spryker CI Integration GitLab](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/spryker_ci_integration_gitlab.png)

7. On the **Add new GitLab integration** page, enter a **NAME**.
8. Select **SHARING** and **AVAILABILITY** per your requirements.
9. For **AUTHORIZATION METHOD**, select **Access Token**.
10. For **ACCESS TOKEN**, enter the GitLab access token.

![Spryker CI Integration GitLab Form](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/spryker_ci_integration_gitlab_form.png)

11. Click **New integration**.
    This connects the Upgrader to your GitLab organization.


12. To select the needed repository, go to **Code**.
13. On the **Switch repository or Git hosting provider** page, click the **GitLab** tab.
14. Select a **REPOSITORY** to connect the Upgrader to.
    This displays the message about a successful update. Now the Upgrader is connected to the repository.

![Spryker CI GitLab Repository Selection](https://spryker.s3.eu-central-1.amazonaws.com/docs/paas%2B/dev/onboard-to-spryker-code-upgrader/connect-spryker-code-upgrader-to-a-gitlab-managed-project.md/gitlab_code_select_repository.png)

## Support for Spryker CI

* For help with Spryker CI, [contact support](https://spryker.force.com/support/s/).
* To learn more about Buddy, see their [docs](https://buddy.works/docs).

## Next steps

[Run Spryker Code Upgrader](/docs/scu/dev/run-spryker-code-upgrader.html)
