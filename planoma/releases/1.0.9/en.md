# What's New in Version 1.0.9

## New Features

### Achievement System
- Unlock achievements as you build consistency — streak milestones, perfect weeks, perfect months, consistency tiers, and total completions
- Beautiful holographic achievement cards with glitter effects, tier-specific patterns, and custom illustrations
- Milestone celebrations with confetti, sound effects, and toast notifications when you reach a new achievement
- Browse your full achievement gallery from Settings, with locked badges showing what's next to unlock

### Apple Health Integration
- Link habits to Apple Health data — steps, distance, calories, workout minutes, cycling, swimming, and more
- Sports habits are automatically verified using real health data, so habits like "Walk 2 km" or "Exercise 30 min" complete themselves
- See live progress directly in habit cells with compact metrics (e.g. "1.2k/3k steps") and a gradual ring fill
- Background sync keeps your habits up to date even when the app is closed
- Personalized progress notifications that match your chosen personality tone when you reach 50% and 100% of a health goal
- Progress ring overflow for single-session HealthKit habits that exceed their target

### Redesigned Habit Creation
- New guided 3-step wizard for creating habits with a visual tracking-type carousel and live preview card
- Quick-start templates and AI-powered name suggestions to get you started faster

### Daily Progress Header
- New progress bar in the navigation header showing how many habits you've completed today
- At-risk streaks indicator so you never accidentally break a long streak

### Group by Tracking Type
- New display option to group your habits by tracking type (Goal, Limit, Log)

### Bad Habits — Distinct Visual Language
- Bad habits now have their own visual identity with amber warning states and shield icons in widgets
- Dedicated sections when grouping by completion status, so limits are clearly separated from goals
- Overflow badge shows when you've exceeded your tolerance limit for a bad habit

## Improvements

### Better Progress Rings
- Segmented progress ring for habits with multiple daily targets, so you can see each completion at a glance
- Dynamic gradient that fills proportionally to your current progress
- Refined visual details — endpoint dots now appear only near completion
- Overflow badge and text styling for habits that exceed their target count

### Smarter iCloud Sync
- Real CloudKit event tracking replaces simulated sync monitoring for accurate sync status
- Sync details now show last import and last export separately
- Transient network errors no longer show alarming error messages

### Better History & Timestamps
- Timer and HealthKit metadata now visible in all history views
- Check-ins use actual timestamps instead of defaulting to midnight or random hours

### Enhanced Stability
- Improved how the app recovers from unexpected database issues instead of closing abruptly
- Widgets are now more resilient to calendar edge cases across different regions and locales
- Added memory limits to internal caches to reduce memory usage over time

### Smoother Performance
- Removed unnecessary pauses during data container setup for faster launch and sync toggling
- Prevented brief interface freezes when saving data under certain conditions
- Reduced memory pressure that could cause the app to restart in the background
- Cleaned up unused widget code and fixed observer leaks for a lighter memory footprint

## Bug Fixes

- Fixed the app unexpectedly closing due to a background process running longer than allowed
- Fixed widgets occasionally crashing when calculating dates near week or year boundaries
- Fixed habits appearing as invalid in widgets after being deleted in the main app
- Fixed habit detail view briefly showing incorrect data when switching quickly between habits
- Fixed statistics updating multiple times during a single HealthKit sync
- Fixed weekly and custom frequency health habits not tracking progress correctly when target count is greater than 1
- Fixed bad habits calendar showing future dates as completed
- Fixed overlapping streak and overflow badges on multi-target habits
- Fixed color and icon selection circles being clipped in the customization step
- Fixed SF Symbol icons rendering as raw text instead of images
- Fixed stale HealthKit step count still showing after midnight
- Fixed check-in timestamp showing 00:00 when added from the calendar for today
- Fixed HealthKit multi-session entries also showing 00:00 timestamp
- Fixed HealthKit multi-session habit progress showing cumulative total instead of session count
- Fixed progress bar and at-risk indicator not working correctly for non-daily habits
- Fixed pull-to-refresh spinner not appearing on habit lists
- Fixed duplicate HealthKit completions for non-daily habits
- Fixed circular progress dot not following overflow position

---

Thank you for using Planoma! We're constantly working to make your habit tracking experience better.
