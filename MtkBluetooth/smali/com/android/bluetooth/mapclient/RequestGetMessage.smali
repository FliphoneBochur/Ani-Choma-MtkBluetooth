.class final Lcom/android/bluetooth/mapclient/RequestGetMessage;
.super Lcom/android/bluetooth/mapclient/Request;
.source "RequestGetMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestGetMessage"

.field private static final TYPE:Ljava/lang/String; = "x-bt/message"


# instance fields
.field private mBmessage:Lcom/android/bluetooth/mapclient/Bmessage;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/MasClient$CharsetType;Z)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessage;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessage;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v0, 0x42

    const-string v1, "x-bt/message"

    invoke-virtual {p1, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 51
    new-instance p1, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>()V

    .line 53
    nop

    .line 54
    sget-object v0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->UTF_8:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 53
    const/16 v0, 0x14

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 56
    const/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 58
    iget-object p2, p0, Lcom/android/bluetooth/mapclient/RequestGetMessage;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 59
    return-void
.end method


# virtual methods
.method public execute(Ljavax/obex/ClientSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/RequestGetMessage;->executeGet(Ljavax/obex/ClientSession;)V

    .line 111
    return-void
.end method

.method public getHandle()Ljava/lang/String;
    .locals 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessage;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "RequestGetMessage"

    const-string v2, "Unexpected exception while reading handle!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Lcom/android/bluetooth/mapclient/Bmessage;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessage;->mBmessage:Lcom/android/bluetooth/mapclient/Bmessage;

    return-object v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 5

    .line 64
    const-string v0, "RequestGetMessage"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 69
    :goto_0
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 70
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :cond_0
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string v2, "I/O exception while reading response"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_1
    :try_start_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    nop

    .line 88
    invoke-static {p1}, Lcom/android/bluetooth/mapclient/BmessageParser;->createBmessage(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/Bmessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessage;->mBmessage:Lcom/android/bluetooth/mapclient/Bmessage;

    .line 90
    if-nez p1, :cond_1

    .line 91
    const/16 p1, 0xd0

    iput p1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessage;->mResponseCode:I

    .line 93
    :cond_1
    return-void

    .line 82
    :catch_1
    move-exception p1

    .line 83
    const-string p1, "Coudn\'t decode the bmessage with UTF-8. Something must be really messed up."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
