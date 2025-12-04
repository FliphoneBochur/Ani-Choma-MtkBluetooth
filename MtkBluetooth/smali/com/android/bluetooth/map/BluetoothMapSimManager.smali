.class public Lcom/android/bluetooth/map/BluetoothMapSimManager;
.super Ljava/lang/Object;
.source "BluetoothMapSimManager.java"


# static fields
.field public static final INVALID_SUBID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapSimManager"

.field private static sSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static sTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubCount:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapSimManager$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapSimManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapSimManager;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/map/BluetoothMapSimManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100()Landroid/telephony/SubscriptionManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/map/BluetoothMapSimManager;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    return p1
.end method

.method public static getFristSubID()J
    .locals 2

    .line 101
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 102
    nop

    .line 103
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 109
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getNumberBySubID(J)Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 114
    long-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getSubInfoNumber()I
    .locals 1

    .line 90
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 91
    nop

    .line 92
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidSubId(J)Z
    .locals 3

    .line 120
    nop

    .line 121
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    .line 122
    nop

    .line 123
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 127
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 128
    const/4 p0, 0x1

    .line 129
    goto :goto_1

    .line 131
    :cond_0
    goto :goto_0

    .line 134
    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public getSimIdFromOriginator(Ljava/lang/String;)J
    .locals 2

    .line 77
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSingleSubId()J

    move-result-wide v0

    return-wide v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSimList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSingleSubId()J
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 69
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSubCount()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 34
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    .line 35
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 36
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapSimManager;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 37
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    .line 38
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubCount:I

    .line 40
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSimManager;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    return-void
.end method
