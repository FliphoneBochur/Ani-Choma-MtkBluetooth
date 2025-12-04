.class public Lcom/android/bluetooth/map/BluetoothMapAppObserver;
.super Ljava/lang/Object;
.source "BluetoothMapAppObserver.java"


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAppObserver"

.field private static final V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFullList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;"
        }
    .end annotation
.end field

.field mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

.field mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private mObserverMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredReceiver:Z

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    .line 46
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    .line 63
    new-instance p1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parsePackages(Z)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->createReceiver()V

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->initObservers()V

    .line 67
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->handleAccountChanges(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p0

    return-object p0
.end method

.method private createReceiver()V
    .locals 4

    .line 240
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    const-string v1, "BluetoothMapAppObserver"

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "createReceiver()\n"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 247
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    if-nez v3, :cond_1

    .line 333
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v2, "Unable to register MapAppObserver receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    :cond_1
    :goto_0
    return-void
.end method

.method private deinitObservers()V
    .locals 2

    .line 231
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "BluetoothMapAppObserver"

    const-string v1, "deinitObservers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 236
    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method

.method private getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 5

    .line 71
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    const-string v1, "BluetoothMapAppObserver"

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApp(): Looking for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 75
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v3, :cond_1

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Comparing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz p1, :cond_2

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    return-object v2

    .line 84
    :cond_3
    goto :goto_0

    .line 85
    :cond_4
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz p1, :cond_5

    .line 86
    const-string p1, "  NOT FOUND!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleAccountChanges(Ljava/lang/String;)V
    .locals 11

    .line 93
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    const-string v1, "BluetoothMapAppObserver"

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAccountChanges (packageNameWithProvider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getApp(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    .line 99
    if-eqz p1, :cond_c

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mLoader:Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 102
    nop

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 105
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 106
    if-nez v2, :cond_1

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :cond_1
    if-nez v4, :cond_2

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 115
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 116
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 118
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v7, :cond_3

    .line 122
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 124
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v7, :cond_3

    .line 125
    const-string v7, "    UPDATE_MAS_INSTANCES_ACCOUNT_RENAMED"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    iget-boolean v7, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    iget-boolean v8, v8, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v7, v8, :cond_6

    .line 130
    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 134
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_6

    .line 135
    const-string v0, "UPDATE_MAS_INSTANCES_ACCOUNT_ADDED isChecked changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 142
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_6

    .line 143
    const-string v0, "    UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED isChecked changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    :cond_5
    goto :goto_1

    .line 151
    :cond_6
    :goto_2
    goto :goto_0

    .line 153
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 154
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v2, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 156
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v2, :cond_8

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_8
    goto :goto_3

    .line 161
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 162
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 164
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v2, :cond_a

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    UPDATE_MAS_INSTANCES_ACCOUNT_ADDED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_a
    goto :goto_4

    .line 169
    :cond_b
    goto :goto_5

    .line 170
    :cond_c
    const-string p1, "Received change notification on package not registered for notifications!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_5
    return-void
.end method

.method private initObservers()V
    .locals 2

    .line 222
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "BluetoothMapAppObserver"

    const-string v1, "initObservers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    .line 227
    goto :goto_0

    .line 228
    :cond_1
    return-void
.end method

.method private removeReceiver()V
    .locals 3

    .line 342
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    const-string v1, "BluetoothMapAppObserver"

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "removeReceiver()\n"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    if-eqz v0, :cond_1

    .line 347
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mRegisteredReceiver:Z

    .line 348
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    const-string v2, "Unable to unregister mapAppObserver receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAllAccountItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .line 389
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "BluetoothMapAppObserver"

    const-string v1, "getAllAccountItems()\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 394
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 395
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 396
    goto :goto_0

    .line 397
    :cond_1
    return-object v0
.end method

.method public getEnabledAccountItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .line 361
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->D:Z

    const-string v1, "BluetoothMapAppObserver"

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "getEnabledAccountItems()\n"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 366
    if-eqz v3, :cond_4

    .line 367
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mFullList:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 368
    if-eqz v3, :cond_3

    .line 369
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 370
    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v5, :cond_1

    .line 371
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_2

    .line 375
    :cond_3
    const-string v3, "getEnabledAccountItems() - No AccountList enabled\n"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_2
    goto :goto_3

    .line 378
    :cond_4
    const-string v3, "getEnabledAccountItems() - No Account in App enabled\n"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_3
    goto :goto_0

    .line 381
    :cond_5
    return-object v0
.end method

.method public registerObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 3

    .line 182
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 183
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerObserver for URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapAppObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapAppObserver;Landroid/os/Handler;)V

    .line 207
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->deinitObservers()V

    .line 406
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->removeReceiver()V

    .line 407
    return-void
.end method

.method public unregisterObserver(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 3

    .line 213
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 214
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->V:Z

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterObserver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapAppObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->mObserverMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method
