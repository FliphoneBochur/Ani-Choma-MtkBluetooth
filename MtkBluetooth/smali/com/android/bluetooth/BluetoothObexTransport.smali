.class public Lcom/android/bluetooth/BluetoothObexTransport;
.super Ljava/lang/Object;
.source "BluetoothObexTransport.java"

# interfaces
.implements Ljavax/obex/ObexTransport;


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 36
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 42
    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public create()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public getMaxReceivePacketSize()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 95
    const/4 v0, -0x1

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getMaxReceivePacketSize()I

    move-result v0

    return v0
.end method

.method public getMaxTransmitPacketSize()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 87
    const/4 v0, -0x1

    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getMaxTransmitPacketSize()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public isSrmSupported()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public listen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/BluetoothObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
