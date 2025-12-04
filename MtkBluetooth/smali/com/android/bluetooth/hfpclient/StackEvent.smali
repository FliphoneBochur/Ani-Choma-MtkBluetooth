.class public Lcom/android/bluetooth/hfpclient/StackEvent;
.super Ljava/lang/Object;
.source "StackEvent.java"


# static fields
.field public static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field public static final EVENT_TYPE_BATTERY_LEVEL:I = 0x7

.field public static final EVENT_TYPE_CALL:I = 0x9

.field public static final EVENT_TYPE_CALLHELD:I = 0xb

.field public static final EVENT_TYPE_CALLSETUP:I = 0xa

.field public static final EVENT_TYPE_CALL_WAITING:I = 0xe

.field public static final EVENT_TYPE_CLIP:I = 0xd

.field public static final EVENT_TYPE_CMD_RESULT:I = 0x11

.field public static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field public static final EVENT_TYPE_CURRENT_CALLS:I = 0xf

.field public static final EVENT_TYPE_IN_BAND_RINGTONE:I = 0x13

.field public static final EVENT_TYPE_NETWORK_SIGNAL:I = 0x6

.field public static final EVENT_TYPE_NETWORK_STATE:I = 0x4

.field public static final EVENT_TYPE_NONE:I = 0x0

.field public static final EVENT_TYPE_OPERATOR_NAME:I = 0x8

.field public static final EVENT_TYPE_RESP_AND_HOLD:I = 0xc

.field public static final EVENT_TYPE_RING_INDICATION:I = 0x15

.field public static final EVENT_TYPE_ROAMING_STATE:I = 0x5

.field public static final EVENT_TYPE_SUBSCRIBER_INFO:I = 0x12

.field public static final EVENT_TYPE_UNKNOWN_EVENT:I = 0x16

.field public static final EVENT_TYPE_VOLUME_CHANGED:I = 0x10

.field public static final EVENT_TYPE_VR_STATE_CHANGED:I = 0x3

.field public static final STACK_EVENT:I = 0x64


# instance fields
.field public device:Landroid/bluetooth/BluetoothDevice;

.field public type:I

.field public valueInt:I

.field public valueInt2:I

.field public valueInt3:I

.field public valueInt4:I

.field public valueString:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    .line 53
    iput v0, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 54
    iput v0, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    .line 55
    iput v0, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt3:I

    .line 56
    iput v0, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt4:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 61
    iput p1, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    .line 62
    return-void
.end method

.method private static eventTypeToString(I)Ljava/lang/String;
    .locals 2

    .line 80
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_TYPE_UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :pswitch_0
    const-string p0, "EVENT_TYPE_SUBSCRIBER_INFO"

    return-object p0

    .line 112
    :pswitch_1
    const-string p0, "EVENT_TYPE_CMD_RESULT"

    return-object p0

    .line 110
    :pswitch_2
    const-string p0, "EVENT_TYPE_VOLUME_CHANGED"

    return-object p0

    .line 108
    :pswitch_3
    const-string p0, "EVENT_TYPE_CURRENT_CALLS"

    return-object p0

    .line 106
    :pswitch_4
    const-string p0, "EVENT_TYPE_CALL_WAITING"

    return-object p0

    .line 104
    :pswitch_5
    const-string p0, "EVENT_TYPE_CLIP"

    return-object p0

    .line 116
    :pswitch_6
    const-string p0, "EVENT_TYPE_RESP_AND_HOLD"

    return-object p0

    .line 102
    :pswitch_7
    const-string p0, "EVENT_TYPE_CALLHELD"

    return-object p0

    .line 100
    :pswitch_8
    const-string p0, "EVENT_TYPE_CALLSETUP"

    return-object p0

    .line 98
    :pswitch_9
    const-string p0, "EVENT_TYPE_CALL"

    return-object p0

    .line 96
    :pswitch_a
    const-string p0, "EVENT_TYPE_OPERATOR_NAME"

    return-object p0

    .line 94
    :pswitch_b
    const-string p0, "EVENT_TYPE_BATTERY_LEVEL"

    return-object p0

    .line 92
    :pswitch_c
    const-string p0, "EVENT_TYPE_NETWORK_SIGNAL"

    return-object p0

    .line 90
    :pswitch_d
    const-string p0, "EVENT_TYPE_ROAMING_STATE"

    return-object p0

    .line 88
    :pswitch_e
    const-string p0, "EVENT_TYPE_NETWORK_STATE"

    return-object p0

    .line 118
    :cond_0
    const-string p0, "EVENT_TYPE_RING_INDICATION"

    return-object p0

    .line 86
    :cond_1
    const-string p0, "EVENT_TYPE_AUDIO_STATE_CHANGED"

    return-object p0

    .line 84
    :cond_2
    const-string p0, "EVENT_TYPE_CONNECTION_STATE_CHANGED"

    return-object p0

    .line 82
    :cond_3
    const-string p0, "EVENT_TYPE_NONE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StackEvent {type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/StackEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", value1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", value2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", value3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", value4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", string: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
