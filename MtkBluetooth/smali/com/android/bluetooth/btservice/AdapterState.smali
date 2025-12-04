.class final Lcom/android/bluetooth/btservice/AdapterState;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;,
        Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;,
        Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;,
        Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;,
        Lcom/android/bluetooth/btservice/AdapterState$OnState;,
        Lcom/android/bluetooth/btservice/AdapterState$BleOnState;,
        Lcom/android/bluetooth/btservice/AdapterState$OffState;,
        Lcom/android/bluetooth/btservice/AdapterState$BaseAdapterState;
    }
.end annotation


# static fields
.field static final BLE_STARTED:I = 0x7

.field static final BLE_START_TIMEOUT:I = 0xc

.field static final BLE_START_TIMEOUT_DELAY:I = 0x36b0

.field static final BLE_STOPPED:I = 0x8

.field static final BLE_STOP_TIMEOUT:I = 0xb

.field static final BLE_STOP_TIMEOUT_DELAY:I = 0xfa0

.field static final BLE_TURN_OFF:I = 0x4

.field static final BLE_TURN_ON:I = 0x3

.field static final BREDR_STARTED:I = 0x5

.field static final BREDR_START_TIMEOUT:I = 0x9

.field static final BREDR_START_TIMEOUT_DELAY:I = 0xfa0

.field static final BREDR_STOPPED:I = 0x6

.field static final BREDR_STOP_TIMEOUT:I = 0xa

.field static final BREDR_STOP_TIMEOUT_DELAY:I = 0xfa0

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;

.field static final USER_TURN_OFF:I = 0x2

.field static final USER_TURN_ON:I = 0x1


# instance fields
.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

.field private mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

.field private mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

.field private mPrevState:I

.field private mTurningBleOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;

.field private mTurningBleOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;

.field private mTurningOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;

.field private mTurningOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/btservice/AdapterState;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    .line 90
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterState;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;

    .line 80
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningBleOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;

    .line 81
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;

    .line 82
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningBleOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;

    .line 83
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    .line 84
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    .line 85
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    .line 87
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPrevState:I

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningBleOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningBleOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 98
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 99
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 100
    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningBleOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOnState;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/btservice/AdapterState;I)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->messageString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningOnState:Lcom/android/bluetooth/btservice/AdapterState$TurningOnState;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningBleOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningBleOffState;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mTurningOffState:Lcom/android/bluetooth/btservice/AdapterState$TurningOffState;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/AdapterState;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPrevState:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/btservice/AdapterState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPrevState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterState;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cleanup()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 135
    :cond_0
    return-void
.end method

.method public static make(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterState;
    .locals 2

    .line 121
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterState;->TAG:Ljava/lang/String;

    const-string v1, "make() - Creating AdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterState;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->start()V

    .line 124
    return-object v0
.end method

.method private messageString(I)Ljava/lang/String;
    .locals 2

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 112
    :pswitch_0
    const-string p1, "BLE_START_TIMEOUT"

    return-object p1

    .line 113
    :pswitch_1
    const-string p1, "BLE_STOP_TIMEOUT"

    return-object p1

    .line 115
    :pswitch_2
    const-string p1, "BREDR_STOP_TIMEOUT"

    return-object p1

    .line 114
    :pswitch_3
    const-string p1, "BREDR_START_TIMEOUT"

    return-object p1

    .line 110
    :pswitch_4
    const-string p1, "BLE_STOPPED"

    return-object p1

    .line 107
    :pswitch_5
    const-string p1, "BLE_STARTED"

    return-object p1

    .line 111
    :pswitch_6
    const-string p1, "BREDR_STOPPED"

    return-object p1

    .line 106
    :pswitch_7
    const-string p1, "BREDR_STARTED"

    return-object p1

    .line 109
    :pswitch_8
    const-string p1, "BLE_TURN_OFF"

    return-object p1

    .line 104
    :pswitch_9
    const-string p1, "BLE_TURN_ON"

    return-object p1

    .line 108
    :pswitch_a
    const-string p1, "USER_TURN_OFF"

    return-object p1

    .line 105
    :pswitch_b
    const-string p1, "USER_TURN_ON"

    return-object p1

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


# virtual methods
.method public doQuit()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState;->quitNow()V

    .line 129
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->messageString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onQuitting()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterState;->cleanup()V

    .line 140
    return-void
.end method
