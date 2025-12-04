.class public Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    }
.end annotation


# static fields
.field public static final ACCEPT_CALL:I = 0xc

.field public static final AT_OK:I = 0x0

.field public static final CONNECT:I = 0x1

.field private static final CONNECTING_TIMEOUT:I = 0x35

.field static final CONNECTING_TIMEOUT_MS:I = 0x2710

.field public static final CONNECT_AUDIO:I = 0x3

.field private static final DBG:Z

.field public static final DIAL_NUMBER:I = 0xa

.field public static final DISABLE_NREC:I = 0x14

.field public static final DISCONNECT:I = 0x2

.field public static final DISCONNECT_AUDIO:I = 0x4

.field public static final ENTER_PRIVATE_MODE:I = 0x10

.field public static final EXPLICIT_CALL_TRANSFER:I = 0x12

.field static final HF_ORIGINATED_CALL_ID:I = -0x1

.field public static final HOLD_CALL:I = 0xe

.field static final IN_BAND_RING_ENABLED:I = 0x1

.field private static final MAX_HFP_SCO_VOICE_CALL_VOLUME:I = 0xf

.field private static final MIN_HFP_SCO_VOICE_CALL_VOLUME:I = 0x1

.field static final NO_ACTION:I = 0x0

.field private static final OUTGOING_TIMEOUT_MILLI:J = 0x2710L

.field private static final QUERY_CURRENT_CALLS:I = 0x32

.field private static final QUERY_CURRENT_CALLS_WAIT_MILLIS:J = 0x7d0L

.field private static final QUERY_OPERATOR_NAME:I = 0x33

.field public static final REJECT_CALL:I = 0xd

.field private static final ROUTING_DELAY_MS:I = 0xfa

.field public static final SEND_DTMF:I = 0x11

.field public static final SEND_VENDOR_AT_COMMAND:I = 0x15

.field public static final SET_MIC_VOLUME:I = 0x7

.field public static final SET_SPEAKER_VOLUME:I = 0x8

.field private static final SUBSCRIBER_INFO:I = 0x34

.field private static final TAG:Ljava/lang/String; = "HeadsetClientStateMachine"

.field public static final TERMINATE_CALL:I = 0xf

.field static final TERMINATE_SPECIFIC_CALL:I = 0x35

.field public static final VOICE_RECOGNITION_START:I = 0x5

.field public static final VOICE_RECOGNITION_STOP:I = 0x6

.field private static sAudioIsRouted:Z

.field private static sMaxAmVcVol:I

.field private static sMinAmVcVol:I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

.field private mAudioState:I

.field private mAudioWbs:Z

.field private final mCalls:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallsUpdate:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mChldFeatures:I

.field private mClccTimer:J

.field private final mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

.field private final mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

.field private mInBandRing:Z

.field private mIndicatorBatteryLevel:I

.field private mIndicatorNetworkSignal:I

.field private mIndicatorNetworkState:I

.field private mIndicatorNetworkType:I

.field private final mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

.field private mOperatorName:Ljava/lang/String;

.field private mPeerFeatures:I

.field private mPendingAction:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevState:Lcom/android/bluetooth/statemachine/State;

.field private mQueuedActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

.field private mSubscriberInfo:Ljava/lang/String;

.field private final mVendorProcessor:Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

.field private mVoiceRecognitionActive:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const-string v0, "HeadsetClientStateMachine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->DBG:Z

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sAudioIsRouted:Z

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)V
    .locals 2

    .line 668
    const-string v0, "HeadsetClientStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mClccTimer:J

    .line 140
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    .line 143
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 170
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 669
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 670
    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    .line 671
    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 673
    new-instance p1, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    iget-object p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-direct {p1, p3, v0}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Lcom/android/bluetooth/hfpclient/NativeInterface;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVendorProcessor:Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    .line 675
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 676
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    .line 677
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    .line 678
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    .line 680
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    .line 681
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    .line 682
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    .line 683
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    .line 685
    iget-object p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p3

    sput p3, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMaxAmVcVol:I

    .line 686
    iget-object p3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p1

    sput p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMinAmVcVol:I

    .line 688
    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    .line 689
    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    .line 691
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    .line 692
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    .line 694
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    .line 695
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    .line 697
    new-instance p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    .line 698
    new-instance p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    .line 699
    new-instance p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    .line 700
    new-instance p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    .line 702
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 703
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 704
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 705
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;Lcom/android/bluetooth/statemachine/State;)V

    .line 707
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 708
    return-void
.end method

.method private acceptCall(I)V
    .locals 6

    .line 419
    nop

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptCall: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 425
    if-nez v1, :cond_0

    .line 426
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 429
    if-nez v1, :cond_0

    .line 430
    return-void

    .line 434
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to accept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    const-string v2, "HeadsetClientStateMachine"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_a

    const/4 v5, 0x4

    if-eq v1, v5, :cond_8

    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    .line 486
    return-void

    .line 480
    :cond_1
    const/16 v0, 0xa

    .line 481
    goto :goto_1

    .line 443
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->callsInState(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 445
    if-eqz p1, :cond_3

    .line 446
    return-void

    .line 448
    :cond_3
    nop

    .line 449
    goto :goto_1

    .line 454
    :cond_4
    if-eq p1, v4, :cond_7

    if-nez p1, :cond_5

    goto :goto_0

    .line 458
    :cond_5
    if-ne p1, v0, :cond_6

    .line 459
    const-string v0, "Accepting call with accept and reject"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 460
    move v0, v4

    goto :goto_1

    .line 462
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aceept call with invalid flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 456
    :cond_7
    :goto_0
    const-string v1, "Accepting call with accept and hold"

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 457
    goto :goto_1

    .line 437
    :cond_8
    if-eqz p1, :cond_9

    .line 438
    return-void

    .line 440
    :cond_9
    const/4 v0, 0x7

    .line 441
    goto :goto_1

    .line 467
    :cond_a
    if-ne p1, v4, :cond_b

    .line 468
    goto :goto_1

    .line 469
    :cond_b
    if-ne p1, v0, :cond_c

    .line 470
    move v0, v4

    goto :goto_1

    .line 471
    :cond_c
    new-array v1, v4, [I

    aput v3, v1, v3

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 472
    const/4 v0, 0x3

    goto :goto_1

    .line 473
    :cond_d
    if-nez p1, :cond_e

    .line 474
    goto :goto_1

    .line 476
    :cond_e
    nop

    .line 478
    nop

    .line 489
    :goto_1
    if-ne p1, v4, :cond_f

    .line 491
    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->routeHfpAudio(Z)V

    .line 494
    :cond_f
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, v3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction([BII)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 495
    const/16 p1, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_2

    .line 497
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: Couldn\'t accept a call, action:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x1
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPrevState:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPrevState:Lcom/android/bluetooth/statemachine/State;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2900()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return p0
.end method

.method static synthetic access$3102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return p0
.end method

.method static synthetic access$3202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVoiceRecognitionActive:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mVendorProcessor:Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->acceptCall(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->rejectCall()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->holdCall()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->enterPrivateMode(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->explicitCallTransfer()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsStart()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->queryCallsDone()V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/media/AudioFocusRequest;)Landroid/media/AudioFocusRequest;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioFocusRequest;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->requestAudioFocus()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->returnAudioFocusIfNecessary()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object p1
.end method

.method private addQueuedAction(I)V
    .locals 1

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 227
    return-void
.end method

.method private addQueuedAction(II)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private addQueuedAction(ILjava/lang/Object;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method static amToHfVol(I)I
    .locals 3

    .line 775
    sget v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMaxAmVcVol:I

    sget v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMinAmVcVol:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 776
    :goto_0
    nop

    .line 777
    sget v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMinAmVcVol:I

    sub-int v1, p0, v1

    mul-int/lit8 v1, v1, 0xe

    div-int/2addr v1, v0

    .line 778
    add-int/2addr v1, v2

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AM -> HF "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 780
    return v1
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6

    .line 1681
    nop

    .line 1682
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 1683
    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionStateFromAudioState(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 1684
    move v2, v3

    goto :goto_0

    .line 1685
    :cond_0
    const/4 v2, 0x1

    .line 1686
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 1681
    const/16 v5, 0x7f

    invoke-static {v5, v0, v1, v2, v4}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BIII)V

    .line 1687
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1688
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1689
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    if-ne p2, v3, :cond_1

    .line 1691
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    const-string v2, "android.bluetooth.headsetclient.extra.AUDIO_WBS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1693
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1694
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 1696
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 1707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1708
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1709
    const-string p3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1710
    const-string p3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1713
    const/4 p1, 0x2

    if-ne p2, p1, :cond_8

    .line 1714
    iget p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_0

    .line 1716
    const-string p2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1718
    :cond_0
    iget p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v1, 0x4

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_1

    .line 1720
    const-string p2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1722
    :cond_1
    iget p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v1, 0x20

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_2

    .line 1724
    const-string p2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1726
    :cond_2
    iget p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v2, 0x80

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_3

    .line 1728
    const-string p2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1732
    :cond_3
    iget p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v2, 0x8

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_4

    .line 1734
    const-string p2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1737
    :cond_4
    iget p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_5

    .line 1739
    const-string p2, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1742
    :cond_5
    iget p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_6

    .line 1744
    const-string p1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1746
    :cond_6
    iget p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    .line 1748
    const-string p1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1750
    :cond_7
    iget p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 p2, 0x40

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_8

    .line 1752
    const-string p1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1755
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1756
    return-void
.end method

.method private callsInState(I)I
    .locals 3

    .line 250
    nop

    .line 251
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 252
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 255
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    return v1
.end method

.method private clearPendingAction()V
    .locals 2

    .line 222
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPendingAction:Landroid/util/Pair;

    .line 223
    return-void
.end method

.method private enterPrivateMode(I)V
    .locals 4

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterPrivateMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 592
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 593
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction([BII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    const/16 p1, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 601
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: Couldn\'t enter private  id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    return-void

    .line 594
    :cond_2
    :goto_1
    return-void
.end method

.method private explicitCallTransfer()V
    .locals 4

    .line 606
    const-string v0, "explicitCallTransfer"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 610
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(I)V

    goto :goto_0

    .line 617
    :cond_1
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t transfer call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 1822
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private varargs getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 6

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFromCallsWithStates states:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 240
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    .line 241
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 242
    return-object v1

    .line 240
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    :cond_1
    goto :goto_0

    .line 246
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getConnectionStateFromAudioState(I)I
    .locals 1

    .line 1841
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1849
    const/4 p0, 0x0

    return p0

    .line 1843
    :cond_0
    return v0

    .line 1845
    :cond_1
    return v0
.end method

.method static hfToAmVol(I)I
    .locals 3

    .line 766
    sget v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMaxAmVcVol:I

    sget v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sMinAmVcVol:I

    sub-int/2addr v0, v1

    .line 767
    nop

    .line 768
    add-int/lit8 v2, p0, -0x1

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0xe

    .line 769
    add-int/2addr v1, v0

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HF -> AM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 771
    return v1
.end method

.method private holdCall()V
    .locals 4

    .line 544
    const-string v0, "holdCall"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 546
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_0

    .line 548
    const/16 v0, 0x9

    goto :goto_0

    .line 550
    :cond_0
    new-array v0, v0, [I

    aput v3, v0, v3

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 551
    if-nez v0, :cond_1

    .line 552
    return-void

    .line 555
    :cond_1
    const/4 v0, 0x2

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction([BII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    .line 561
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Couldn\'t hold a call, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetClientStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_1
    return-void
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1

    .line 1853
    sget-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 1854
    const-string v0, "HeadsetClientStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_0
    return-void
.end method

.method static make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 1

    .line 712
    const-string v0, "make"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 713
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)V

    .line 715
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->start()V

    .line 716
    return-object v0
.end method

.method private queryCallsDone()V
    .locals 17

    .line 277
    move-object/from16 v0, p0

    const-string v1, "queryCallsDone"

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 302
    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 306
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 307
    iget-object v5, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 310
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 311
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-interface {v5, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 315
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 316
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 317
    invoke-interface {v6, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 320
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 321
    invoke-interface {v7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-interface {v7, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currCallIdSet "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " newCallIdSet "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " callAddedIds "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " callRemovedIds "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " callRetainedIds "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 332
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getCreationElapsedMilli()J

    move-result-wide v13

    .line 333
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 334
    const-string v1, "Associating the first call with HF originated call"

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 335
    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v12

    check-cast v1, Ljava/lang/Integer;

    .line 336
    iget-object v13, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v13, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v13, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v13, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v13, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 342
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v13, 0x2710

    cmp-long v1, v15, v13

    if-lez v1, :cond_2

    .line 343
    const-string v1, "HeadsetClientStateMachine"

    const-string v3, "Outgoing call did not see a response, clear the calls and send CHUP"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->terminateCall()V

    .line 349
    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 350
    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 351
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setState(I)V

    .line 352
    invoke-direct {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 353
    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 358
    return-void

    .line 362
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADJUST: currCallIdSet "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 367
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 368
    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 369
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setState(I)V

    .line 370
    invoke-direct {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 371
    goto :goto_2

    .line 374
    :cond_3
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 375
    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 376
    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-direct {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 378
    goto :goto_3

    .line 381
    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 382
    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 383
    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 386
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setNumber(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setState(I)V

    .line 388
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setMultiParty(Z)V

    .line 391
    invoke-direct {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 392
    goto :goto_4

    .line 394
    :cond_5
    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 395
    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-wide/16 v2, 0x7d0

    const/16 v4, 0x32

    if-eqz v1, :cond_6

    .line 396
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_5

    .line 398
    :cond_6
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v5, 0x4

    aput v5, v1, v12

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 399
    const-string v1, "Still have incoming call; polling"

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_5

    .line 402
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->removeMessages(I)V

    .line 407
    :cond_8
    :goto_5
    iget-object v0, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 408
    return-void
.end method

.method private queryCallsStart()Z
    .locals 2

    .line 269
    const-string v0, "queryCallsStart"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->clearPendingAction()V

    .line 271
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->queryCurrentCalls([B)Z

    .line 272
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method private queryCallsUpdate(IILjava/lang/String;ZZ)V
    .locals 13

    .line 412
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallsUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 413
    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v10, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRing:Z

    move-object v3, v12

    move v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZZ)V

    invoke-virtual {v1, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method private rejectCall()V
    .locals 4

    .line 504
    const-string v0, "rejectCall"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    .line 510
    if-nez v1, :cond_0

    .line 511
    const-string v0, "No call to reject, returning."

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 512
    return-void

    .line 515
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    .line 530
    return-void

    .line 524
    :cond_1
    const/16 v0, 0xb

    .line 525
    goto :goto_0

    .line 517
    :cond_2
    const/16 v0, 0x8

    .line 518
    goto :goto_0

    .line 521
    :cond_3
    nop

    .line 522
    move v0, v3

    .line 533
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction([BII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject call action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 535
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    .line 537
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Couldn\'t reject a call, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetClientStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x1
    .end array-data
.end method

.method private requestAudioFocus()Landroid/media/AudioFocusRequest;
    .locals 4

    .line 734
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 735
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 736
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 738
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 740
    invoke-virtual {v3, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v1

    .line 743
    if-ne v1, v2, :cond_0

    .line 744
    const-string v1, "AudioFocus granted"

    goto :goto_0

    :cond_0
    const-string v1, "AudioFocus NOT granted"

    .line 745
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioManager requestAudioFocus returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 746
    return-object v0
.end method

.method private returnAudioFocusIfNecessary()V
    .locals 2

    .line 760
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 763
    return-void
.end method

.method private sendCallChangedIntent(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCallChangedIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const-string v1, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private terminateCall()V
    .locals 4

    .line 566
    const-string v0, "terminateCall"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 568
    nop

    .line 570
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 573
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v0, v2, v1

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v0

    .line 576
    move v2, v1

    goto :goto_0

    .line 573
    :cond_0
    const/16 v2, 0x8

    .line 578
    :goto_0
    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->handleCallAction([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    .line 582
    :cond_1
    const-string v0, "HeadsetClientStateMachine"

    const-string v1, "ERROR: Couldn\'t terminate outgoing call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x0
    .end array-data
.end method


# virtual methods
.method public doQuit()V
    .locals 2

    .line 750
    const-string v0, "doQuit"

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnect([B)Z

    .line 754
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->routeHfpAudio(Z)V

    .line 755
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->returnAudioFocusIfNecessary()V

    .line 756
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->quitNow()V

    .line 757
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 196
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioWbs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIndicatorNetworkState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIndicatorNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIndicatorNetworkSignal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIndicatorBatteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubscriberInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 206
    const-string v0, "mCalls:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    const-string v1, "  "

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    const-string v0, "mCallsUpdate:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 217
    goto :goto_1

    .line 219
    :cond_2
    return-void
.end method

.method declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    monitor-enter p0

    .line 1805
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1808
    :cond_0
    iget p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 1806
    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1804
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1813
    monitor-enter p0

    .line 1814
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_0
    monitor-exit p0

    .line 1818
    return-object v0

    .line 1817
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    monitor-enter p0

    .line 1659
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1660
    monitor-exit p0

    return v1

    .line 1663
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 1664
    monitor-exit p0

    return v1

    .line 1667
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object p1

    .line 1668
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v0, :cond_2

    .line 1669
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 1672
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 1676
    :cond_3
    const-string v0, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad currentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1677
    monitor-exit p0

    return v1

    .line 1673
    :cond_4
    :goto_0
    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 1658
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentAgEvents()Landroid/os/Bundle;
    .locals 3

    .line 1830
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1831
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkState:I

    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1832
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkSignal:I

    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1833
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorNetworkType:I

    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1834
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mIndicatorBatteryLevel:I

    const-string v2, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1835
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mOperatorName:Ljava/lang/String;

    const-string v2, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    const-string v2, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    return-object v0
.end method

.method public getCurrentAgFeatures()Landroid/os/Bundle;
    .locals 5

    .line 622
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 623
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 625
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 627
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    .line 629
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 631
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 633
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 635
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mPeerFeatures:I

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    .line 637
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 643
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 647
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 650
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    .line 652
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 654
    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    .line 656
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 658
    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mChldFeatures:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 660
    const-string v1, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 663
    :cond_8
    return-object v0
.end method

.method public getCurrentCalls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .line 1826
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 1767
    monitor-enter p0

    .line 1768
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1769
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 1770
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1771
    goto :goto_0

    .line 1773
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 1774
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p1, v5

    .line 1775
    if-ne v3, v6, :cond_1

    .line 1776
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1779
    :cond_2
    goto :goto_0

    .line 1780
    :cond_3
    monitor-exit p0

    .line 1781
    return-object v0

    .line 1780
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDisconnectedState()Lcom/android/bluetooth/statemachine/IState;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    return-object v0
.end method

.method public getInBandRing()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mInBandRing:Z

    return v0
.end method

.method isAudioOn()Z
    .locals 2

    .line 1801
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConnected()Z
    .locals 2

    .line 1759
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    .line 1760
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1785
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1786
    nop

    .line 1792
    if-gtz v0, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 1794
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1797
    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1795
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1797
    :goto_1
    return p1
.end method

.method declared-synchronized routeHfpAudio(Z)V
    .locals 2

    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 721
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "AudioManager is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    .line 724
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->logD(Ljava/lang/String;)V

    .line 725
    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sAudioIsRouted:Z

    if-nez v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "hfp_enable=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_1
    if-nez p1, :cond_2

    .line 728
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "hfp_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 730
    :cond_2
    :goto_0
    sput-boolean p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sAudioIsRouted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    monitor-exit p0

    return-void

    .line 719
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
