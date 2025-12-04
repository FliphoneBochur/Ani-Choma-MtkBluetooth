.class final Lcom/android/bluetooth/avrcpcontroller/StackEvent;
.super Ljava/lang/Object;
.source "StackEvent.java"


# static fields
.field static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field static final EVENT_TYPE_NONE:I = 0x0

.field static final EVENT_TYPE_RC_FEATURES:I = 0x2


# instance fields
.field mBrowsingConnected:Z

.field mFeatures:I

.field mRemoteControlConnected:Z

.field mType:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mType:I

    .line 30
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mType:I

    .line 31
    return-void
.end method

.method static connectionStateChanged(ZZ)Lcom/android/bluetooth/avrcpcontroller/StackEvent;
    .locals 2

    .line 47
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/StackEvent;-><init>(I)V

    .line 48
    iput-boolean p0, v0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mRemoteControlConnected:Z

    .line 49
    iput-boolean p1, v0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mBrowsingConnected:Z

    .line 50
    return-object v0
.end method

.method static rcFeatures(I)Lcom/android/bluetooth/avrcpcontroller/StackEvent;
    .locals 2

    .line 54
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/StackEvent;-><init>(I)V

    .line 55
    iput p0, v0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mFeatures:I

    .line 56
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 41
    const-string v0, "Unknown"

    return-object v0

    .line 39
    :cond_0
    const-string v0, "EVENT_TYPE_RC_FEATURES"

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_TYPE_CONNECTION_STATE_CHANGED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/avrcpcontroller/StackEvent;->mRemoteControlConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
