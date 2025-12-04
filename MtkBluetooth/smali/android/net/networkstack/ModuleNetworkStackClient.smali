.class public Landroid/net/networkstack/ModuleNetworkStackClient;
.super Landroid/net/networkstack/NetworkStackClientBase;
.source "ModuleNetworkStackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/net/networkstack/NetworkStackClientBase;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;
    .locals 3

    const-class p0, Landroid/net/networkstack/ModuleNetworkStackClient;

    monitor-enter p0

    .line 48
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_0

    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    :cond_0
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-direct {v0}, Landroid/net/networkstack/ModuleNetworkStackClient;-><init>()V

    sput-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 57
    invoke-direct {v0}, Landroid/net/networkstack/ModuleNetworkStackClient;->startPolling()V

    .line 59
    :cond_1
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 51
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModuleNetworkStackClient is not supported on API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static declared-synchronized resetInstanceForTest()V
    .locals 2

    const-class v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    monitor-enter v0

    .line 64
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startPolling()V
    .locals 3

    .line 70
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/networkstack/ModuleNetworkStackClient;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 76
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;-><init>(Landroid/net/networkstack/ModuleNetworkStackClient;Landroid/net/networkstack/ModuleNetworkStackClient$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method
