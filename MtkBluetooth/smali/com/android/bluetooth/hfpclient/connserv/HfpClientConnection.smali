.class public Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
.super Landroid/telecom/Connection;
.source "HfpClientConnection.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HfpClientConnection"


# instance fields
.field private mAdded:Z

.field private mClientHasEcc:Z

.field private mClosed:Z

.field private mClosing:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mHfpClientConnectionService:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

.field private mLocalDisconnect:Z

.field private mPreviousCallState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mPreviousCallState:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosing:Z

    .line 52
    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 53
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 56
    if-eqz p4, :cond_0

    .line 60
    iput-object p4, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 61
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->handleCallChanged()V

    .line 62
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->finishInitializing()V

    .line 63
    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Call is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;Landroid/net/Uri;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mPreviousCallState:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosing:Z

    .line 69
    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 70
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 73
    if-eqz p3, :cond_1

    .line 77
    invoke-virtual {p4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    .line 80
    const-string p1, "HfpClientConnection"

    const-string p2, "Failed to create the call, dial failed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setInitializing()V

    .line 85
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setDialing()V

    .line 86
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->finishInitializing()V

    .line 87
    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "HeadsetProfile is null, returning"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized close(I)V
    .locals 3

    monitor-enter p0

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 186
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    const-string v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, p1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 191
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    .line 192
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 194
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enterPrivateMode()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setActive()V

    .line 126
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 282
    instance-of v0, p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 283
    return v1

    .line 285
    :cond_0
    check-cast p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object p1

    .line 286
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method finishInitializing()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->hasHfpClientEcc(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClientHasEcc:Z

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setAudioModeIsVoip(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setAddress(Landroid/net/Uri;I)V

    .line 94
    nop

    .line 97
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    move v0, v2

    .line 98
    :goto_1
    const/16 v1, 0x3042

    or-int/2addr v0, v1

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setConnectionCapabilities(I)V

    .line 99
    return-void
.end method

.method public getCall()Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    return-object v0
.end method

.method public declared-synchronized getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHfpClientConnectionService()Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHfpClientConnectionService:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public handleCallChanged()V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    .line 138
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    .line 143
    packed-switch v1, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HfpClientConnection"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mPreviousCallState:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mLocalDisconnect:Z

    if-eqz v0, :cond_1

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    goto :goto_1

    .line 172
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    .line 174
    goto :goto_1

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    goto :goto_1

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setRinging()V

    .line 164
    goto :goto_1

    .line 159
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setDialing()V

    .line 160
    goto :goto_1

    .line 152
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setOnHold()V

    .line 153
    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setOnHold()V

    goto :goto_1

    .line 145
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setActive()V

    .line 146
    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setActive()V

    .line 178
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mPreviousCallState:I

    .line 179
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public inConference()Z
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0
.end method

.method public declared-synchronized isClosing()Z
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAbort()V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onDisconnect()V

    .line 234
    return-void
.end method

.method public onAdded()V
    .locals 1

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mAdded:Z

    .line 112
    return-void
.end method

.method public declared-synchronized onAnswer()V
    .locals 3

    monitor-enter p0

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDisconnect()V
    .locals 3

    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mLocalDisconnect:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHfpDisconnected()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    .line 108
    return-void
.end method

.method public declared-synchronized onHold()V
    .locals 2

    monitor-enter p0

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPlayDtmfTone(C)V
    .locals 2

    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    int-to-byte p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReject()V
    .locals 2

    monitor-enter p0

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUnhold()V
    .locals 3

    monitor-enter p0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getHfpClientConnectionService()Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 249
    const-string v0, "HfpClientConnection"

    const-string v1, "Ignoring unhold; call hold on the foreground call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :cond_1
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHfpClientConnectionService(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHfpClientConnectionService:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    .line 298
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HfpClientConnection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCall(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 1

    .line 129
    if-nez p1, :cond_0

    .line 130
    const-string p1, "HfpClientConnection"

    const-string v0, "Updating call to a null value."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 134
    return-void
.end method
