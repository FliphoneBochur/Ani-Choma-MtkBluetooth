.class final Lcom/android/bluetooth/a2dpsink/StackEvent;
.super Ljava/lang/Object;
.source "StackEvent.java"


# static fields
.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field static final EVENT_TYPE_AUDIO_CONFIG_CHANGED:I = 0x3

.field static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field static final EVENT_TYPE_NONE:I


# instance fields
.field mChannelCount:I

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mSampleRate:I

.field mState:I

.field mType:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mType:I

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 40
    iput v0, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    .line 41
    iput v0, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mSampleRate:I

    .line 42
    iput v0, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mChannelCount:I

    .line 45
    iput p1, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mType:I

    .line 46
    return-void
.end method

.method static audioConfigChanged(Landroid/bluetooth/BluetoothDevice;II)Lcom/android/bluetooth/a2dpsink/StackEvent;
    .locals 2

    .line 78
    new-instance v0, Lcom/android/bluetooth/a2dpsink/StackEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/a2dpsink/StackEvent;-><init>(I)V

    .line 79
    iput-object p0, v0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 80
    iput p1, v0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mSampleRate:I

    .line 81
    iput p2, v0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mChannelCount:I

    .line 82
    return-object v0
.end method

.method static audioStateChanged(Landroid/bluetooth/BluetoothDevice;I)Lcom/android/bluetooth/a2dpsink/StackEvent;
    .locals 2

    .line 70
    new-instance v0, Lcom/android/bluetooth/a2dpsink/StackEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/a2dpsink/StackEvent;-><init>(I)V

    .line 71
    iput-object p0, v0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 72
    iput p1, v0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    .line 73
    return-object v0
.end method

.method static connectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)Lcom/android/bluetooth/a2dpsink/StackEvent;
    .locals 2

    .line 63
    new-instance v0, Lcom/android/bluetooth/a2dpsink/StackEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/a2dpsink/StackEvent;-><init>(I)V

    .line 64
    iput-object p0, v0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    iput p1, v0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    .line 66
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 58
    const-string v0, "Unknown"

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_TYPE_AUDIO_CONFIG_CHANGED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_TYPE_AUDIO_STATE_CHANGED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_TYPE_CONNECTION_STATE_CHANGED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
