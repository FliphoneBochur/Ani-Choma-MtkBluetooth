.class public Lcom/android/bluetooth/hfp/HeadsetStackEvent;
.super Lcom/android/bluetooth/hfp/HeadsetMessageObject;
.source "HeadsetStackEvent.java"


# static fields
.field public static final EVENT_TYPE_ACTIVE_DEVICE_SWITCHED:I = 0x16

.field public static final EVENT_TYPE_ANSWER_CALL:I = 0x4

.field public static final EVENT_TYPE_AT_CHLD:I = 0xa

.field public static final EVENT_TYPE_AT_CIND:I = 0xc

.field public static final EVENT_TYPE_AT_CLCC:I = 0xe

.field public static final EVENT_TYPE_AT_COPS:I = 0xd

.field public static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field public static final EVENT_TYPE_BIA:I = 0x14

.field public static final EVENT_TYPE_BIEV:I = 0x13

.field public static final EVENT_TYPE_BIND:I = 0x12

.field public static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field public static final EVENT_TYPE_DIAL_CALL:I = 0x7

.field public static final EVENT_TYPE_HANGUP_CALL:I = 0x5

.field public static final EVENT_TYPE_KEY_PRESSED:I = 0x10

.field public static final EVENT_TYPE_NOISE_REDUCTION:I = 0x9

.field public static final EVENT_TYPE_NONE:I = 0x0

.field public static final EVENT_TYPE_SEND_DTMF:I = 0x8

.field public static final EVENT_TYPE_SUBSCRIBER_NUMBER_REQUEST:I = 0xb

.field public static final EVENT_TYPE_SWITCH_ACTIVE_DEVICE:I = 0x15

.field public static final EVENT_TYPE_UNKNOWN_AT:I = 0xf

.field public static final EVENT_TYPE_VOLUME_CHANGED:I = 0x6

.field public static final EVENT_TYPE_VR_STATE_CHANGED:I = 0x3

.field public static final EVENT_TYPE_WBS:I = 0x11


# instance fields
.field public final device:Landroid/bluetooth/BluetoothDevice;

.field public final type:I

.field public final valueInt:I

.field public final valueInt2:I

.field public final valueObject:Lcom/android/bluetooth/hfp/HeadsetMessageObject;

.field public final valueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILandroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 88
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IIILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V

    .line 89
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;-><init>()V

    .line 125
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    .line 126
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    .line 127
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt2:I

    .line 128
    iput-object p4, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueObject:Lcom/android/bluetooth/hfp/HeadsetMessageObject;

    .line 130
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Landroid/bluetooth/BluetoothDevice;

    iput-object p6, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 131
    return-void
.end method

.method public constructor <init>(IILandroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 76
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IIILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IIILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 110
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IIILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V

    .line 111
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    .line 99
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IIILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V

    .line 100
    return-void
.end method


# virtual methods
.method public buildString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 193
    if-nez p1, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->getTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v0, ", valInt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, ", valInt2="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt2:I

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v0, ", valString="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v0, ", valObject="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueObject:Lcom/android/bluetooth/hfp/HeadsetMessageObject;

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    const-string v0, ", device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    return-void
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 187
    const-string v0, "UNKNOWN"

    return-object v0

    .line 185
    :pswitch_0
    const-string v0, "EVENT_TYPE_ACTIVE_DEVICE_SWITCHED"

    return-object v0

    .line 183
    :pswitch_1
    const-string v0, "EVENT_TYPE_SWITCH_ACTIVE_DEVICE"

    return-object v0

    .line 181
    :pswitch_2
    const-string v0, "EVENT_TYPE_BIA"

    return-object v0

    .line 179
    :pswitch_3
    const-string v0, "EVENT_TYPE_BIEV"

    return-object v0

    .line 177
    :pswitch_4
    const-string v0, "EVENT_TYPE_BIND"

    return-object v0

    .line 175
    :pswitch_5
    const-string v0, "EVENT_TYPE_WBS"

    return-object v0

    .line 173
    :pswitch_6
    const-string v0, "EVENT_TYPE_KEY_PRESSED"

    return-object v0

    .line 171
    :pswitch_7
    const-string v0, "EVENT_TYPE_UNKNOWN_AT"

    return-object v0

    .line 169
    :pswitch_8
    const-string v0, "EVENT_TYPE_AT_CLCC"

    return-object v0

    .line 167
    :pswitch_9
    const-string v0, "EVENT_TYPE_AT_COPS"

    return-object v0

    .line 165
    :pswitch_a
    const-string v0, "EVENT_TYPE_AT_CIND"

    return-object v0

    .line 163
    :pswitch_b
    const-string v0, "EVENT_TYPE_SUBSCRIBER_NUMBER_REQUEST"

    return-object v0

    .line 161
    :pswitch_c
    const-string v0, "EVENT_TYPE_AT_CHLD"

    return-object v0

    .line 159
    :pswitch_d
    const-string v0, "EVENT_TYPE_NOISE_REDUCTION"

    return-object v0

    .line 157
    :pswitch_e
    const-string v0, "EVENT_TYPE_SEND_DTMF"

    return-object v0

    .line 155
    :pswitch_f
    const-string v0, "EVENT_TYPE_DIAL_CALL"

    return-object v0

    .line 153
    :pswitch_10
    const-string v0, "EVENT_TYPE_VOLUME_CHANGED"

    return-object v0

    .line 151
    :pswitch_11
    const-string v0, "EVENT_TYPE_HANGUP_CALL"

    return-object v0

    .line 149
    :pswitch_12
    const-string v0, "EVENT_TYPE_ANSWER_CALL"

    return-object v0

    .line 147
    :pswitch_13
    const-string v0, "EVENT_TYPE_VR_STATE_CHANGED"

    return-object v0

    .line 145
    :pswitch_14
    const-string v0, "EVENT_TYPE_AUDIO_STATE_CHANGED"

    return-object v0

    .line 143
    :pswitch_15
    const-string v0, "EVENT_TYPE_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 141
    :pswitch_16
    const-string v0, "EVENT_TYPE_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
