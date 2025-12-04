.class final Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;
.super Lcom/android/bluetooth/mapclient/Request;
.source "RequestSetMessageStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "x-bt/messageStatus"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v1, 0x42

    const-string v2, "x-bt/messageStatus"

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 33
    new-instance p1, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>()V

    .line 34
    nop

    .line 35
    sget-object v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;->READ:Lcom/android/bluetooth/mapclient/RequestSetMessageStatus$StatusIndicator;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 36
    :cond_0
    move p2, v1

    .line 34
    :goto_0
    const/16 v0, 0x17

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 37
    const/16 p2, 0x18

    invoke-virtual {p1, p2, v1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 38
    iget-object p2, p0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 39
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

    .line 43
    sget-object v0, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;->FILLER_BYTE:[B

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/mapclient/RequestSetMessageStatus;->executePut(Ljavax/obex/ClientSession;[B)V

    .line 44
    return-void
.end method
