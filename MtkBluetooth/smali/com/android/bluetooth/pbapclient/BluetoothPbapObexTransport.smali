.class Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;
.super Ljava/lang/Object;
.source "BluetoothPbapObexTransport.java"

# interfaces
.implements Ljavax/obex/ObexTransport;


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 36
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

    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 41
    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public create()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public getMaxReceivePacketSize()I
    .locals 1

    .line 91
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxTransmitPacketSize()I
    .locals 1

    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isSrmSupported()Z
    .locals 1

    .line 96
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

    .line 77
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->openInputStream()Ljava/io/InputStream;

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

    .line 50
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->openOutputStream()Ljava/io/OutputStream;

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

    .line 55
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

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

    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapObexTransport;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
