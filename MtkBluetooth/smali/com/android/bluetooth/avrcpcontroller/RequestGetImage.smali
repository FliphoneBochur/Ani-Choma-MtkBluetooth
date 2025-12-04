.class public Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;
.super Lcom/android/bluetooth/avrcpcontroller/BipRequest;
.source "RequestGetImage.java"


# static fields
.field private static final TYPE:Ljava/lang/String; = "x-bt/img-img"


# instance fields
.field private mImage:Lcom/android/bluetooth/avrcpcontroller/BipImage;

.field private final mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

.field private final mImageHandle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImage:Lcom/android/bluetooth/avrcpcontroller/BipImage;

    .line 39
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mHeaderSet:Ljavax/obex/HeaderSet;

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mResponseCode:I

    .line 42
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageHandle:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GetImage - handle: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageHandle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", descriptor: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->debug(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 p2, 0x42

    const-string v1, "x-bt/img-img"

    invoke-virtual {p1, p2, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mHeaderSet:Ljavax/obex/HeaderSet;

    iget-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageHandle:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v1, p2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    const/16 p2, 0x71

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mHeaderSet:Ljavax/obex/HeaderSet;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageDescriptor:Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;->serialize()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, p2, v0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 54
    :goto_0
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

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->executeGet(Ljavax/obex/ClientSession;)V

    .line 64
    return-void
.end method

.method public getImage()Lcom/android/bluetooth/avrcpcontroller/BipImage;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImage:Lcom/android/bluetooth/avrcpcontroller/BipImage;

    return-object v0
.end method

.method public getImageHandle()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageHandle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/BipImage;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageHandle:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/avrcpcontroller/BipImage;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImage:Lcom/android/bluetooth/avrcpcontroller/BipImage;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response GetImage - handle:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImageHandle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", image: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->mImage:Lcom/android/bluetooth/avrcpcontroller/BipImage;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->debug(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
