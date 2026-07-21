# KB-009 — Use gpupdate and gpresult safely

**Audience:** Northstar employees  
**Last reviewed:** 2026-07-21  
**Owner:** IT Service Desk

## Purpose

Use this article to perform safe first-line checks before contacting the service desk. Never share passwords, MFA codes, or confidential data.

## Procedure

1. Save work before policy refresh.
2. Open Command Prompt as the standard user.
3. Run gpupdate /force only when support requests it.
4. Run gpresult /r and send the output to support.

## Expected result

The user either restores normal service or collects enough accurate information for faster diagnosis.

## Escalate when

Escalate immediately for suspected compromise, repeated lockouts, data loss, company-device theft, or an outage affecting multiple users.
