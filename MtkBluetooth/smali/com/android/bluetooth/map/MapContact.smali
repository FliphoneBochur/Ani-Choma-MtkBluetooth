.class public Lcom/android/bluetooth/map/MapContact;
.super Ljava/lang/Object;
.source "MapContact.java"


# instance fields
.field private final mId:J

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    .line 29
    iput-object p3, p0, Lcom/android/bluetooth/map/MapContact;->mName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static create(JLjava/lang/String;)Lcom/android/bluetooth/map/MapContact;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/bluetooth/map/MapContact;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/map/MapContact;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/map/MapContact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getXBtUid()Lcom/android/bluetooth/SignedLongLong;
    .locals 5

    .line 52
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 53
    new-instance v4, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    return-object v4

    .line 55
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXBtUidString()Ljava/lang/String;
    .locals 5

    .line 45
    iget-wide v0, p0, Lcom/android/bluetooth/map/MapContact;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 46
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/map/MapContact;->mName:Ljava/lang/String;

    return-object v0
.end method
