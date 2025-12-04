.class public Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;,
        Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPhoneState"


# instance fields
.field private mCallState:I

.field private mCindBatteryCharge:I

.field private mCindRoam:I

.field private mCindService:I

.field private mCindSignal:I

.field private final mDeviceEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field private mNumActive:I

.field private mNumHeld:I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    .line 60
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 66
    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    .line 75
    const-string v0, "headsetService is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 77
    nop

    .line 78
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    const-string v1, "TELEPHONY_SERVICE is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 83
    const-string v1, "TELEPHONY_SUBSCRIPTION_SERVICE is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance p1, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 87
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$Z8lmIgD-VtJ_7DQAyWsxE2Vm2w4;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$Z8lmIgD-VtJ_7DQAyWsxE2Vm2w4;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Ljava/util/HashMap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->startListenForPhoneState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    return p1
.end method

.method private getTelephonyEventsToListen()I
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    const/4 v2, 0x0

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$ThejWnzApDfy8--sAHEQTtxtxJc;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$ThejWnzApDfy8--sAHEQTtxtxJc;

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    .line 112
    return v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$getTelephonyEventsToListen$1(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized sendDeviceStateChanged()V
    .locals 6

    monitor-enter p0

    .line 262
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    const-string v1, "HeadsetPhoneState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeviceStateChanged. mService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSignal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryCharge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/bluetooth/hfp/HeadsetDeviceState;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->onDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startListenForPhoneState()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-string v1, "HeadsetPhoneState"

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "startListenForPhoneState, already listening"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v0

    .line 147
    if-nez v0, :cond_1

    .line 148
    const-string v0, "startListenForPhoneState, no event to listen"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 151
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 152
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startListenForPhoneState, invalid subscription ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 157
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListenForPhoneState(), subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enabled_events="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;

    new-instance v2, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$sW6qcxDGWxQjg6vRrEE-AnFJFpc;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$sW6qcxDGWxQjg6vRrEE-AnFJFpc;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 159
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 160
    return-void
.end method

.method private stopListenForPhoneState()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-string v1, "HeadsetPhoneState"

    if-nez v0, :cond_0

    .line 164
    const-string v0, "stopListenForPhoneState(), no listener indicates nothing is listening"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopListenForPhoneState(), stopping listener, enabled_events="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 171
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 97
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getCallState()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return v0
.end method

.method getCindBatteryCharge()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    return v0
.end method

.method getCindRoam()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    return v0
.end method

.method getCindService()I
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v0

    .line 176
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    goto :goto_0

    .line 181
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    .line 185
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    return v0
.end method

.method getCindSignal()I
    .locals 3

    .line 221
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v0

    .line 222
    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Integer;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    .line 226
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCindService()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 227
    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    goto :goto_0

    :cond_0
    nop

    .line 226
    :goto_0
    return v2

    .line 231
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    return v0
.end method

.method getNumActiveCall()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return v0
.end method

.method getNumHeldCall()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return v0
.end method

.method getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method isInCall()Z
    .locals 2

    .line 256
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$new$0$HeadsetPhoneState(Ljava/lang/Runnable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$startListenForPhoneState$2$HeadsetPhoneState(Ljava/lang/Runnable;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public listenForPhoneState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v1

    .line 128
    if-nez p2, :cond_0

    .line 129
    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mDeviceEventMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result p1

    .line 134
    if-eq v1, p1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->stopListenForPhoneState()V

    .line 136
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->startListenForPhoneState()V

    .line 138
    :cond_1
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCallState(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 204
    return-void
.end method

.method public setCindBatteryCharge(I)V
    .locals 1

    .line 245
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    if-eq v0, p1, :cond_0

    .line 246
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    .line 247
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 249
    :cond_0
    return-void
.end method

.method public setNumActiveCall(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 195
    return-void
.end method

.method public setNumHeldCall(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeadsetPhoneState [mTelephonyServiceAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRoam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindRoam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryCharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCindBatteryCharge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TelephonyEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getTelephonyEventsToListen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method
