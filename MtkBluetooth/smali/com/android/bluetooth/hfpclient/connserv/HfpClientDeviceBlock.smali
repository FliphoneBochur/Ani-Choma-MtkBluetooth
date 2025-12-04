.class public Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;
.super Ljava/lang/Object;
.source "HfpClientDeviceBlock.java"


# static fields
.field private static final DBG:Z = false


# instance fields
.field private mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

.field private final mConnServ:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

.field private final mConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccount;

.field private final mTAG:Ljava/lang/String;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnServ:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    .line 56
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HfpClientDeviceBlock."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->createAccount(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Landroid/telecom/PhoneAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    .line 60
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mContext:Landroid/content/Context;

    const-string p2, "telecom"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 63
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 64
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/telecom/TelecomManager;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V

    .line 65
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 66
    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 69
    if-eqz p3, :cond_2

    .line 70
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object p1

    .line 74
    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    const-string p2, "Got connected but calls were null, ignoring the broadcast"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 82
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->handleCall(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    goto :goto_1

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    const-string p2, "headset profile is null, ignoring broadcast."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    return-void
.end method

.method private declared-synchronized buildConnection(Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
    .locals 3

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create connection for call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " when Profile not available"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-object v1

    .line 242
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 243
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    const-string p2, "Both call and number cannot be null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit p0

    return-object v1

    .line 251
    :cond_1
    nop

    .line 252
    if-eqz p1, :cond_2

    .line 253
    :try_start_2
    new-instance p2, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnServ:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_0

    .line 255
    :cond_2
    new-instance p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnServ:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;Landroid/net/Uri;)V

    move-object p2, p1

    .line 258
    :goto_0
    invoke-virtual {p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    .line 259
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_3
    monitor-exit p0

    return-object p2

    .line 235
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private disconnectAll()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    .line 211
    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onHfpDisconnected()V

    .line 212
    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->destroy()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    .line 220
    :cond_1
    return-void
.end method

.method private declared-synchronized findConnectionKey(Landroid/bluetooth/BluetoothHeadsetClientCall;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
    .locals 1

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 205
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isDisconnectingToActive(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z
    .locals 1

    .line 227
    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getCall()Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result p1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    .line 229
    const/4 p1, 0x1

    return p1

    .line 231
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateConferenceableConnections()V
    .locals 7

    .line 267
    nop

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 277
    move-object v2, v1

    check-cast v2, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->inConference()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->removeConnection(Landroid/telecom/Connection;)V

    .line 283
    :cond_0
    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 290
    move-object v3, v2

    check-cast v3, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->inConference()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-nez v3, :cond_2

    .line 293
    new-instance v3, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v4}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    const/4 v1, 0x1

    .line 303
    :cond_3
    goto :goto_1

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 310
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 311
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->destroy()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnServ:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->addConference(Landroid/telecom/Conference;)V

    .line 322
    :cond_6
    return-void
.end method


# virtual methods
.method declared-synchronized cleanup()V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting state for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->disconnectAll()V

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleCall(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 4

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->findConnectionKey(Landroid/bluetooth/BluetoothHeadsetClientCall;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    move-result-object v0

    .line 156
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->isDisconnectingToActive(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object v0, v2

    .line 162
    :cond_0
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->updateCall(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 164
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->handleCallChanged()V

    .line 167
    :cond_1
    if-nez v0, :cond_5

    .line 169
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->buildConnection(Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 176
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 177
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 184
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 186
    :cond_3
    const-string v1, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-string v1, "android.telecom.extra.CALL_EXTERNAL_RINGER"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isInBandRing()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_1

    .line 181
    :cond_4
    :goto_0
    const-string v1, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/telecom/TelecomManager;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_1

    .line 190
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 190
    :cond_6
    :goto_1
    nop

    .line 197
    :goto_2
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->updateConferenceableConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 4

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    .line 132
    :cond_1
    invoke-virtual {p2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object p1

    if-nez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConference:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_2
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onCreateIncomingConnection(Landroid/bluetooth/BluetoothHeadsetClientCall;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
    .locals 3

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onAdded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-object v0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: connection does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 90
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onCreateOutgoingConnection(Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
    .locals 1

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->buildConnection(Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    move-result-object p1

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onAdded()V

    .line 106
    :cond_0
    return-object p1
.end method

.method declared-synchronized onCreateUnknownConnection(Landroid/bluetooth/BluetoothHeadsetClientCall;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
    .locals 4

    monitor-enter p0

    .line 110
    :try_start_0
    const-string v0, "tel"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mConnections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onAdded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-object v0

    .line 117
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: connection does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-object v2

    .line 109
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
