.class Lcom/android/bluetooth/gatt/ContextMap;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ContextMap$App;,
        Lcom/android/bluetooth/gatt/ContextMap$Connection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtGatt.ContextMap"


# instance fields
.field mAppScanStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/bluetooth/gatt/AppScanStats;",
            ">;"
        }
    .end annotation
.end field

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.App;>;"
        }
    .end annotation
.end field

.field mConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.Connection;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mAppScanStats:Ljava/util/HashMap;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method add(Ljava/util/UUID;Landroid/os/WorkSource;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/WorkSource;",
            "TC;TT;",
            "Lcom/android/bluetooth/gatt/GattService;",
            ")",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.App;"
        }
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 185
    invoke-virtual {p5}, Lcom/android/bluetooth/gatt/GattService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown App (UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    .line 186
    :cond_0
    move-object v7, v1

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mAppScanStats:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/AppScanStats;

    .line 192
    if-nez v2, :cond_1

    .line 193
    new-instance v2, Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-direct {v2, v7, p2, p0, p5}, Lcom/android/bluetooth/gatt/AppScanStats;-><init>(Ljava/lang/String;Landroid/os/WorkSource;Lcom/android/bluetooth/gatt/ContextMap;Lcom/android/bluetooth/gatt/GattService;)V

    .line 194
    iget-object p2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mAppScanStats:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v2

    goto :goto_1

    .line 192
    :cond_1
    move-object p2, v2

    .line 196
    :goto_1
    new-instance p5, Lcom/android/bluetooth/gatt/ContextMap$App;

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/gatt/ContextMap$App;-><init>(Lcom/android/bluetooth/gatt/ContextMap;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/android/bluetooth/gatt/AppScanStats;)V

    .line 197
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    .line 199
    monitor-exit v1

    return-object p5

    .line 200
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addConnection(IILjava/lang/String;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v0

    .line 257
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    new-instance v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/android/bluetooth/gatt/ContextMap$Connection;-><init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addressByConnId(I)Ljava/lang/String;
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 430
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 432
    iget v2, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    .line 433
    iget-object p1, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    return-object p1

    .line 435
    :cond_0
    goto :goto_0

    .line 436
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method clear()V
    .locals 4

    .line 455
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 457
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 459
    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 460
    iget-object v2, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 462
    goto :goto_0

    .line 463
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v1

    .line 466
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 467
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 463
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 411
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 412
    return-object v1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 416
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 418
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v3, p1, :cond_1

    .line 419
    iget p1, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 421
    :cond_1
    goto :goto_0

    .line 422
    :cond_2
    return-object v1
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mAppScanStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mAppScanStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 488
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/AppScanStats;

    .line 492
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->dumpToString(Ljava/lang/StringBuilder;)V

    .line 493
    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method getAllAppsIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 244
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 246
    iget v3, v3, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    goto :goto_0

    .line 248
    :cond_0
    monitor-exit v1

    .line 249
    return-object v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 366
    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    return-object p1

    .line 369
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getAppScanStatsByUid(I)Lcom/android/bluetooth/gatt/AppScanStats;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mAppScanStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/gatt/AppScanStats;

    return-object p1
.end method

.method getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.App;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 399
    iget v2, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    .line 400
    iget p1, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    return-object p1

    .line 402
    :cond_0
    goto :goto_0

    .line 403
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getByContextInfo(Ljava/lang/Object;)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.App;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 350
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 352
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    monitor-exit v0

    return-object v2

    .line 355
    :cond_0
    goto :goto_0

    .line 356
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context not found for info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ContextMap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 p1, 0x0

    return-object p1

    .line 356
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.App;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 301
    iget v3, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v3, p1, :cond_0

    .line 302
    monitor-exit v0

    return-object v2

    .line 304
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context not found for ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ContextMap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 p1, 0x0

    return-object p1

    .line 305
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getByName(Ljava/lang/String;)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.App;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 335
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    monitor-exit v0

    return-object v2

    .line 338
    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context not found for name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ContextMap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 p1, 0x0

    return-object p1

    .line 339
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.App;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 318
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    monitor-exit v0

    return-object v2

    .line 321
    :cond_0
    goto :goto_0

    .line 322
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context not found for UUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ContextMap"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 p1, 0x0

    return-object p1

    .line 322
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getConnectedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 385
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 387
    iget-object v2, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    goto :goto_0

    .line 389
    :cond_0
    return-object v0
.end method

.method getConnectedMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 476
    iget v3, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    goto :goto_0

    .line 478
    :cond_0
    return-object v0
.end method

.method getConnectionByApp(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "TC;TT;>.Connection;>;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 442
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 444
    iget v3, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v3, p1, :cond_0

    .line 445
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    return-object v0
.end method

.method remove(I)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 229
    iget v3, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v3, p1, :cond_0

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->removeConnectionsByAppId(I)V

    .line 231
    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 232
    iget-object p1, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 234
    goto :goto_1

    .line 236
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    :goto_1
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method remove(Ljava/util/UUID;)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 211
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 213
    iget-object p1, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 215
    goto :goto_1

    .line 217
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    :goto_1
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeConnection(II)V
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter p1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 270
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 272
    iget v1, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v1, p2, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 274
    goto :goto_1

    .line 276
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    :goto_1
    monitor-exit p1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method removeConnectionsByAppId(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 287
    iget v1, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v1, p1, :cond_0

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 290
    :cond_0
    goto :goto_0

    .line 291
    :cond_1
    return-void
.end method
