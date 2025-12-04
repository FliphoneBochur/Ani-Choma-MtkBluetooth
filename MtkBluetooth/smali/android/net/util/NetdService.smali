.class public Landroid/net/util/NetdService;
.super Ljava/lang/Object;
.source "NetdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/NetdService$NetdCommand;
    }
.end annotation


# static fields
.field private static final BASE_TIMEOUT_MS:J = 0x64L

.field private static final MAX_TIMEOUT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Landroid/net/util/NetdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/net/INetd;
    .locals 2

    .line 114
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public static get(J)Landroid/net/INetd;
    .locals 8

    .line 76
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    if-lez v2, :cond_1

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p0

    goto :goto_0

    .line 80
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    .line 82
    :goto_0
    move-wide p0, v0

    .line 84
    :goto_1
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    return-object v4

    .line 89
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 90
    cmp-long v6, v4, v0

    if-gtz v6, :cond_3

    .line 99
    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_3
    const-wide/16 v6, 0x64

    add-long/2addr p0, v6

    const-wide/16 v6, 0x3e8

    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 94
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 96
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    .line 98
    :goto_3
    goto :goto_1
.end method

.method public static getInstance()Landroid/net/INetd;
    .locals 3

    .line 50
    nop

    .line 51
    const-string v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    const-string v2, "WARNING: returning null INetd instance."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-object v0
.end method

.method public static run(Landroid/net/util/NetdService$NetdCommand;)V
    .locals 4

    .line 128
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/util/NetdService$NetdCommand;->run(Landroid/net/INetd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error communicating with netd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    goto :goto_0
.end method
