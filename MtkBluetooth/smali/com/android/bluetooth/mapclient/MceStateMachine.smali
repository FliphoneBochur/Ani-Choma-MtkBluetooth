.class final Lcom/android/bluetooth/mapclient/MceStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "MceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;,
        Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;,
        Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;,
        Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;,
        Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final FOLDER_INBOX:Ljava/lang/String; = "inbox"

.field private static final FOLDER_MSG:Ljava/lang/String; = "msg"

.field private static final FOLDER_OUTBOX:Ljava/lang/String; = "outbox"

.field private static final FOLDER_TELECOM:Ljava/lang/String; = "telecom"

.field private static final INBOX_PATH:Ljava/lang/String; = "telecom/msg/inbox"

.field private static final MAX_MESSAGES:I = 0x14

.field private static final MSG_CONNECT:I = 0x1

.field private static final MSG_CONNECTING_TIMEOUT:I = 0x3

.field private static final MSG_DISCONNECT:I = 0x2

.field private static final MSG_DISCONNECTING_TIMEOUT:I = 0x4

.field static final MSG_GET_LISTING:I = 0x7d4

.field static final MSG_GET_MESSAGE_LISTING:I = 0x7d5

.field static final MSG_INBOUND_MESSAGE:I = 0x7d2

.field static final MSG_MAS_CONNECTED:I = 0x3e9

.field static final MSG_MAS_DISCONNECTED:I = 0x3ea

.field static final MSG_MAS_REQUEST_COMPLETED:I = 0x3eb

.field static final MSG_MAS_REQUEST_FAILED:I = 0x3ec

.field static final MSG_MAS_SDP_DONE:I = 0x3ed

.field static final MSG_MAS_SDP_FAILED:I = 0x3ee

.field static final MSG_NOTIFICATION:I = 0x7d3

.field static final MSG_OUTBOUND_MESSAGE:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "MceSM"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private mConnected:Lcom/android/bluetooth/statemachine/State;

.field private mConnecting:Lcom/android/bluetooth/statemachine/State;

.field private mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

.field private mDeliveryReceiptRequested:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/bluetooth/mapclient/Bmessage;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/statemachine/State;

.field private mDisconnecting:Lcom/android/bluetooth/statemachine/State;

.field private mMasClient:Lcom/android/bluetooth/mapclient/MasClient;

.field private mMessages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/mapclient/MceStateMachine$MessageMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousState:I

.field private mSentMessageLog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/mapclient/Bmessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSentReceiptRequested:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/bluetooth/mapclient/Bmessage;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/bluetooth/mapclient/MapClientService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/mapclient/MapClientService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;-><init>(Lcom/android/bluetooth/mapclient/MapClientService;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/mapclient/MasClient;)V

    .line 174
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/mapclient/MapClientService;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/mapclient/MasClient;)V
    .locals 3

    .line 178
    const-string v0, "MceSM"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mPreviousState:I

    .line 124
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mSentMessageLog:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mSentReceiptRequested:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDeliveryReceiptRequested:Ljava/util/HashMap;

    .line 128
    sget-object v1, Lcom/android/bluetooth/mapclient/Bmessage$Type;->SMS_CDMA:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    .line 169
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mMessages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 179
    iput-object p3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mMasClient:Lcom/android/bluetooth/mapclient/MasClient;

    .line 180
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    .line 182
    iput v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mPreviousState:I

    .line 184
    iput-object p2, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 185
    new-instance p1, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDisconnected:Lcom/android/bluetooth/statemachine/State;

    .line 186
    new-instance p1, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;-><init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnecting:Lcom/android/bluetooth/statemachine/State;

    .line 187
    new-instance p1, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDisconnecting:Lcom/android/bluetooth/statemachine/State;

    .line 188
    new-instance p1, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;-><init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    .line 190
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDisconnected:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 191
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnecting:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 192
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDisconnecting:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 193
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 194
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnecting:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->start()V

    .line 196
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .line 84
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/mapclient/MceStateMachine;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mPreviousState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mMessages:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/mapclient/MceStateMachine;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mPreviousState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/mapclient/MceStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getContactURIFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MapClientService;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mSentReceiptRequested:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDeliveryReceiptRequested:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/mapclient/MceStateMachine;I)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/mapclient/MceStateMachine;II)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/mapclient/MceStateMachine;->onConnectionStateChanged(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mMasClient:Lcom/android/bluetooth/mapclient/MasClient;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/mapclient/MceStateMachine;Lcom/android/bluetooth/mapclient/MasClient;)Lcom/android/bluetooth/mapclient/MasClient;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mMasClient:Lcom/android/bluetooth/mapclient/MasClient;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDisconnected:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDisconnecting:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/mapclient/MceStateMachine;I)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/mapclient/MceStateMachine;)Ljava/util/HashMap;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mSentMessageLog:Ljava/util/HashMap;

    return-object p0
.end method

.method private getContactURIFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onConnectionStateChanged(II)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MceSM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 222
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 224
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string p1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/mapclient/MapClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public disconnect()Z
    .locals 2

    .line 250
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnect Request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MceSM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public doQuit()V
    .locals 0

    .line 199
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->quitNow()V

    .line 200
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 367
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method getDefaultMessageType()Lcom/android/bluetooth/mapclient/Bmessage$Type;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    monitor-enter v0

    .line 345
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/Utils;->isPtsTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-static {}, Lcom/android/bluetooth/mapclient/MapUtils;->sendMessageType()Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    monitor-exit v0

    return-object v1

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMessage(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 309
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "MceSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    if-ne v0, v1, :cond_1

    .line 313
    const/16 v0, 0x7d2

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 316
    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 308
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getState()I
    .locals 4

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    .line 234
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnected;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/bluetooth/mapclient/MceStateMachine$Connected;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_1

    .line 238
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 240
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    .line 241
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 243
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/android/bluetooth/mapclient/MceStateMachine$Disconnecting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v2, :cond_3

    .line 244
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    .line 246
    :cond_3
    monitor-exit p0

    return v1

    .line 235
    :cond_4
    :goto_0
    monitor-exit p0

    return v1

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSupportedFeatures()I
    .locals 2

    monitor-enter p0

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mMasClient:Lcom/android/bluetooth/mapclient/MasClient;

    if-eqz v0, :cond_1

    .line 332
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MceSM"

    const-string v1, "returning getSupportedFeatures from SDP record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mMasClient:Lcom/android/bluetooth/mapclient/MasClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MasClient;->getSdpMasRecord()Landroid/bluetooth/SdpMasRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/SdpMasRecord;->getSupportedFeatures()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 335
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MceSM"

    const-string v1, "in getSupportedFeatures, returning 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUnreadMessages()Z
    .locals 2

    monitor-enter p0

    .line 320
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "MceSM"

    const-string v1, "getMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    if-ne v0, v1, :cond_1

    .line 324
    const/16 v0, 0x7d5

    const-string v1, "inbox"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onQuitting()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/mapclient/MapClientService;->cleanupDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 207
    :cond_0
    return-void
.end method

.method receiveEvent(Lcom/android/bluetooth/mapclient/EventReport;)V
    .locals 2

    .line 860
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getType()Lcom/android/bluetooth/mapclient/EventReport$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Message handle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/EventReport;->getHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    const-string v1, "MceSM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 865
    return-void
.end method

.method public declared-synchronized sendMapMessage([Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 11

    monitor-enter p0

    .line 259
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "MceSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_1

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    if-ne v1, v2, :cond_9

    .line 266
    new-instance v1, Lcom/android/bluetooth/mapclient/Bmessage;

    invoke-direct {v1}, Lcom/android/bluetooth/mapclient/Bmessage;-><init>()V

    .line 268
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getDefaultMessageType()Lcom/android/bluetooth/mapclient/Bmessage$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/mapclient/Bmessage;->setType(Lcom/android/bluetooth/mapclient/Bmessage$Type;)Lcom/android/bluetooth/mapclient/Bmessage;

    .line 269
    sget-object v2, Lcom/android/bluetooth/mapclient/Bmessage$Status;->READ:Lcom/android/bluetooth/mapclient/Bmessage$Status;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/mapclient/Bmessage;->setStatus(Lcom/android/bluetooth/mapclient/Bmessage$Status;)Lcom/android/bluetooth/mapclient/Bmessage;

    .line 271
    array-length v2, p1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_6

    aget-object v5, p1, v3

    .line 273
    new-instance v6, Lcom/android/vcard/VCardEntry;

    invoke-direct {v6}, Lcom/android/vcard/VCardEntry;-><init>()V

    .line 274
    new-instance v7, Lcom/android/vcard/VCardProperty;

    invoke-direct {v7}, Lcom/android/vcard/VCardProperty;-><init>()V

    .line 275
    sget-object v8, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 276
    const-string v8, "MceSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2
    const-string v8, "tel"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 279
    const-string v8, "TEL"

    invoke-virtual {v7, v8}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 280
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v7, v4}, Lcom/android/vcard/VCardProperty;->addValues([Ljava/lang/String;)V

    .line 281
    sget-object v4, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    const-string v4, "MceSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending to phone numbers "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    invoke-virtual {v6, v7}, Lcom/android/vcard/VCardEntry;->addProperty(Lcom/android/vcard/VCardProperty;)V

    .line 291
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/mapclient/Bmessage;->addRecipient(Lcom/android/vcard/VCardEntry;)Lcom/android/bluetooth/mapclient/Bmessage;

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_4
    sget-object p1, Lcom/android/bluetooth/mapclient/MceStateMachine;->DBG:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    const-string p1, "MceSM"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Scheme "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not supported."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_5
    monitor-exit p0

    return v0

    .line 295
    :cond_6
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/mapclient/Bmessage;->setBodyContent(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;

    .line 296
    if-eqz p3, :cond_7

    .line 297
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mSentReceiptRequested:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_7
    if-eqz p4, :cond_8

    .line 300
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDeliveryReceiptRequested:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_8
    const/16 p1, 0x7d1

    invoke-virtual {p0, p1, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    monitor-exit p0

    return v4

    .line 305
    :cond_9
    monitor-exit p0

    return v0

    .line 263
    :cond_a
    :goto_1
    monitor-exit p0

    return v0

    .line 258
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setDefaultMessageType(Landroid/bluetooth/SdpMasRecord;)V
    .locals 2

    .line 353
    invoke-virtual {p1}, Landroid/bluetooth/SdpMasRecord;->getSupportedMessageTypes()I

    move-result p1

    .line 354
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    monitor-enter v0

    .line 355
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_0

    .line 356
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/mapclient/Bmessage$Type;->MMS:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    goto :goto_0

    .line 362
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 357
    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_1

    .line 358
    sget-object p1, Lcom/android/bluetooth/mapclient/Bmessage$Type;->SMS_CDMA:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    goto :goto_0

    .line 359
    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    .line 360
    sget-object p1, Lcom/android/bluetooth/mapclient/Bmessage$Type;->SMS_GSM:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine;->mDefaultMessageType:Lcom/android/bluetooth/mapclient/Bmessage$Type;

    .line 362
    :cond_2
    :goto_0
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
