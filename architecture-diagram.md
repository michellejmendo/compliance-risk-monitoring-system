# Enterprise Governance & Risk Architecture

This diagram represents the layered structure of the compliance and risk monitoring system.

---

## System Overview

```text
                    ┌──────────────────────┐
                    │      Markets         │
                    │ (Jurisdictions)      │
                    └──────────┬───────────┘
                               │
                               v
┌──────────────────────┐  ┌──────────────────────┐
│       Controls       │  │    Risk Register      │
│ (Policy Frameworks)  │  │ (Risk Scoring Model)  │
└──────────┬───────────┘  └──────────┬───────────┘
           │                          │
           v                          v
        ┌────────────────────────────────────┐
        │         Control Status Layer        │
        │  (Implementation & Review Tracking) │
        └────────────────────────────────────┘
                           │
                           v
                ┌──────────────────────┐
                │      Audit Logs      │
                │ (Governance Tracking) │
                └──────────┬───────────┘
                           │
                           v
                ┌──────────────────────┐
                │ Executive Reporting   │
                │ KPIs & Risk Exposure  │
                └──────────────────────┘
