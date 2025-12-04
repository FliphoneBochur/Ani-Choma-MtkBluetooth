.class public final Lcom/android/bluetooth/mapclient/MessagesFilter;
.super Ljava/lang/Object;
.source "MessagesFilter.java"


# static fields
.field public static final MESSAGE_TYPE_ALL:B = 0x0t

.field public static final MESSAGE_TYPE_EMAIL:B = 0x4t

.field public static final MESSAGE_TYPE_MMS:B = 0x8t

.field public static final MESSAGE_TYPE_SMS_CDMA:B = 0x2t

.field public static final MESSAGE_TYPE_SMS_GSM:B = 0x1t

.field public static final PRIORITY_ANY:B = 0x0t

.field public static final PRIORITY_HIGH:B = 0x1t

.field public static final PRIORITY_NON_HIGH:B = 0x2t

.field public static final READ_STATUS_ANY:B = 0x0t

.field public static final READ_STATUS_READ:B = 0x2t

.field public static final READ_STATUS_UNREAD:B = 0x1t


# instance fields
.field public messageType:B

.field public originator:Ljava/lang/String;

.field public periodBegin:Ljava/lang/String;

.field public periodEnd:Ljava/lang/String;

.field public priority:B

.field public readStatus:B

.field public recipient:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->messageType:B

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodBegin:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodEnd:Ljava/lang/String;

    .line 33
    iput-byte v0, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->readStatus:B

    .line 35
    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->recipient:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->originator:Ljava/lang/String;

    .line 39
    iput-byte v0, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->priority:B

    .line 42
    return-void
.end method


# virtual methods
.method public setMessageType(B)V
    .locals 0

    .line 45
    iput-byte p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->messageType:B

    .line 46
    return-void
.end method

.method public setOriginator(Ljava/lang/String;)V
    .locals 1

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->originator:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->originator:Ljava/lang/String;

    .line 76
    :goto_0
    return-void
.end method

.method public setPeriod(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lcom/android/bluetooth/mapclient/ObexTime;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/mapclient/ObexTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/ObexTime;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodBegin:Ljava/lang/String;

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    new-instance p1, Lcom/android/bluetooth/mapclient/ObexTime;

    invoke-direct {p1, p2}, Lcom/android/bluetooth/mapclient/ObexTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/ObexTime;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->periodEnd:Ljava/lang/String;

    .line 56
    :cond_1
    return-void
.end method

.method public setPriority(B)V
    .locals 0

    .line 79
    iput-byte p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->priority:B

    .line 80
    return-void
.end method

.method public setReadStatus(B)V
    .locals 0

    .line 59
    iput-byte p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->readStatus:B

    .line 60
    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 1

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->recipient:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MessagesFilter;->recipient:Ljava/lang/String;

    .line 68
    :goto_0
    return-void
.end method
