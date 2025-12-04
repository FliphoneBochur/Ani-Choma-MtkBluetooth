.class Lcom/android/bluetooth/opp/TestTcpTransport;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljavax/obex/ObexTransport;


# instance fields
.field mSocket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpTransport;->mSocket:Ljava/net/Socket;

    .line 634
    iput-object p1, p0, Lcom/android/bluetooth/opp/TestTcpTransport;->mSocket:Ljava/net/Socket;

    .line 635
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

    .line 639
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 640
    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    return-void
.end method

.method public create()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    return-void
.end method

.method public getMaxReceivePacketSize()I
    .locals 1

    .line 697
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxTransmitPacketSize()I
    .locals 1

    .line 692
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

    .line 687
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isSrmSupported()Z
    .locals 1

    .line 703
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

    .line 684
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/TestTcpTransport;->openInputStream()Ljava/io/InputStream;

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

    .line 649
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/TestTcpTransport;->openOutputStream()Ljava/io/OutputStream;

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

    .line 654
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

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

    .line 659
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
