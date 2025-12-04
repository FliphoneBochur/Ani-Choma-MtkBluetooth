.class final Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;
.super Lcom/android/bluetooth/mapclient/Request;
.source "RequestGetMessagesListing.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "x-bt/MAP-msg-listing"


# instance fields
.field private mNewMessage:Z

.field private mResponse:Lcom/android/bluetooth/mapclient/MessagesListing;

.field private mServerTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/bluetooth/mapclient/MessagesFilter;III)V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mResponse:Lcom/android/bluetooth/mapclient/MessagesListing;

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mNewMessage:Z

    .line 36
    iput-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mServerTime:Ljava/util/Date;

    .line 40
    if-ltz p4, :cond_e

    const/16 v0, 0xff

    if-gt p4, v0, :cond_e

    .line 44
    if-ltz p5, :cond_d

    const v0, 0xffff

    if-gt p5, v0, :cond_d

    .line 48
    if-ltz p6, :cond_c

    if-gt p6, v0, :cond_c

    .line 52
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v1, 0x42

    const-string v2, "x-bt/MAP-msg-listing"

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 54
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v0, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 60
    :goto_0
    new-instance p1, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>()V

    .line 62
    if-eqz p3, :cond_7

    .line 63
    iget-byte v1, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->messageType:B

    if-eqz v1, :cond_1

    .line 64
    const/4 v1, 0x3

    iget-byte v2, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->messageType:B

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 67
    :cond_1
    iget-object v1, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodBegin:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 68
    const/4 v1, 0x4

    iget-object v2, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodBegin:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BLjava/lang/String;)V

    .line 71
    :cond_2
    iget-object v1, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodEnd:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 72
    const/4 v1, 0x5

    iget-object v2, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodEnd:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BLjava/lang/String;)V

    .line 75
    :cond_3
    iget-byte v1, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->readStatus:B

    if-eqz v1, :cond_4

    .line 76
    const/4 v1, 0x6

    iget-byte v2, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->readStatus:B

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 79
    :cond_4
    iget-object v1, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->recipient:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 80
    const/4 v1, 0x7

    iget-object v2, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->recipient:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BLjava/lang/String;)V

    .line 83
    :cond_5
    iget-object v1, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->originator:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 84
    const/16 v1, 0x8

    iget-object v2, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->originator:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BLjava/lang/String;)V

    .line 87
    :cond_6
    iget-byte v1, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->priority:B

    if-eqz v1, :cond_7

    .line 88
    const/16 v1, 0x9

    iget-byte p3, p3, Lcom/android/bluetooth/mapclient/MessagesFilter;->priority:B

    invoke-virtual {p1, v1, p3}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 92
    :cond_7
    if-eqz p4, :cond_8

    .line 93
    const/16 p3, 0x13

    int-to-byte p4, p4

    invoke-virtual {p1, p3, p4}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 98
    :cond_8
    if-lez p2, :cond_9

    .line 99
    const/16 p3, 0x10

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BI)V

    .line 102
    :cond_9
    if-ltz p5, :cond_a

    .line 103
    int-to-short p2, p5

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BS)V

    .line 106
    :cond_a
    if-eqz p6, :cond_b

    .line 107
    const/4 p2, 0x2

    int-to-short p3, p6

    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BS)V

    .line 110
    :cond_b
    iget-object p2, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 111
    return-void

    .line 49
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listStartOffset should be [0..65535]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxListCount should be [0..65535]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "subjectLength should be [0..255]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Ljavax/obex/ClientSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->executeGet(Ljavax/obex/ClientSession;)V

    .line 151
    return-void
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/mapclient/Message;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mResponse:Lcom/android/bluetooth/mapclient/MessagesListing;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MessagesListing;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMseTime()Ljava/util/Date;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mServerTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNewMessageStatus()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mNewMessage:Z

    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/android/bluetooth/mapclient/MessagesListing;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/mapclient/MessagesListing;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mResponse:Lcom/android/bluetooth/mapclient/MessagesListing;

    .line 116
    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2

    .line 120
    invoke-static {p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Lcom/android/bluetooth/mapclient/ObexAppParameters;

    move-result-object p1

    .line 122
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->getByte(B)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mNewMessage:Z

    .line 124
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->getString(B)Ljava/lang/String;

    move-result-object p1

    .line 126
    if-eqz p1, :cond_1

    .line 127
    new-instance v0, Lcom/android/bluetooth/mapclient/ObexTime;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/mapclient/ObexTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/ObexTime;->getTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/RequestGetMessagesListing;->mServerTime:Ljava/util/Date;

    .line 130
    :cond_1
    return-void
.end method
