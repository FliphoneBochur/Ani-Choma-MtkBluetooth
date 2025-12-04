.class Lcom/android/bluetooth/opp/TestTcpSessionNotifier;
.super Ljava/lang/Object;
.source "TestActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestTcpSessionNotifier"


# instance fields
.field mConn:Ljava/net/Socket;

.field mServer:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->mServer:Ljava/net/ServerSocket;

    .line 597
    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->mConn:Ljava/net/Socket;

    .line 602
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->mServer:Ljava/net/ServerSocket;

    .line 603
    return-void
.end method


# virtual methods
.method public acceptAndOpen(Ljavax/obex/ServerRequestHandler;)Ljavax/obex/ServerSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/obex/ServerSession;

    move-result-object p1

    return-object p1
.end method

.method public acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/obex/ServerSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->mConn:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    const-string v0, "TestTcpSessionNotifier"

    const-string v1, "ex"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    new-instance v0, Lcom/android/bluetooth/opp/TestTcpTransport;

    iget-object v1, p0, Lcom/android/bluetooth/opp/TestTcpSessionNotifier;->mConn:Ljava/net/Socket;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/TestTcpTransport;-><init>(Ljava/net/Socket;)V

    .line 616
    new-instance v1, Ljavax/obex/ServerSession;

    invoke-direct {v1, v0, p1, p2}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    return-object v1
.end method
