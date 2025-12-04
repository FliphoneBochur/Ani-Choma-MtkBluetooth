.class public Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;
.super Lcom/android/bluetooth/avrcpcontroller/BipRequest;
.source "RequestGetImageProperties.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "x-bt/img-properties"


# instance fields
.field private mImageHandle:Ljava/lang/String;

.field private mImageProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageHandle:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    .line 38
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mHeaderSet:Ljavax/obex/HeaderSet;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mResponseCode:I

    .line 40
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageHandle:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GetImageProperties - handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageHandle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->debug(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v0, 0x42

    const-string v1, "x-bt/img-properties"

    invoke-virtual {p1, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mHeaderSet:Ljavax/obex/HeaderSet;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageHandle:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 46
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

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->executeGet(Ljavax/obex/ClientSession;)V

    .line 56
    return-void
.end method

.method public getImageHandle()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageProperties()Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response GetImageProperties - handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageHandle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", properties: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    .line 63
    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/bluetooth/avrcpcontroller/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    const-string p1, "Failed to parse incoming properties object"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->error(Ljava/lang/String;)V

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->mImageProperties:Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    .line 68
    :goto_0
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
