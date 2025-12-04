.class public Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;
.super Ljava/lang/Object;
.source "BrowsablePlayerConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:J = 0x2710L

.field private static final DEBUG:Z

.field private static final MSG_CONNECT_CB:I = 0x1

.field private static final MSG_GET_FOLDER_ITEMS_CB:I = 0x0

.field private static final MSG_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AvrcpBrowsablePlayerConnector"

.field private static sInjectConnector:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;


# instance fields
.field private mCallback:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPendingPlayers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    nop

    .line 48
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->DEBUG:Z

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mResults:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mPendingPlayers:Ljava/util/Set;

    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mContext:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mCallback:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;

    .line 117
    new-instance p1, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;

    invoke-direct {p1, p0, p2}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$1;-><init>(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/Set;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mPendingPlayers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mResults:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->removePendingPlayers()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mCallback:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static connectToPlayers(Landroid/content/Context;Landroid/os/Looper;Ljava/util/List;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;)Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;",
            ")",
            "Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->sInjectConnector:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    if-eqz v0, :cond_0

    .line 78
    return-object v0

    .line 80
    :cond_0
    if-nez p3, :cond_1

    .line 81
    const-string p0, "AvrcpBrowsablePlayerConnector"

    const-string p1, "Null callback passed"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_1
    new-instance v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector$PlayerListCallback;)V

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 89
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->wrap(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    move-result-object v1

    .line 94
    iget-object v2, v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mPendingPlayers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$fdgNUAOz5VZJmQj_Mu8ExJ_72XM;

    invoke-direct {v2, p3, v0}, Lcom/android/bluetooth/avrcp/-$$Lambda$BrowsablePlayerConnector$fdgNUAOz5VZJmQj_Mu8ExJ_72XM;-><init>(Landroid/content/pm/ResolveInfo;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->connect(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$ConnectionCallback;)Z

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    iget-object p0, v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 110
    iget-object p1, v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    return-object v0
.end method

.method static synthetic lambda$connectToPlayers$0(Landroid/content/pm/ResolveInfo;Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;ILcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;)V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Browse player callback called: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : status="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AvrcpBrowsablePlayerConnector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object p0, p1, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 103
    iput p2, p0, Landroid/os/Message;->arg1:I

    .line 104
    iput-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    iget-object p1, p1, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method private removePendingPlayers()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mPendingPlayers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    .line 186
    sget-boolean v2, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AvrcpBrowsablePlayerConnector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;->disconnect()V

    .line 188
    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mPendingPlayers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 190
    return-void
.end method

.method private static setInstanceForTesting(Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;)V
    .locals 0

    .line 68
    invoke-static {}, Lcom/android/bluetooth/Utils;->enforceInstrumentationTestMode()V

    .line 69
    sput-object p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->sInjectConnector:Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;

    .line 70
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mPendingPlayers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth turn off with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mPendingPlayers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending player(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvrcpBrowsablePlayerConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->removePendingPlayers()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/BrowsablePlayerConnector;->mHandler:Landroid/os/Handler;

    .line 199
    :cond_0
    return-void
.end method
