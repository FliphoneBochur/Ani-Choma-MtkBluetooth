.class public Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;,
        Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
    }
.end annotation


# static fields
.field static final BROADCAST_ACTIVE_DEVICE_CHANGE:I = 0x11

.field static final BROADCAST_ACTIVE_DEVICE_CHANGE_DELAY_TIME_MSCE:I = 0x3c

.field static final BROADCAST_AUDIO_STATE_CHANGE:I = 0x12

.field static final BROADCAST_AUDIO_STATE_CHANGE_DELAY_TIME_MSCE:I = 0x50

.field static final CALL_STATE_CHANGED:I = 0x9

.field private static final CLCC_RSP_TIMEOUT:I = 0x68

.field private static final CLCC_RSP_TIMEOUT_MS:I = 0x1388

.field static final CONNECT:I = 0x1

.field static final CONNECT_AUDIO:I = 0x3

.field static final CONNECT_AUDIO_DELAY_AFTER_RECONNECT_TIME_MSEC:I = 0x14

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z

.field private static final DEFAULT_AG_INDICATOR_ENABLE_STATE:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

.field static final DEVICE_STATE_CHANGED:I = 0xa

.field static final DIALING_OUT_RESULT:I = 0xe

.field static final DISCONNECT:I = 0x2

.field static final DISCONNECT_AUDIO:I = 0x4

.field private static final HEADSET_AUDIO_FEATURE_OFF:Ljava/lang/String; = "off"

.field private static final HEADSET_AUDIO_FEATURE_ON:Ljava/lang/String; = "on"

.field private static final HEADSET_NAME:Ljava/lang/String; = "bt_headset_name"

.field private static final HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field private static final HEADSET_VGS:Ljava/lang/String; = "bt_headset_vgs"

.field private static final HEADSET_WBS:Ljava/lang/String; = "bt_wbs"

.field static final INTENT_CONNECTION_ACCESS_REPLY:I = 0x8

.field static final INTENT_SCO_VOLUME_CHANGED:I = 0x7

.field static final QUERY_PHONE_STATE:I = 0x10

.field static final QUERY_PHONE_STATE_DELAY_TIME_MSEC:I = 0x50

.field static final QUERY_PHONE_STATE_TIMEOUT:I = 0x69

.field static final QUERY_PHONE_STATE_TIMEOUT_VALUE:I = 0x7d0

.field static final SEND_BSIR:I = 0xd

.field static final SEND_BSIR_AFTER_CALL:I = 0x13

.field static final SEND_CCLC_RESPONSE:I = 0xb

.field static final SEND_VENDOR_SPECIFIC_RESULT_CODE:I = 0xc

.field static final STACK_EVENT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "HeadsetStateMachine"

.field private static final VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final VOICE_RECOGNITION_RESULT:I = 0xf

.field static final VOICE_RECOGNITION_START:I = 0x5

.field static final VOICE_RECOGNITION_STOP:I = 0x6

.field static sConnectTimeoutMs:I


# instance fields
.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mAgIndicatorEnableState:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

.field private final mAudioConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

.field private final mAudioDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

.field private final mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

.field private final mAudioParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAudioServerStateCallback:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;

.field private final mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

.field private final mConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

.field private mConnectingTimestampMs:J

.field private mCurrentState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceSilenced:Z

.field private final mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

.field private final mDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

.field private final mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field private mMicVolume:I

.field private final mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

.field private mNeedDialingOutReply:Z

.field private final mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

.field private mPrevState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

.field private mSpeakerVolume:I

.field private final mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    nop

    .line 83
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->DBG:Z

    .line 141
    const/16 v0, 0x7530

    sput v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sConnectTimeoutMs:I

    .line 159
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->DEFAULT_AG_INDICATOR_ENABLE_STATE:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    .line 204
    nop

    .line 206
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 204
    const-string v2, "+XEVENT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    .line 209
    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 207
    const-string v2, "+ANDROID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    .line 212
    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 210
    const-string v2, "+XAPL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    .line 215
    nop

    .line 213
    const-string v2, "+IPHONEACCEV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Looper;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)V
    .locals 2

    .line 221
    const-string v0, "looper cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/os/Looper;

    const-string v0, "HeadsetStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 165
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    .line 166
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    .line 167
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    .line 168
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    .line 169
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    .line 170
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    .line 171
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    .line 176
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    .line 191
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectingTimestampMs:J

    .line 193
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    .line 1463
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioServerStateCallback:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;

    .line 223
    sget-boolean p2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->DBG:Z

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setDbg(Z)V

    .line 224
    const-string p2, "device cannot be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 225
    const-string p1, "headsetService cannot be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/android/bluetooth/hfp/HeadsetService;

    iput-object p3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 226
    nop

    .line 227
    const-string p1, "nativeInterface cannot be null"

    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iput-object p5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    .line 228
    nop

    .line 229
    const-string p1, "systemInterface cannot be null"

    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    iput-object p6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    .line 230
    const-string p1, "AdapterService cannot be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/android/bluetooth/btservice/AdapterService;

    iput-object p4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 231
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDeviceSilenced:Z

    .line 233
    new-instance p1, Lcom/android/bluetooth/hfp/AtPhonebook;

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object p3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-direct {p1, p2, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;-><init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    .line 235
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 236
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 237
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 238
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 239
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 240
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 241
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 242
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioConnecting;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioDisconnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/hfp/HeadsetStateMachine;J)J
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectingTimestampMs:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/AtPhonebook;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->updateAgIndicatorEnableState(Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNeedDialingOutReply:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNeedDialingOutReply:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPrevState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPrevState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    return-object p1
.end method

.method static synthetic access$2100(I)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getMessageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendClccResponse(Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCind(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processWBSEvent(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtBind(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVrEvent(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processDialCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSubscriberNumberRequest(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCops(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtClcc(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processUnknownAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processKeyPressed(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtBiev(IILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVolumeEvent(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->hasDeferredMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processSendVendorSpecificResultCode(Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->hasDeferredMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->handleAccessPermissionResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processNoiseReductionEvent(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtChld(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object p0
.end method

.method static synthetic access$5000()Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;
    .locals 1

    .line 79
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->DEFAULT_AG_INDICATOR_ENABLE_STATE:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setAudioParameters()V

    return-void
.end method

.method static synthetic access$600(I)I
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionStateFromAudioState(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->hasDeferredMessages(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSpeakerVolume:I

    return p0
.end method

.method static synthetic access$6202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSpeakerVolume:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnecting:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    return-object p0
.end method

.method private broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastVendorSpecificEventIntent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1753
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1754
    const-string p1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1756
    const-string p1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1757
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "android.bluetooth.headset.intent.category.companyid."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1758
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1761
    return-void
.end method

.method private cleanupBeforeQuit()V
    .locals 4

    .line 2474
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentHeadsetState()Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    .line 2475
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v1

    .line 2476
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    .line 2477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupBeforeQuit: currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2478
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 2483
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2484
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 2488
    :cond_1
    return-void
.end method

.method static destroy(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 2

    .line 259
    const-string v0, "HeadsetStateMachine"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez p0, :cond_0

    .line 261
    const-string p0, "destroy(), stateMachine is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->cleanupBeforeQuit()V

    .line 265
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->quitNow()V

    .line 266
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->cleanup()V

    .line 267
    return-void
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 2

    .line 2067
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 2068
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2069
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 2070
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    .line 2071
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 2072
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    .line 2074
    :cond_0
    if-ne v0, p0, :cond_1

    .line 2075
    return p2

    .line 2067
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2078
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    .line 2087
    nop

    .line 2089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2090
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 2091
    const/16 v2, 0x2c

    invoke-static {v2, p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->findChar(CLjava/lang/String;I)I

    move-result v2

    .line 2093
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2095
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    goto :goto_1

    .line 2096
    :catch_0
    move-exception v3

    .line 2097
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .line 2101
    goto :goto_0

    .line 2102
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getAtCommandType(Ljava/lang/String;)I
    .locals 3

    .line 1812
    nop

    .line 1813
    nop

    .line 1814
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1815
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-le v0, v1, :cond_2

    .line 1816
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1817
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    const/4 v2, 0x0

    goto :goto_0

    .line 1819
    :cond_0
    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1820
    const/4 v2, 0x2

    goto :goto_0

    .line 1821
    :cond_1
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1822
    const/4 v2, 0x1

    nop

    .line 1827
    :cond_2
    :goto_0
    return v2
.end method

.method private static getConnectionStateFromAudioState(I)I
    .locals 1

    .line 2405
    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    .line 2413
    const/4 p0, 0x0

    return p0

    .line 2407
    :cond_0
    const/4 p0, 0x2

    return p0

    .line 2409
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private getCurrentDeviceName()Ljava/lang/String;
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 2303
    if-nez v0, :cond_0

    .line 2304
    const-string v0, "<unknown>"

    return-object v0

    .line 2306
    :cond_0
    return-object v0
.end method

.method private getCurrentHeadsetState()Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
    .locals 2

    .line 2460
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0

    .line 2461
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    if-nez v1, :cond_0

    .line 2462
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDisconnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    monitor-exit v0

    return-object v1

    .line 2464
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    monitor-exit v0

    return-object v1

    .line 2465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getMessageName(I)Ljava/lang/String;
    .locals 2

    .line 2417
    const/16 v0, 0xe

    if-eq p0, v0, :cond_4

    const/16 v0, 0xf

    if-eq p0, v0, :cond_3

    const/16 v0, 0x65

    if-eq p0, v0, :cond_2

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 2453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2441
    :pswitch_0
    const-string p0, "SEND_VENDOR_SPECIFIC_RESULT_CODE"

    return-object p0

    .line 2439
    :pswitch_1
    const-string p0, "SEND_CCLC_RESPONSE"

    return-object p0

    .line 2437
    :pswitch_2
    const-string p0, "DEVICE_STATE_CHANGED"

    return-object p0

    .line 2435
    :pswitch_3
    const-string p0, "CALL_STATE_CHANGED"

    return-object p0

    .line 2433
    :pswitch_4
    const-string p0, "INTENT_CONNECTION_ACCESS_REPLY"

    return-object p0

    .line 2431
    :pswitch_5
    const-string p0, "INTENT_SCO_VOLUME_CHANGED"

    return-object p0

    .line 2429
    :pswitch_6
    const-string p0, "VOICE_RECOGNITION_STOP"

    return-object p0

    .line 2427
    :pswitch_7
    const-string p0, "VOICE_RECOGNITION_START"

    return-object p0

    .line 2425
    :pswitch_8
    const-string p0, "DISCONNECT_AUDIO"

    return-object p0

    .line 2423
    :pswitch_9
    const-string p0, "CONNECT_AUDIO"

    return-object p0

    .line 2421
    :pswitch_a
    const-string p0, "DISCONNECT"

    return-object p0

    .line 2419
    :pswitch_b
    const-string p0, "CONNECT"

    return-object p0

    .line 2451
    :cond_0
    const-string p0, "CONNECT_TIMEOUT"

    return-object p0

    .line 2449
    :cond_1
    const-string p0, "CLCC_RSP_TIMEOUT"

    return-object p0

    .line 2443
    :cond_2
    const-string p0, "STACK_EVENT"

    return-object p0

    .line 2445
    :cond_3
    const-string p0, "VOICE_RECOGNITION_RESULT"

    return-object p0

    .line 2447
    :cond_4
    const-string p0, "DIALING_OUT_RESULT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private handleAccessPermissionResult(Landroid/content/Intent;)V
    .locals 6

    .line 2363
    const-string v0, "handleAccessPermissionResult"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2364
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2365
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getCheckingAccessPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2366
    return-void

    .line 2368
    :cond_0
    nop

    .line 2369
    nop

    .line 2371
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    monitor-enter v1

    .line 2376
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 2378
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 2382
    const-string v2, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2384
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 2386
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->processCpbrCommand(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    goto :goto_0

    .line 2388
    :cond_2
    const-string v2, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2390
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 2394
    :cond_3
    move p1, v3

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/hfp/AtPhonebook;->setCpbrIndex(I)V

    .line 2395
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfp/AtPhonebook;->setCheckingAccessPermission(Z)V

    .line 2396
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    if-ltz p1, :cond_4

    .line 2398
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v1, v0, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto :goto_1

    .line 2400
    :cond_4
    const-string p1, "handleAccessPermissionResult - RESULT_NONE"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2402
    :goto_1
    return-void

    .line 2396
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static make(Landroid/bluetooth/BluetoothDevice;Landroid/os/Looper;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .locals 8

    .line 248
    new-instance v7, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Looper;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)V

    .line 251
    invoke-virtual {v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->start()V

    .line 252
    sget-boolean p1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->DBG:Z

    if-eqz p1, :cond_0

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created state machine "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HeadsetStateMachine"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-object v7
.end method

.method private parseUnknownAt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1793
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1794
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1795
    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 1796
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1797
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1798
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1800
    goto :goto_2

    .line 1802
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    nop

    .line 1804
    move v1, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    .line 1805
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1793
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1808
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processAtBiev(IILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtBiev: ind_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ind_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2279
    invoke-direct {p0, p3, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendIndicatorIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 2280
    return-void
.end method

.method private processAtBind(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2250
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2255
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2259
    nop

    .line 2261
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 2271
    const-string v2, "Invalid HF Indicator Received"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2267
    :cond_0
    const-string v4, "Send Broadcast intent for the Battery Level indicator."

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2268
    invoke-direct {p0, p2, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendIndicatorIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 2269
    goto :goto_1

    .line 2263
    :cond_1
    const-string v4, "Send Broadcast intent for the Enhanced Driver Safety indicator."

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2264
    invoke-direct {p0, p2, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendIndicatorIntent(Landroid/bluetooth/BluetoothDevice;II)V

    .line 2265
    goto :goto_1

    .line 2256
    :catch_0
    move-exception v2

    .line 2257
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeadsetStateMachine"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    nop

    .line 2250
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2275
    :cond_2
    return-void
.end method

.method private processAtChld(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1941
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->processChld(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1942
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto :goto_0

    .line 1944
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1946
    :goto_0
    return-void
.end method

.method private processAtCind(Landroid/bluetooth/BluetoothDevice;)V
    .locals 12

    .line 1962
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v0

    .line 1967
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->isVirtualCallStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1968
    const/4 v1, 0x1

    .line 1969
    const/4 v2, 0x0

    move v6, v1

    move v7, v2

    goto :goto_0

    .line 1972
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v1

    .line 1973
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumHeldCall()I

    move-result v2

    move v6, v1

    move v7, v2

    .line 1976
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCindService()I

    move-result v5

    .line 1977
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCindSignal()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCindRoam()I

    move-result v10

    .line 1978
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCindBatteryCharge()I

    move-result v11

    .line 1976
    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->cindResponse(Landroid/bluetooth/BluetoothDevice;IIIIIII)Z

    .line 1979
    return-void
.end method

.method private processAtClcc(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    .line 1999
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->isVirtualCallStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2001
    const-string v8, "10000000"

    .line 2002
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v9

    .line 2003
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v1

    .line 2004
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v2

    .line 2006
    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 2008
    const/4 v1, 0x0

    move v5, v1

    goto :goto_0

    .line 2010
    :cond_0
    move v5, v1

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    .line 2011
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string v7, ""

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    .line 2012
    goto :goto_1

    .line 2014
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->listCurrentCalls()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAtClcc: failed to list current calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadsetStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v7, ""

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    goto :goto_1

    .line 2018
    :cond_2
    const/16 v1, 0x68

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2021
    :goto_1
    return-void
.end method

.method private processAtCops(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1983
    nop

    .line 1984
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1985
    if-eqz v0, :cond_0

    .line 1986
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1985
    :cond_0
    const/4 v0, 0x0

    .line 1988
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isInCall()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1990
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 1992
    :cond_2
    if-nez v0, :cond_3

    .line 1993
    goto :goto_1

    .line 1992
    :cond_3
    move-object v2, v0

    .line 1995
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v0, p1, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->copsResponse(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 1996
    return-void
.end method

.method private processAtCpbr(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtCpbr - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2051
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v0, :cond_0

    .line 2053
    monitor-enter v0

    .line 2054
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->handleCpbrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2055
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2057
    :cond_0
    const-string p1, "HeadsetStateMachine"

    const-string p2, "Phonebook handle null for At+CPBR"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 2060
    :goto_0
    return-void
.end method

.method private processAtCpbs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtCpbs - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v0, :cond_0

    .line 2040
    monitor-enter v0

    .line 2041
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->handleCpbsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2042
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2044
    :cond_0
    const-string p1, "HeadsetStateMachine"

    const-string p2, "Phonebook handle null for At+CPBS"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 2047
    :goto_0
    return-void
.end method

.method private processAtCscs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAtCscs - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v0, :cond_0

    .line 2027
    monitor-enter v0

    .line 2028
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/bluetooth/hfp/AtPhonebook;->handleCscsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 2029
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2031
    :cond_0
    const-string p1, "HeadsetStateMachine"

    const-string p2, "Phonebook handle null for At+CSCS"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 2034
    :goto_0
    return-void
.end method

.method private processAtXapl([Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 12

    .line 2153
    array-length v0, p1

    const-string v1, "HeadsetStateMachine"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processAtXapl() args length must be 2: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    return-void

    .line 2157
    :cond_0
    const/4 v0, 0x0

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    aget-object v4, p1, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_0

    .line 2161
    :cond_1
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2162
    array-length v4, p1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 2163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processAtXapl() deviceInfo length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return-void

    .line 2166
    :cond_2
    aget-object v7, p1, v0

    .line 2167
    aget-object v8, p1, v3

    .line 2168
    aget-object v9, p1, v2

    .line 2169
    const/16 v3, 0xa2

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 2170
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    const/4 v5, 0x1

    const/4 v10, 0x0

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 2172
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v11

    .line 2169
    const-string v6, "+XAPL"

    invoke-static/range {v3 .. v11}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2174
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+XAPL=iPhone,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 2175
    return-void

    .line 2158
    :cond_3
    :goto_0
    const-string p1, "processAtXapl() argument types not match"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    return-void
.end method

.method private processDialCall(Ljava/lang/String;)V
    .locals 6

    .line 1832
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->hasDeviceInitiatedDialingOut()Z

    move-result v0

    const-string v1, "HeadsetStateMachine"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1833
    const-string p1, "processDialCall, already dialling"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1835
    return-void

    .line 1837
    :cond_0
    const-string v0, "processDialCall, last dial number null"

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1844
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_3

    .line 1847
    const-string v4, ">9999"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1848
    const-string p1, "Number is too big"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1850
    return-void

    .line 1852
    :cond_2
    const-string p1, "processDialCall, memory dial do last dial for now"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1853
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object p1

    .line 1854
    if-nez p1, :cond_6

    .line 1855
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1857
    return-void

    .line 1861
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_4

    .line 1862
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1864
    :cond_4
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1838
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object p1

    .line 1839
    if-nez p1, :cond_6

    .line 1840
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1842
    return-void

    .line 1866
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->dialOutgoingCall(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1867
    const-string p1, "processDialCall, failed to dial in service"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1869
    return-void

    .line 1871
    :cond_7
    iput-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNeedDialingOutReply:Z

    .line 1872
    return-void
.end method

.method private processKeyPressed(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 2198
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->answerCall(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isInCall()Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_2

    .line 2201
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2203
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processKeyPressed, failed to set active device to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2207
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->hangupCall(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 2209
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 2210
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processKeyPressed, failed to disconnect audio from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2215
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->hasDeviceInitiatedDialingOut()Z

    move-result p1

    const-string v0, "HeadsetStateMachine"

    if-eqz p1, :cond_4

    .line 2216
    const-string p1, "processKeyPressed, already dialling"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    return-void

    .line 2219
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/AtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object p1

    .line 2220
    if-nez p1, :cond_5

    .line 2221
    const-string p1, "processKeyPressed, last dial number null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    return-void

    .line 2224
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->dialOutgoingCall(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2225
    const-string p1, "processKeyPressed, failed to call in service"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    return-void

    .line 2229
    :cond_6
    :goto_0
    return-void
.end method

.method private processNoiseReductionEvent(Z)V
    .locals 3

    .line 1912
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    const-string v1, "bt_headset_nrec"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1913
    if-eqz p1, :cond_0

    const-string v2, "on"

    .line 1914
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processNoiseReductionEvent: bt_headset_nrec change "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 1918
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setAudioParameters()V

    .line 1920
    :cond_1
    return-void
.end method

.method private processSendClccResponse(Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V
    .locals 11

    .line 2283
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2284
    return-void

    .line 2286
    :cond_0
    iget v1, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    if-nez v1, :cond_1

    .line 2287
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->removeMessages(I)V

    .line 2289
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    iget v5, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mDirection:I

    iget v6, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mStatus:I

    iget v7, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMode:I

    iget-boolean v8, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMpty:Z

    iget-object v9, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mNumber:Ljava/lang/String;

    iget v10, p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mType:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    .line 2291
    return-void
.end method

.method private processSendVendorSpecificResultCode(Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V
    .locals 2

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2295
    iget-object v1, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mArg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2298
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object p1, p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 2299
    return-void
.end method

.method private processSubscriberNumberRequest(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 1949
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v0

    .line 1950
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1951
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CNUM: ,\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",,4"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1951
    invoke-virtual {v2, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 1953
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto :goto_0

    .line 1955
    :cond_0
    const-string v0, "HeadsetStateMachine"

    const-string v2, "getSubscriberNumber returns null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1958
    :goto_0
    return-void
.end method

.method private processUnknownAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 2178
    if-nez p2, :cond_0

    .line 2179
    const-string p1, "HeadsetStateMachine"

    const-string p2, "processUnknownAt device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    return-void

    .line 2182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processUnknownAt - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2183
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->parseUnknownAt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2184
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAtCommandType(Ljava/lang/String;)I

    move-result v0

    .line 2185
    const-string v1, "+CSCS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    .line 2186
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCscs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 2187
    :cond_1
    const-string v1, "+CPBS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2188
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCpbs(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 2189
    :cond_2
    const-string v1, "+CPBR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2190
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtCpbr(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 2192
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processVendorSpecificAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 2194
    :goto_0
    return-void
.end method

.method private processVendorSpecificAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 11

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processVendorSpecificAt - atString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 2115
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2116
    const-string v1, "processVendorSpecificAt: command type error in "

    const-string v2, "HeadsetStateMachine"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p2, v3, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 2119
    return-void

    .line 2122
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2123
    sget-object v4, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->VENDOR_SPECIFIC_AT_COMMAND_COMPANY_ID:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2124
    if-nez v4, :cond_1

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processVendorSpecificAt: unsupported command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p2, v3, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 2127
    return-void

    .line 2130
    :cond_1
    const/4 v10, 0x1

    add-int/2addr v0, v10

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2131
    const-string v6, "?"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p2, v3, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 2134
    return-void

    .line 2137
    :cond_2
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v8

    .line 2138
    const-string p1, "+XAPL"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2139
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processAtXapl([Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    .line 2141
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    move-object v4, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    .line 2143
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, p2, v10, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 2144
    return-void
.end method

.method private processVolumeEvent(II)V
    .locals 3

    .line 1892
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processVolumeEvent, ignored because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not active"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1894
    return-void

    .line 1896
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 1897
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSpeakerVolume:I

    .line 1898
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-enter v1

    .line 1899
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioOn:Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1900
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const/4 v2, 0x6

    .line 1901
    invoke-virtual {p1, v2, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1902
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1903
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1905
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMicVolume:I

    goto :goto_1

    .line 1907
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad volume type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetStateMachine"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :goto_1
    return-void
.end method

.method private processVrEvent(I)V
    .locals 3

    .line 1875
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1876
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->startVoiceRecognitionByHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1877
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto :goto_0

    .line 1879
    :cond_0
    if-nez p1, :cond_2

    .line 1880
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognitionByHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1881
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto :goto_0

    .line 1883
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    goto :goto_0

    .line 1886
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1888
    :cond_3
    :goto_0
    return-void
.end method

.method private processWBSEvent(I)V
    .locals 4

    .line 1923
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    const-string v1, "bt_wbs"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1924
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processWBSEvent: unknown wbsConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    return-void

    .line 1926
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    goto :goto_0

    .line 1930
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    nop

    .line 1936
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processWBSEvent: bt_headset_nrec change "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1938
    return-void
.end method

.method private sendIndicatorIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .line 2239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2240
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2241
    const-string p1, "android.bluetooth.headset.extra.HF_INDICATORS_IND_ID"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2242
    const-string p1, "android.bluetooth.headset.extra.HF_INDICATORS_IND_VALUE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2244
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2245
    return-void
.end method

.method private setAudioParameters()V
    .locals 7

    .line 1766
    const-string v0, "persist.vendor.bluetooth.hfp.vol"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1767
    nop

    .line 1768
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "off"

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1772
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set VGS: off for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 1769
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set VGS: on for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1770
    const-string v0, "on"

    .line 1776
    :goto_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bt_headset_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bt_headset_nrec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    .line 1778
    const-string v6, "bt_headset_nrec"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bt_headset_vgs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_wbs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    .line 1783
    const-string v5, "bt_wbs"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1776
    const-string v0, ";"

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioParameters for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 1787
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1788
    return-void
.end method

.method private updateAgIndicatorEnableState(Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;)V
    .locals 2

    .line 2311
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDeviceSilenced:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAgIndicatorEnableState:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    .line 2312
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAgIndicatorEnableState, no change in indicator state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAgIndicatorEnableState:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    return-void

    .line 2317
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAgIndicatorEnableState:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    .line 2318
    const/4 v0, 0x0

    .line 2321
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2322
    iget-boolean p1, p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->service:Z

    if-eqz p1, :cond_1

    .line 2323
    move v0, v1

    goto :goto_0

    .line 2325
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/Utils;->isPtsTestMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2326
    move v0, v1

    .line 2330
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAgIndicatorEnableState:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;->signal:Z

    if-eqz p1, :cond_3

    .line 2331
    or-int/lit16 v0, v0, 0x200

    .line 2333
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 2334
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->cleanup()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 274
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentHeadsetState()Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrevState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPrevState:Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConnectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNeedDialingOutReply: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mNeedDialingOutReply:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpeakerVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSpeakerVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMicVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mMicVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConnectingTimestampMs(uptimeMillis): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectingTimestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  StateMachine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 294
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 295
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-super {p0, v2, v1, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 297
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 298
    const-string v1, "  StateMachineLog:"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 300
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 303
    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 305
    return-void
.end method

.method public declared-synchronized getAudioState()I
    .locals 1

    monitor-enter p0

    .line 1714
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentHeadsetState()Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1715
    if-nez v0, :cond_0

    .line 1716
    const/16 v0, 0xa

    monitor-exit p0

    return v0

    .line 1718
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1713
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectingTimestampMs()J
    .locals 2

    .line 1722
    iget-wide v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnectingTimestampMs:J

    return-wide v0
.end method

.method public declared-synchronized getConnectionState()I
    .locals 1

    monitor-enter p0

    .line 1698
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentHeadsetState()Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    if-nez v0, :cond_0

    .line 1701
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1703
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getConnectionStateInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    monitor-enter p0

    .line 1683
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1683
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    .line 2345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2346
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getMessageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    const-string v1, "arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2350
    const-string v1, ", arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2352
    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/bluetooth/hfp/HeadsetMessageObject;

    if-eqz v1, :cond_0

    .line 2354
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetMessageObject;

    .line 2355
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetMessageObject;->buildString(Ljava/lang/StringBuilder;)V

    .line 2356
    goto :goto_0

    .line 2357
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2359
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 2338
    sget-boolean v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 2339
    invoke-super {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 2341
    :cond_0
    return-void
.end method

.method public setSilenceDevice(Z)Z
    .locals 3

    .line 1733
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDeviceSilenced:Z

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1734
    return v1

    .line 1736
    :cond_0
    if-eqz p1, :cond_1

    .line 1737
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAgIndicatorEnableState:Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->updateAgIndicatorEnableState(Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;)V

    .line 1742
    :goto_0
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mDeviceSilenced:Z

    .line 1743
    const/4 p1, 0x1

    return p1
.end method
