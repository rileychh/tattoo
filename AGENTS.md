# Tattoo - NTUT Course Assistant

Flutter app for NTUT students: course schedules, scores, enrollment, announcements.

## Status

**Done:**
- PortalService (auth+SSO), CourseService (HTML parsing), ISchoolPlusService (getStudents, getMaterials, getMaterial)
- HTTP utils, InvalidCookieFilter interceptor
- Drift database schema with all tables
- UserRepository, CourseRepository, ISchoolPlusRepository (repository pattern implementation)
- Service DTOs migrated to Dart 3 records

**Todo - Data Layer:**
- ISchoolPlusService: getCourseAnnouncement, getCourseAnnouncementDetail, courseSubscribe, getCourseSubscribe, getSubscribeNotice
- ScoreService: grade retrieval, GPA calc
- ScoreRepository

**Todo - App:**
- Secure storage (flutter_secure_storage)
- State management (Riverpod/Bloc/Provider)
- go_router + auth guards
- UI: login, course table, course detail, scores, profile
- i18n (zh_TW, en_US)
- Testing
- File downloads

## Architecture

Following Flutter's official architecture guide (layered architecture):

```
UI Layer (Widgets)
    ↓
Repository Layer (Business Logic + Coordination)
    ↓
Service Layer (HTTP)    +    Database Layer (Drift/SQLite)
```

**Structure:**
- `lib/models/` - Shared domain enums (DayOfWeek, Period, CourseType)
- `lib/repositories/` - Coordinate service + database, implement business logic
- `lib/services/` - HTTP clients, parse responses, return DTOs (as records)
- `lib/database/` - Drift schema and database class
- `lib/utils/` - HTTP utilities (cookie jar, interceptors)

**Data Flow Pattern (per Flutter's architecture guide):**
- Services return DTOs as records (denormalized, as-parsed from HTML)
- Repositories transform DTOs → normalized DB → return DTOs or domain models
- UI consumes domain models (Drift entities or custom query result classes)
- Repositories handle impedance mismatch between service data and DB structure

**Terminology:**
- **DTOs**: Dart records defined in service files - lightweight data transfer objects
- **Domain models**: Drift entities or custom query result classes - what UI consumes

**Services:** PortalService, CourseService, ISchoolPlusService, ScoreService
- All share single cookie jar (NTUT session state)
- PortalService handles SSO for scoreService, courseService, iSchoolPlusService
- Return DTOs as records (UserDTO, SemesterDTO, ScheduleDTO, etc.) - no database writes
- DTOs are typedef'd records co-located with service implementation

**Repositories:** UserRepository, CourseRepository, ISchoolPlusRepository, ScoreRepository (TODO)
- Transform DTOs into relational DB tables
- Return DTOs or domain models to UI
- Handle data persistence and caching strategies

## Database Performance

**Indexing Strategy:**
- Avoid premature optimization - this is a personal data app with small datasets (~60-70 courses per student)
- Current indexes are minimal and focused on existing query patterns
- **When to add new indexes:** When implementing a new feature that introduces SQL queries filtering/joining on non-indexed columns
- **Junction table indexes:** Composite PKs only support left-to-right lookups. Add separate index if querying by second column alone
  - Example: `CourseOfferingStudents` PK `{courseOffering, student}` supports "students in course" but NOT "courses for student"
  - Add `course_offering_student_student` index when implementing student transcript/history queries
- **Naming convention:** `table_column` (following Drift examples)
- Monitor storage/performance before adding more indexes

## NTUT-Specific Patterns

**HTML Parsing:** NTUT has no REST APIs. Parse HTML responses with `html` package.

**Shared Cookie Jar:** Single cookie jar across all clients for simpler implementation.

**SSO Flow:** PortalClient centralizes auth for 3 separate NTUT services.

**User-Agent:** Emulate NTUT iOS app requests.

**InvalidCookieFilter:** iSchool+ returns malformed cookies; custom interceptor filters them.
