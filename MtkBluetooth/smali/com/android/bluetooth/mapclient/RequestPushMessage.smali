.class final Lcom/android/bluetooth/mapclient/RequestPushMessage;
.super Lcom/android/bluetooth/mapclient/Request;
.source "RequestPushMessage.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "x-bt/message"


# instance fields
.field private mMsg:Lcom/android/bluetooth/mapclient/Bmessage;

.field private mMsgHandle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v1, 0x42

    const-string v2, "x-bt/message"

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    const-string p1, ""

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/Bmessage;Lcom/android/bluetooth/mapclient/MasClient$CharsetType;ZZ)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/RequestPushMessage;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mMsg:Lcom/android/bluetooth/mapclient/Bmessage;

    .line 47
    new-instance p1, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>()V

    .line 48
    const/16 p2, 0xb

    invoke-virtual {p1, p2, p4}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 49
    const/16 p2, 0xc

    invoke-virtual {p1, p2, p5}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 50
    const/16 p2, 0x14

    sget-object p4, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->NATIVE:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    if-ne p3, p4, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 51
    iget-object p2, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method public execute(Ljavax/obex/ClientSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mMsg:Lcom/android/bluetooth/mapclient/Bmessage;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/BmessageBuilder;->createBmessage(Lcom/android/bluetooth/mapclient/Bmessage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/mapclient/RequestPushMessage;->executePut(Ljavax/obex/ClientSession;[B)V

    .line 82
    return-void
.end method

.method public getBMsg()Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mMsg:Lcom/android/bluetooth/mapclient/Bmessage;

    return-object v0
.end method

.method public getMsgHandle()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mMsgHandle:Ljava/lang/String;

    return-object v0
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 3

    .line 57
    const/4 v0, 0x1

    const/16 v1, 0xd0

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 58
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v0, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mMsgHandle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    iput v1, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mResponseCode:I

    goto :goto_1

    .line 64
    :catch_1
    move-exception p1

    .line 65
    iput v1, p0, Lcom/android/bluetooth/mapclient/RequestPushMessage;->mResponseCode:I

    .line 68
    :cond_0
    :goto_0
    nop

    .line 69
    :goto_1
    return-void
.end method
