.class public Lcom/android/bluetooth/a2dp/A2dpStackEvent;
.super Ljava/lang/Object;
.source "A2dpStackEvent.java"


# static fields
.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field public static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field public static final EVENT_TYPE_CODEC_CONFIG_CHANGED:I = 0x3

.field public static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_NONE:I


# instance fields
.field public codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

.field public device:Landroid/bluetooth/BluetoothDevice;

.field public type:I

.field public valueInt:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    .line 46
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    .line 50
    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    .line 51
    return-void
.end method

.method private static eventTypeToString(I)Ljava/lang/String;
    .locals 2

    .line 68
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_TYPE_UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    const-string p0, "EVENT_TYPE_CODEC_CONFIG_CHANGED"

    return-object p0

    .line 74
    :cond_1
    const-string p0, "EVENT_TYPE_AUDIO_STATE_CHANGED"

    return-object p0

    .line 72
    :cond_2
    const-string p0, "EVENT_TYPE_CONNECTION_STATE_CHANGED"

    return-object p0

    .line 70
    :cond_3
    const-string p0, "EVENT_TYPE_NONE"

    return-object p0
.end method

.method private static eventTypeValueIntToString(II)Ljava/lang/String;
    .locals 2

    .line 83
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    .line 107
    goto :goto_0

    .line 105
    :cond_1
    const-string p0, "STARTED"

    return-object p0

    .line 103
    :cond_2
    const-string p0, "STOPPED"

    return-object p0

    .line 101
    :cond_3
    const-string p0, "REMOTE_SUSPEND"

    return-object p0

    .line 85
    :cond_4
    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    const/4 p0, 0x3

    if-eq p1, p0, :cond_5

    .line 95
    nop

    .line 113
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_5
    const-string p0, "DISCONNECTING"

    return-object p0

    .line 91
    :cond_6
    const-string p0, "CONNECTED"

    return-object p0

    .line 89
    :cond_7
    const-string p0, "CONNECTING"

    return-object p0

    .line 87
    :cond_8
    const-string p0, "DISCONNECTED"

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2dpStackEvent {type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", value1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    iget v3, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->eventTypeValueIntToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", codecStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
