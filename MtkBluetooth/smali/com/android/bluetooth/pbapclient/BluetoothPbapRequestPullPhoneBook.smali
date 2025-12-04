.class final Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;
.super Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtPbapReqPullPhoneBook"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"

.field private static final VDBG:Z = false


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mFormat:B

.field private mNewMissedCalls:I

.field private mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/accounts/Account;JBII)V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    .line 48
    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mAccount:Landroid/accounts/Account;

    .line 49
    if-ltz p6, :cond_5

    const p2, 0xffff

    if-gt p6, p2, :cond_5

    .line 53
    if-ltz p7, :cond_4

    if-gt p7, p2, :cond_4

    .line 57
    iget-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 p2, 0x42

    const-string v2, "x-bt/phonebook"

    invoke-virtual {p1, p2, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 61
    new-instance p1, Lcom/android/bluetooth/pbapclient/ObexAppParameters;

    invoke-direct {p1}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;-><init>()V

    .line 64
    if-eqz p5, :cond_0

    if-eq p5, v1, :cond_0

    .line 66
    const/4 p5, 0x0

    .line 69
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-eqz p2, :cond_1

    .line 70
    const/4 p2, 0x6

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BJ)V

    .line 73
    :cond_1
    const/4 p2, 0x7

    invoke-virtual {p1, p2, p5}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BB)V

    .line 79
    const/4 p2, 0x4

    if-lez p6, :cond_2

    .line 80
    int-to-short p3, p6

    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BS)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BS)V

    .line 85
    :goto_0
    if-lez p7, :cond_3

    .line 86
    const/4 p2, 0x5

    int-to-short p3, p7

    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->add(BS)V

    .line 89
    :cond_3
    iget-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 91
    iput-byte p5, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    .line 92
    return-void

    .line 54
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listStartOffset should be [0..65535]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxListCount should be [0..65535]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNewMissedCalls()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mAccount:Landroid/accounts/Account;

    iget-byte v2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    invoke-direct {v0, v1, p1, v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;-><init>(Landroid/accounts/Account;Ljava/io/InputStream;B)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mResponse:Lcom/android/bluetooth/pbapclient/BluetoothPbapVcardList;

    .line 102
    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2

    .line 108
    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Lcom/android/bluetooth/pbapclient/ObexAppParameters;

    move-result-object p1

    .line 110
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/ObexAppParameters;->getByte(B)B

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    .line 113
    :cond_0
    return-void
.end method
