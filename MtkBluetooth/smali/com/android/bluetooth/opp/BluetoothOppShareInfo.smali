.class public Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.super Ljava/lang/Object;
.source "BluetoothOppShareInfo.java"


# instance fields
.field public mConfirm:I

.field public mCurrentBytes:J

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:J

.field public mUri:Landroid/net/Uri;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V
    .locals 3

    .line 73
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    move v1, p1

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 75
    move-object v1, p2

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 76
    move-object v1, p3

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 77
    move-object v1, p4

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 78
    move-object v1, p5

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 79
    move v1, p6

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 80
    move-object v1, p7

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 81
    move v1, p8

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 82
    move v1, p9

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 83
    move v1, p10

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 84
    move-wide v1, p11

    iput-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 85
    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 86
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 87
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 88
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 2

    .line 109
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1
    return v1
.end method

.method public isObsolete()Z
    .locals 2

    .line 122
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0xc0

    if-ne v1, v0, :cond_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadyToStart()Z
    .locals 3

    .line 95
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/16 v1, 0xbe

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 96
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 97
    return v2

    .line 99
    :cond_0
    if-ne v0, v2, :cond_1

    .line 100
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v1, :cond_1

    .line 102
    return v2

    .line 105
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
