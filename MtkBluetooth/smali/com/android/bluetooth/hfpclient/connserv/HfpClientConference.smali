.class public Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;
.super Landroid/telecom/Conference;
.source "HfpClientConference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HfpClientConference"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    .line 34
    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 35
    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 36
    invoke-static {p3, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->hasHfpClientEcc(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    .line 37
    nop

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/16 p1, 0x80

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/lit8 p1, p1, 0x3

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setConnectionCapabilities(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setActive()V

    .line 41
    return-void
.end method


# virtual methods
.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionAdded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p1}, Landroid/telecom/Connection;->getState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/telecom/Connection;->onAnswer()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Connection;->getState()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getState()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 90
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 92
    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .line 45
    const-string v0, "HfpClientConference"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    .line 47
    return-void
.end method

.method public onHold()V
    .locals 2

    .line 64
    const-string v0, "HfpClientConference"

    const-string v1, "onHold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 66
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMerge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    .line 53
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayDtmfTone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    int-to-byte p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 80
    :cond_0
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeparate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->enterPrivateMode()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->removeConnection(Landroid/telecom/Connection;)V

    .line 60
    return-void
.end method

.method public onUnhold()V
    .locals 3

    .line 70
    const-string v0, "HfpClientConference"

    const-string v1, "onUnhold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 72
    return-void
.end method
