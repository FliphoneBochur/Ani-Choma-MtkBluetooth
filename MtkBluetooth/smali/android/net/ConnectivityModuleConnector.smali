.class public Landroid/net/ConnectivityModuleConnector;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;,
        Landroid/net/ConnectivityModuleConnector$DependenciesImpl;,
        Landroid/net/ConnectivityModuleConnector$Dependencies;,
        Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;,
        Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;
    }
.end annotation


# static fields
.field private static final CONFIG_ALWAYS_RATELIMIT_NETWORKSTACK_CRASH:Ljava/lang/String; = "always_ratelimit_networkstack_crash"

.field private static final CONFIG_MIN_CRASH_INTERVAL_MS:Ljava/lang/String; = "min_crash_interval"

.field private static final CONFIG_MIN_UPTIME_BEFORE_CRASH_MS:Ljava/lang/String; = "min_uptime_before_crash"

.field private static final DEFAULT_MIN_CRASH_INTERVAL_MS:J = 0x1499700L

.field private static final DEFAULT_MIN_UPTIME_BEFORE_CRASH_MS:J = 0x1b7740L

.field private static final IN_PROCESS_SUFFIX:Ljava/lang/String; = ".InProcess"

.field private static final PREFS_FILE:Ljava/lang/String; = "ConnectivityModuleConnector.xml"

.field private static final PREF_KEY_LAST_CRASH_TIME:Ljava/lang/String; = "lastcrash_time"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/net/ConnectivityModuleConnector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

.field private final mHealthListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Landroid/net/ConnectivityModuleConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    new-instance v0, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>(Landroid/net/ConnectivityModuleConnector$1;)V

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;-><init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 89
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    .line 90
    return-void
.end method

.method static synthetic access$100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1

    .line 288
    nop

    .line 289
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 290
    if-nez p0, :cond_0

    .line 294
    return-void

    .line 291
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Networking module does not have permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getInstance()Landroid/net/ConnectivityModuleConnector;
    .locals 2

    const-class v0, Landroid/net/ConnectivityModuleConnector;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Landroid/net/ConnectivityModuleConnector;

    invoke-direct {v1}, Landroid/net/ConnectivityModuleConnector;-><init>()V

    sput-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    .line 99
    :cond_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .line 354
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 355
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "ConnectivityModuleConnector.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    return-object v0

    .line 358
    :catchall_0
    move-exception v0

    .line 359
    const-string v1, "Error loading shared preferences"

    invoke-direct {p0, v1, v0}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 384
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 391
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    iget-object p2, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter p2

    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 394
    monitor-exit p2

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 398
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    iget-object p2, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter p2

    .line 400
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 401
    monitor-exit p2

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2

    .line 405
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 408
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 298
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {v1, v0, v3}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 302
    const-string v7, "connectivity"

    const-string v8, "min_crash_interval"

    const-wide/32 v9, 0x1499700

    invoke-static {v7, v8, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 304
    const-string v9, "connectivity"

    const-string v10, "min_uptime_before_crash"

    const-wide/32 v11, 0x1b7740

    invoke-static {v9, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    .line 306
    const-string v11, "connectivity"

    const-string v12, "always_ratelimit_networkstack_crash"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 309
    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityModuleConnector;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 310
    invoke-direct {v1, v12}, Landroid/net/ConnectivityModuleConnector;->tryGetLastCrashTime(Landroid/content/SharedPreferences;)J

    move-result-wide v14

    .line 323
    sget-boolean v16, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/16 v17, 0x1

    if-eqz v16, :cond_0

    if-nez v11, :cond_0

    move/from16 v11, v17

    goto :goto_0

    :cond_0
    move v11, v13

    .line 324
    :goto_0
    cmp-long v3, v3, v9

    if-gez v3, :cond_1

    move/from16 v3, v17

    goto :goto_1

    :cond_1
    move v3, v13

    .line 325
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v4, v14, v9

    if-eqz v4, :cond_2

    cmp-long v4, v14, v5

    if-gez v4, :cond_2

    move/from16 v4, v17

    goto :goto_2

    :cond_2
    move v4, v13

    .line 326
    :goto_2
    if-eqz v4, :cond_3

    add-long/2addr v14, v7

    cmp-long v4, v5, v14

    if-gez v4, :cond_3

    move/from16 v13, v17

    .line 328
    :cond_3
    if-nez v11, :cond_6

    if-nez v3, :cond_4

    if-eqz v13, :cond_6

    .line 340
    :cond_4
    if-eqz v2, :cond_5

    .line 342
    iget-object v3, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 344
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :try_start_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;

    .line 346
    invoke-interface {v3, v2}, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;->onNetworkStackFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    goto :goto_3

    .line 344
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    :cond_5
    monitor-exit p0

    return-void

    .line 334
    :cond_6
    :try_start_5
    invoke-direct {v1, v12, v5, v6}, Landroid/net/ConnectivityModuleConnector;->tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V

    .line 335
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 297
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryGetLastCrashTime(Landroid/content/SharedPreferences;)J
    .locals 3

    .line 365
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 367
    :cond_0
    :try_start_0
    const-string v2, "lastcrash_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 368
    :catchall_0
    move-exception p1

    .line 369
    const-string v2, "Error getting last crash time"

    invoke-direct {p0, v2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    return-wide v0
.end method

.method private tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V
    .locals 1

    .line 375
    if-nez p1, :cond_0

    return-void

    .line 377
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "lastcrash_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    goto :goto_0

    .line 378
    :catchall_0
    move-exception p1

    .line 379
    const-string p2, "Error writing last crash time"

    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 416
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 107
    const-string v0, "Network stack init"

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V
    .locals 2

    .line 195
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting networking module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v2, 0x1

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 226
    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 229
    const-string p1, "Starting networking module in network_stack process"

    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    const-string p1, "Starting networking module in system_server process"

    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 234
    :goto_0
    const/4 p1, 0x0

    if-nez v1, :cond_1

    .line 235
    const-string p2, "Could not resolve the networking module"

    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    .line 239
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 243
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;

    invoke-direct {v2, p0, p2, p3, p1}, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;-><init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;Landroid/net/ConnectivityModuleConnector$1;)V

    const/16 p1, 0x41

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p1, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not bind to networking module in-process, or in app with "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 252
    :cond_2
    const-string p1, "Networking module service start requested"

    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 253
    return-void
.end method
