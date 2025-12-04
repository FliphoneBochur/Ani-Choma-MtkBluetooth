.class public Lcom/android/bluetooth/avrcp/AvrcpEventLogger;
.super Ljava/lang/Object;
.source "AvrcpEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;
    }
.end annotation


# instance fields
.field private final mEvents:Lcom/google/common/collect/EvictingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/EvictingQueue<",
            "Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/common/collect/EvictingQueue;->create(I)Lcom/google/common/collect/EvictingQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->mEvents:Lcom/google/common/collect/EvictingQueue;

    .line 49
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->mTitle:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method declared-synchronized add(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;-><init>(Lcom/android/bluetooth/avrcp/AvrcpEventLogger;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->mEvents:Lcom/google/common/collect/EvictingQueue;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/EvictingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dump(Ljava/lang/StringBuilder;)V
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    const-string v0, "Avrcp "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->mEvents:Lcom/google/common/collect/EvictingQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/EvictingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;

    .line 76
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger$Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 63
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized logd(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->add(Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 58
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->add(Ljava/lang/String;)V

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
