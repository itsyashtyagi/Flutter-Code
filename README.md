# Flutter → Roadmap
**For:** 2.5 YOE Flutter dev, AI-assisted background, targeting mid-level roles (India/remote) with native Android/iOS exposure.

**Core rule for every topic below:** learn it, then explain it out loud / write it on paper *without AI help*. If you can't, you don't know it yet — you've seen it.

---

## Phase 0 — Self-Audit (Week 1)

Before studying, find your real gaps. For each, rate yourself 1-5 honestly:

- [ ] Dart async internals (Future, Stream, isolates, event loop)
- [ ] Widget lifecycle & rebuild mechanics
- [ ] State management (your primary tool) — can you explain *why*, not just *how*
- [ ] Clean architecture / layering in your past projects
- [ ] Testing (unit/widget/integration)
- [ ] Native Android (Kotlin, lifecycle, Gradle)
- [ ] Native iOS (Swift, Xcode, provisioning)
- [ ] DSA problem solving speed without hints
- [ ] Mobile system design vocabulary

Anything ≤2 gets priority time in the plan below.

---

## Phase 1 — Dart & Flutter Core (Weeks 1-3)

### Dart, deeply
- Null safety: sound null safety, late, required, `?`/`!` — explain what "sound" actually means
- Futures vs Streams vs Isolates — when to use each, and what `compute()` does under the hood
- `async`/`await` execution order — trace through a nested async example on paper
- Extension methods, mixins, generics — write one of each from scratch
- Collections: difference between `List`, `Set`, `Map` performance characteristics

### Flutter internals
- Widget → Element → RenderObject tree — draw this from memory
- `StatelessWidget` vs `StatefulWidget` rebuild behavior
- `BuildContext` — what it actually is, why "context after async gap" is dangerous
- `const` constructors — how they prevent rebuilds, measure it in DevTools
- Keys (`ValueKey`, `GlobalKey`) — when list reordering breaks without them

**Checkpoint:** Rebuild a small app (e.g., a todo list) from scratch, no AI, no copy-paste. Time yourself.

---

## Phase 2 — State Management & Architecture (Weeks 3-5)

- Pick **one** primary: Riverpod (recommended, most in-demand now) or Bloc
- Go deep enough to explain: providers/notifiers, dependency graph, how rebuilds are scoped
- Be able to compare Provider vs Riverpod vs Bloc vs GetX in an interview — tradeoffs, not just "GetX is bad"

### Architecture
- Clean Architecture layers: presentation / domain / data
- Repository pattern + dependency injection (get_it, or Riverpod's own DI)
- Structure one real project this way from scratch — this becomes a portfolio piece

**Checkpoint:** Refactor an old project of yours into this architecture.

---

## Phase 3 — Performance, Testing, Advanced Flutter (Weeks 5-7)

### Performance
- DevTools: widget rebuild profiler, timeline, memory tab
- `RepaintBoundary`, `ListView.builder` vs `ListView`, lazy loading
- Image caching, `cached_network_image` internals
- App size reduction (deferred components, tree shaking)

### Testing
- Unit tests (mock a repository, test a notifier/bloc)
- Widget tests (`pumpWidget`, `find`, `tester.tap`)
- One integration test end-to-end
- This is a **big differentiator** — most candidates at your level skip it entirely

### Platform channels (bridges to native — do this now)
- Write a MethodChannel from scratch: Flutter calls native Android (Kotlin) to get battery level, then same for iOS (Swift)
- This single exercise doubles as your native intro *and* a strong interview story

**Checkpoint:** A GitHub repo with tests passing in CI (GitHub Actions).

---

## Phase 4 — Native Android Crash Course (Weeks 7-9)

You don't need to be an Android dev — you need to not freeze when native code comes up.

- Kotlin basics: syntax, null safety (compare/contrast with Dart's), coroutines basics
- Activity & Fragment lifecycle — draw it, compare to Flutter's widget lifecycle
- Gradle: what `build.gradle` does, dependency resolution, common version-conflict fixes
- Reading a native crash log (stack trace from Play Console / Crashlytics) and locating the issue
- Signing & release builds: keystore, `local.properties`, common release-vs-debug bugs

**Goal:** be able to say "I've debugged native Android crashes surfaced through Flutter" truthfully.

---

## Phase 5 — Native iOS Crash Course (Weeks 9-11)

- Swift basics: optionals, structs vs classes, closures
- Xcode project structure: `Info.plist`, `Podfile`, workspace vs project
- Signing & provisioning profiles — the #1 thing that blocks Flutter iOS releases; understand it conceptually even without a Mac if needed
- Common iOS-specific Flutter bugs: permissions in `Info.plist`, pod install failures, simulator vs device issues

**Goal:** same as Android — credible fluency, not native-dev depth.

---

## Phase 6 — Mobile System Design (Weeks 11-13)

This is *not* backend system design. Interviewers want mobile-specific thinking:

- Offline-first architecture (local DB sync strategies — e.g., Drift/Isar + conflict resolution)
- Caching strategy (image cache, API response cache, cache invalidation)
- Handling poor/flaky network (retry logic, exponential backoff, optimistic UI)
- App size & startup time optimization
- CI/CD for mobile: Fastlane or Codemagic/Bitrise pipeline basics
- Crash reporting & monitoring: Firebase Crashlytics or Sentry integration
- Push notifications architecture (FCM/APNs basics)

**Practice format:** pick 5 prompts like "design the offline mode for a note-taking app" and whiteboard/write your answer in 20 minutes, no AI.

---

## Phase 7 — DSA (Run in parallel, Weeks 1-13, ~30-45 min/day)

- Arrays, strings, hashmaps — until fast and automatic
- Trees, basic graphs (BFS/DFS)
- Time/space complexity — be able to state Big-O for your own code unprompted
- Target: 150-200 LeetCode Easy/Medium problems by end of plan
- Do NOT use AI while practicing — that defeats the entire purpose of this phase

---

## Phase 8 — Portfolio & Applications (Weeks 12-16)

- 2-3 polished apps on GitHub with **incremental commit history** (not one AI-dumped commit — interviewers do check this)
- At least 1 published on Play Store; App Store if possible
- Write your own README per project explaining architecture decisions — this becomes your interview script
- Update resume/LinkedIn with specific, quantifiable achievements (not just tech list)

---

## Suggested Weekly Time Budget
- Flutter/Dart deep-dive: 1 hr/day
- DSA: 30-45 min/day
- Native (Android/iOS phases): 1 hr/day during weeks 7-11
- System design: 2-3 hrs/week during weeks 11-13
- Portfolio work: weekends

**Total runway: ~3.5-4 months** of consistent effort before you're genuinely ready for 10 LPA-level interviews.

---

## Interview Rounds to Expect at This Level
1. DSA / coding round (live, no AI)
2. Flutter deep-dive (architecture, state management, performance)
3. System design (mobile-specific)
4. Native/platform knowledge (may be light, but expect at least one question)
5. Behavioral / past-project deep-dive — be ready to defend every architectural choice in your portfolio projects
