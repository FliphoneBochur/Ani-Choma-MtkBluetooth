.class public Lcom/android/bluetooth/opp/BluetoothOppFileProvider;
.super Landroidx/core/content/FileProvider;
.source "BluetoothOppFileProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothOppFileProvider"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mProviderInfo:Landroid/content/pm/ProviderInfo;

.field private mRegisteredReceiver:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mProviderInfo:Landroid/content/pm/ProviderInfo;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mRegisteredReceiver:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mInitialized:Z

    .line 45
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppFileProvider$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppFileProvider;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppFileProvider;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppFileProvider;)Landroid/content/pm/ProviderInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mProviderInfo:Landroid/content/pm/ProviderInfo;

    return-object p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    .line 111
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 112
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 116
    invoke-static {p0, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 3

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mProviderInfo:Landroid/content/pm/ProviderInfo;

    .line 67
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mRegisteredReceiver:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    iput-boolean p2, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mRegisteredReceiver:Z

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 74
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mInitialized:Z

    if-nez p1, :cond_1

    .line 77
    const-string p1, "BluetoothOppFileProvider"

    const-string v0, "Initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mProviderInfo:Landroid/content/pm/ProviderInfo;

    invoke-super {p0, p1, v0}, Landroidx/core/content/FileProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 80
    iput-boolean p2, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mInitialized:Z

    .line 82
    :cond_1
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mRegisteredReceiver:Z

    if-eqz p1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->mRegisteredReceiver:Z

    .line 87
    :cond_2
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
