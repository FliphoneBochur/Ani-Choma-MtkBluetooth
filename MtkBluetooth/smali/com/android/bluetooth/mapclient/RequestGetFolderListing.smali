.class final Lcom/android/bluetooth/mapclient/RequestGetFolderListing;
.super Lcom/android/bluetooth/mapclient/Request;
.source "RequestGetFolderListing.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "x-obex/folder-listing"


# instance fields
.field private mResponse:Lcom/android/bluetooth/mapclient/FolderListing;


# direct methods
.method constructor <init>(II)V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;->mResponse:Lcom/android/bluetooth/mapclient/FolderListing;

    .line 35
    if-ltz p1, :cond_3

    const v0, 0xffff

    if-gt p1, v0, :cond_3

    .line 39
    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v1, 0x42

    const-string v2, "x-obex/folder-listing"

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/android/bluetooth/mapclient/ObexAppParameters;

    invoke-direct {v0}, Lcom/android/bluetooth/mapclient/ObexAppParameters;-><init>()V

    .line 47
    if-ltz p1, :cond_0

    .line 48
    const/4 v1, 0x1

    int-to-short p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BS)V

    .line 51
    :cond_0
    if-lez p2, :cond_1

    .line 52
    const/4 p1, 0x2

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->add(BS)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 56
    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listStartOffset should be [0..65535]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxListCount should be [0..65535]"

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

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;->executeGet(Ljavax/obex/ClientSession;)V

    .line 74
    return-void
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;->mResponse:Lcom/android/bluetooth/mapclient/FolderListing;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/FolderListing;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/android/bluetooth/mapclient/FolderListing;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/mapclient/FolderListing;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/RequestGetFolderListing;->mResponse:Lcom/android/bluetooth/mapclient/FolderListing;

    .line 61
    return-void
.end method
