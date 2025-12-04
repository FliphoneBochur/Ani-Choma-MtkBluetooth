.class final Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;
.super Lcom/android/bluetooth/mapclient/Request;
.source "RequestSetNotificationRegistration.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "x-bt/MAP-NotificationRegistration"


# instance fields
.field private final mStatus:Z


# direct methods
.method constructor <init>(Z)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;->mStatus:Z

    .line 35
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v1, 0x42

    const-string v2, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {v0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>()V

    .line 39
    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BB)V

    .line 41
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 42
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

    .line 46
    sget-object v0, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;->FILLER_BYTE:[B

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;->executePut(Ljavax/obex/ClientSession;[B)V

    .line 47
    return-void
.end method

.method public getStatus()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/android/bluetooth/mapclient/RequestSetNotificationRegistration;->mStatus:Z

    return v0
.end method
