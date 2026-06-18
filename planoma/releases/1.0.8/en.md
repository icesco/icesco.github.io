# What's New in Version 1.0.8

## New Features

### Frequency-Aware Statistics
- Statistics now adapt to your habit's frequency — weekly, monthly, and custom frequency habits show period-appropriate metrics instead of daily counts

### Live Activity Timer Enhancements
- Receive a notification when your timer reaches its target duration
- View your running timer in the Apple Watch Smart Stack
- See a clear stopped state when your timer ends on the Lock Screen and Dynamic Island
- Long-press a habit cell to start, stop, or resume a timer directly from the context menu

### Home Screen Quick Actions
- Long-press the app icon to quickly send feedback

### Redesigned Subscription Screen
- Clearer plan comparison with an animated feature carousel and improved selection experience

### iCloud Sync Details
- Redesigned sync status page with a dedicated data comparison view to easily check what's synced

### Orphan iCloud Record Cleanup
- Detect and remove leftover iCloud records from deleted habits to free up space

## Improvements

### Smarter Completion Tracking
- Weekly, monthly, and custom frequency habits now correctly display the full period count everywhere in the app
- Timer-based habits properly account for manual check-ins alongside timed sessions
- Centralized completion logic ensures consistent behavior across list, calendar, and widget views

### Refined Sort & Filter
- Improved styling for sort and filter controls
- Smooth transition animation when changing sort order

### Visual Polish
- Consistent check-in button colors between row and card layouts
- Monthly calendar cells now update background immediately after adding a check-in

### Updated Localizations
- Refreshed translations across all supported languages

## Bug Fixes

- Fixed Live Activity timer visually continuing after pressing Stop
- Fixed timer stopped from a Live Activity not saving the check-in
- Fixed Live Activity background too transparent on the Lock Screen and Apple Watch
- Fixed Live Activity timer on Apple Watch showing frozen progress and a cropped icon
- Fixed Live Activity progress bar too wide on the Apple Watch Smart Stack
- Fixed donated Siri intents from deleted habits still appearing in Shortcuts and Spotlight
- Fixed Siri intents not donated correctly after completing a habit
- Fixed Siri tip view overlapping the timer section
- Fixed time-based habits incorrectly grouped as completed
- Fixed weekly/monthly habits showing only today's count instead of the full period total in list cells
- Fixed timer habits ignoring manual check-ins in calendar and widget views
- Fixed custom frequency habits showing wrong completion count in list cells
- Fixed timer-based habits ignoring frequency setting and manual backdated check-ins
- Fixed weekly completion not tracking when a check-in was added for a past date
- Fixed AttributeGraph cycle warning when sorting habits by priority
- Fixed monthly calendar cell background not refreshing after a new check-in
- Fixed Home Screen Quick Actions not triggering correctly

## Under the Hood

- Migrated calendar views to a standalone PlanomaUI-Calendar package for better modularity
- Migrated HabitoDataModel to Swift 6 with SwiftData indexes for faster queries

---

Thank you for using Planoma! We're constantly working to make your habit tracking experience better.
