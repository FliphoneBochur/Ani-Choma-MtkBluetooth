.class Lcom/android/bluetooth/mapclient/RequestSetPath;
.super Lcom/android/bluetooth/mapclient/Request;
.source "RequestSetPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;
    }
.end annotation


# instance fields
.field mDir:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 34
    sget-object v0, Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;->DOWN:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mDir:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

    .line 35
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mName:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 38
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/Request;-><init>()V

    .line 41
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0}, Ljavax/obex/HeaderSet;->setEmptyNameHeader()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    sget-object p1, Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;->ROOT:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mDir:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

    goto :goto_0

    .line 45
    :cond_0
    sget-object p1, Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;->UP:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

    iput-object p1, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mDir:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Ljavax/obex/ClientSession;)V
    .locals 4

    .line 51
    nop

    .line 54
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/mapclient/RequestSetPath$1;->$SwitchMap$com$android$bluetooth$mapclient$RequestSetPath$SetPathDir:[I

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mDir:Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/RequestSetPath$SetPathDir;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0, v1, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v0, v2, v2}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    move-result-object p1

    .line 58
    nop

    .line 64
    :goto_0
    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mResponseCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    const/16 p1, 0xd0

    iput p1, p0, Lcom/android/bluetooth/mapclient/RequestSetPath;->mResponseCode:I

    .line 68
    :goto_1
    return-void
.end method
