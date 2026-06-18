# What's New in Version 1.0.12

## New Features

### Track Specific Workout Types
- Track individual workout activities like running, cycling, swimming, yoga, HIIT, strength training, tennis, hiking, and more
- New interactive metric picker with glass-style grid for choosing your workout type
- Each workout type filters Apple Health data to count only matching sessions

### Notification Icons
- Push notifications now show your habit icon as an image attachment
- Personality coach image appears in generic notifications
- Cached icon rendering for faster notification delivery

### Interactive Calendar Navigation
- New Safari-style bubble indicator when dragging on the calendar
- Smoother calendar navigation experience

### Redesigned Check-In History
- New day-by-day check-in view with swipeable weekly calendar for quick date navigation
- Tap any day in the calendar (expanded or collapsed) to browse check-in history
- Day actions popover anchored directly to the selected calendar cell
- Floating action button for adding check-ins
- Full habit theming applied throughout the view

### Redesigned Template Selection
- New basket-style UI for picking habit templates during onboarding
- Smooth animations when adding or removing templates
- Improved template selection UX with clearer visual feedback

## Improvements

### Timer Habits
- Play/pause button replaces the old check-in button for timer habits
- Timer progress ring now correctly shows time-based overflow
- Centralized timer progress calculation for consistency

### iPad & Layout
- Optimized layouts for iPad with better use of screen space
- Improved color contrast and visual consistency across devices

### Better Performance
- Progress circles and habit sorting now load faster with optimized database queries
- Annual calendar report loads completion data in a single batch query
- Trend chart hidden when habit has no check-in data yet

### Smaller App Size
- App download size reduced by ~25 MB through optimized image assets

### Under the Hood
- Notifications now display in the foreground
- Removed Pow dependency, replaced with lightweight sound effects
- Widget now reloads properly after check-in from the main app
- Introduced versioned schema management for safer future data migrations
- Removed unused legacy code for a cleaner, lighter codebase

## Bug Fixes

- Fixed bad habit progress bar showing incorrect values in detail view
- Fixed widget not updating after check-in
- Fixed bad habit display and stat details layout issues
- Fixed grouped habit completion animation
- Fixed progress circle always showing empty instead of actual completion progress
- Fixed sorting habits by "completion" not working
- Fixed annual calendar report showing no completion data
- Fixed potential crash when deleting check-ins from total entries view
- Fixed at-risk streak badges clipping on compact screens

---

Thank you for using Planoma! We're constantly working to make your habit tracking experience better.
