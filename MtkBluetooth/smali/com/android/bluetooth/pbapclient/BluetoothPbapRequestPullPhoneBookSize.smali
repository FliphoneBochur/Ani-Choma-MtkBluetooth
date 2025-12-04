.class final Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;
.super Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBookSize.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtPbapReqPullPhoneBookSize"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"

.field private static final VDBG:Z = false


# instance fields
.field private mSize:I


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v0, 0x42

    const-string v1, "x-bt/phonebook"

    invoke-virtual {p1, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 38
    new-instance p1, Lcom/android/bluetooth/pbapclient/ObexAppParameters;

    invoke-direct {p1}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;-><init>()V

    .line 43
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BS)V

    .line 44
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BJ)V

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    return v0
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Lcom/android/bluetooth/pbapclient/ObexAppParameters;

    move-result-object p1

    .line 58
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->getShort(B)S

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    .line 61
    :cond_0
    return-void
.end method
