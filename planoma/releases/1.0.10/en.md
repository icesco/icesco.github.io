# What's New in Version 1.0.10

## New Features

### Backup & Restore
- Create full backups of your habits, entries, and categories in `.planoma` format
- Restore from backup with automatic rollback on failure
- Category creation dates are preserved during restore
- Share backup files across devices

### Reports Tab
- New dedicated Reports tab with weekly overview
- Redesigned statistics and insights for your habits
- "Check Stats" button in journey cards links directly to reports

### Achievements Board
- Redesigned achievements as a game-style board with unified layout
- Progress tracking counts unique habit definitions, not duplicates
- Progress bar and percentage correctly capped at 100%

### Heatmap Overview Widget
- New free widget showing a 14-day heatmap for multiple habits at a glance
- Available in medium (5 habits) and large (10 habits) sizes
- Auto-selects your most active habits when no selection is configured
- Tap any habit row to jump directly to its detail view
- Supports glass/tinted widget mode on iOS 26+
- Localized in all 9 supported languages

### Coach Showcase
- New "Meet Your Coach" view to explore all coach personalities
- See sample messages and pick the coach that resonates with you
- Fully localized in all 9 supported languages

### Streak Freeze & Recovery
- Streak freeze protects your streaks when you miss a day
- Streak recovery banner helps you get back on track after a break
- Share your streak achievements with friends

### Retention Features
- First check-in celebration overlay to reward your first step
- Week 1 in-app journey with contextual guidance cards
- Weekly summary to reflect on your progress
- Re-engagement notifications bring you back when you drift
- Streak-at-risk alerts help you maintain consistency

## Improvements

### Notifications
- Granular notification settings with per-type toggles (daily reminders, streak alerts, weekly summary)
- Provisional notifications during onboarding — no popup, just quiet reminders
- Unified reminder time between onboarding and notification settings
- Fixed daily reminders re-enabling after app foreground by centralizing scheduling logic

### Bad Habits UX
- Calendar no longer shows future dates as completed for bad habits
- Habit's own icon shown instead of shield icon in list
- Fixed overlapping streak and overflow badges on multi-target habits

### iCloud Sync
- User-friendly sync error messages instead of cryptic CloudKit error codes
- Clear descriptions with actionable steps for each error type (network, auth, storage, schema)
- Warning indicator in sync status when there's an active issue
- Sync errors are now tracked on TelemetryDeck for monitoring
- Fixed SF Symbol icons showing as text in habit comparison view

### Performance & Stability
- Removed 49 unused sound files from app bundle
- Improved heatmap performance and eliminated code duplication
- Fixed MetricKit build errors and gated advanced diagnostics behind opt-in setting
- Stable user identifier for accurate analytics tracking
- TelemetryDeck no longer initializes in debug builds to keep analytics clean

### User Interface
- Paywall close button made more visible with glass prominent style
- Hidden "Sotto controllo" section when completed habits are collapsed
- Fixed grey overlay stuck after onboarding when no habits exist
- Personality system integrated into re-engagement and streak recovery messages

### Localization
- Fixed settings translations and restructured notification settings strings
- Localized Coach Showcase view in all 9 languages
- Fixed missing localized strings for journey cards

## Bug Fixes

- Fixed daily reminders ignoring user's opt-out preference on app foreground
- Fixed HealthKit habits not syncing via iCloud
- Fixed bad habits calendar showing future dates as completed
- Fixed achievements progress counting duplicate entries
- Fixed overlapping badges on multi-target habits
- Fixed grey overlay stuck after onboarding with no habits
- Fixed missing switch cases in personality fallback phrases
- Fixed restore rollback on failure

---

Thank you for using Planoma! We're constantly working to make your habit tracking experience better.
